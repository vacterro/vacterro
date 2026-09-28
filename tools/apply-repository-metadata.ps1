param(
    [switch]$Apply,
    [string]$Owner = "vacterro",
    [string]$Manifest = (Join-Path $PSScriptRoot "..\docs\repository-metadata.json")
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is required. Install it and authenticate with 'gh auth login' first."
}

$manifestPath = (Resolve-Path $Manifest).Path
$data = Get-Content -LiteralPath $manifestPath -Raw -Encoding UTF8 | ConvertFrom-Json

gh auth status *> $null
if ($LASTEXITCODE -ne 0) {
    throw "GitHub CLI is not authenticated. Run 'gh auth login' first."
}

function Normalize-Topics {
    param([object[]]$Topics)
    return @($Topics | ForEach-Object { [string]$_ } | Sort-Object -Unique)
}

function Topics-Equal {
    param([string[]]$Left, [string[]]$Right)
    if ($Left.Count -ne $Right.Count) {
        return $false
    }
    for ($i = 0; $i -lt $Left.Count; $i++) {
        if ($Left[$i] -cne $Right[$i]) {
            return $false
        }
    }
    return $true
}

$changed = 0
$unchanged = 0
$failed = 0

foreach ($property in $data.repositories.PSObject.Properties) {
    $name = [string]$property.Name
    $desired = $property.Value
    $repo = "$Owner/$name"

    try {
        $currentRaw = gh api "repos/$repo"
        if ($LASTEXITCODE -ne 0) {
            throw "Failed to read repository metadata."
        }

        $current = $currentRaw | ConvertFrom-Json
        $currentDescription = if ($null -eq $current.description) { "" } else { [string]$current.description }
        $desiredDescription = [string]$desired.description

        $currentTopics = Normalize-Topics @($current.topics)
        $desiredTopics = Normalize-Topics @($desired.topics)

        $descriptionChanged = $currentDescription -cne $desiredDescription
        $topicsChanged = -not (Topics-Equal $currentTopics $desiredTopics)

        if (-not $descriptionChanged -and -not $topicsChanged) {
            Write-Host "[OK] $repo"
            $unchanged++
            continue
        }

        Write-Host "[CHANGE] $repo"
        if ($descriptionChanged) {
            Write-Host "  description:"
            Write-Host "    old: $currentDescription"
            Write-Host "    new: $desiredDescription"
        }
        if ($topicsChanged) {
            Write-Host "  topics:"
            Write-Host "    old: $($currentTopics -join ', ')"
            Write-Host "    new: $($desiredTopics -join ', ')"
        }

        if ($Apply) {
            if ($descriptionChanged) {
                gh api --method PATCH "repos/$repo" -f "description=$desiredDescription" *> $null
                if ($LASTEXITCODE -ne 0) {
                    throw "Failed to update description."
                }
            }

            if ($topicsChanged) {
                $payload = @{ names = $desiredTopics } | ConvertTo-Json -Compress
                $payload | gh api --method PUT "repos/$repo/topics" --input - *> $null
                if ($LASTEXITCODE -ne 0) {
                    throw "Failed to update topics."
                }
            }

            Write-Host "  applied"
        } else {
            Write-Host "  preview only; re-run with -Apply to write"
        }

        $changed++
    }
    catch {
        Write-Warning "$repo: $($_.Exception.Message)"
        $failed++
    }
}

Write-Host ""
Write-Host "Summary: changed=$changed unchanged=$unchanged failed=$failed mode=$(if ($Apply) { 'APPLY' } else { 'PREVIEW' })"

if ($failed -gt 0) {
    exit 1
}

<!-- SAIPEN_HQ_PROFILE_SOURCE:BEGIN
Canonical staged profile copy for the public SAIPEN HQ organization.
Agents/maintainers: this file is intentional public-identity documentation.
When the organization GitHub App connection is available, publish this body as
saipenhq/.github/profile/README.md, then keep this staging copy only if it remains useful.
Do not claim a repository is owned by SAIPEN HQ until it is actually transferred.
SAIPEN_HQ_PROFILE_SOURCE:END -->

<div align="center">

<img src="https://raw.githubusercontent.com/vacterro/saipen/main/assets/SAIPEN_TEXT1.png" alt="SAIPEN" width="440">

# SAIPEN HQ

**Practical infrastructure for long-running AI-agent work.**

Continuation, recovery, operator control, multi-agent tooling, auditing, packaging,
messaging, quota awareness, and Windows-first utilities built around one boring but
important idea: useful work should survive the end of a chat session.

[![Community](https://img.shields.io/badge/Discord-SAIPEN%20Community-5865F2?logo=discord&logoColor=white)](https://discord.gg/SEYaYkuVgN)
[![SAIPEN Core](https://img.shields.io/badge/SAIPEN-Core-D4B86A)](https://github.com/vacterro/saipen)
[![Author](https://img.shields.io/badge/GitHub-vacterro-181717?logo=github)](https://github.com/vacterro)

</div>

## What SAIPEN is

**SAIPEN** is a vendor-neutral continuation protocol for AI coding agents.
Project state lives beside the code in plain files, so a cold agent can recover
the current task, constraints, history, and exact next action without depending
on one provider's chat memory.

SAIPEN HQ is the umbrella for that protocol and the surrounding tools that make
agent work easier to operate, inspect, resume, and verify.

> Current repository ownership note: the projects below are presently hosted
> under [`vacterro`](https://github.com/vacterro). SAIPEN HQ is the public
> organization and ecosystem home; repositories should only be shown as
> organization-owned after an actual GitHub transfer.

## Start here

| Project | Purpose |
|---|---|
| [**SAIPEN Core**](https://github.com/vacterro/saipen) | Plain-file continuation protocol, recovery model, validation, and cold-agent handoff. |
| [**ZAICODE**](https://github.com/vacterro/zaicode) | Windows operator workbench for running many AI coding agents and projects from one control surface. |
| [**FastPrompter**](https://github.com/vacterro/FastPrompter) | Local-first keyboard scratchpad, prompt/snippet workspace, and file-container tool for Windows. |
| [**LIMISAW**](https://github.com/vacterro/limisaw) | Read-only quota monitor for Codex, Claude Code, Antigravity, and Zcode. |
| [**SAITULS**](https://github.com/vacterro/saituls) | Windows utility hub and Explorer context-menu toolkit. |
| [**SAIPENVIEW**](https://github.com/vacterro/saipenview) | Visual control center for SAIPEN projects, tickets, conformance, and agent workflows. |

## Agent infrastructure

| Project | Role |
|---|---|
| [**AUDAPACK**](https://github.com/vacterro/audapack) | Verified ZIP packaging, multi-wave audit handoff, and browser bridge. |
| [**SAIPAL**](https://github.com/vacterro/saipal) | Forensic protocol observer for session drift and root-cause evidence. |
| [**SAIMAIL**](https://github.com/vacterro/saimail) | Local-first agent post office with sealed messages, provenance, and bounded triage. |
| [**SAICONT**](https://github.com/vacterro/saicont) | Fail-closed Windows console watcher for bounded AI-agent recovery and resume. |
| [**SAIPET**](https://github.com/vacterro/saipet) | Read-only internet scout that finds relevant problems and drafts human-approved replies. |
| [**SAIPLAN**](https://github.com/vacterro/saiplan) | Human-facing SAIPEN-style planner with explicit tickets, dependencies, and durable Markdown state. |
| [**SAITALK**](https://github.com/vacterro/saitalk) | Portable response-behavior contract for humans and AI agents. |
| [**SAIWORK2**](https://github.com/vacterro/saiwork2) | Tauri desktop control plane for coding agents, queues, sessions, and SAIPEN-aware workflows. |

## Related tools

SAIPEN HQ also connects to a wider set of practical utilities built by
[vacterro](https://github.com/vacterro), including
[ProTrail](https://github.com/vacterro/protrail),
[Problip](https://github.com/vacterro/problip),
[Wintage](https://github.com/vacterro/Wintage),
[VACZEN Calendar](https://github.com/vacterro/VACZEN-Calendar), and several
creative/media automation tools.

They are not all SAIPEN protocol components. They share the same project network,
community, and general bias toward local control, explicit state, automation, and
recoverable workflows.

## Design principles

- **State should survive sessions.** Important work belongs with the project, not only in model memory.
- **Local-first where practical.** Tools should remain inspectable and useful without a mandatory hosted backend.
- **Explicit beats magical.** Human-readable files, visible state machines, logs, and contracts are preferred over invisible behavior.
- **Recovery is a feature.** Restarts, failed agents, exhausted quota, stale state, and interrupted work are normal operating conditions.
- **Operator control matters.** Automation should reduce babysitting without hiding what it is doing.
- **Evidence over vibes.** Tests, validators, provenance, and reproducible failure cases carry more weight than confident prose.
- **Windows is first-class.** Windows support is designed in, not stapled on after the interesting work is finished.

## Community

**Discord:** [SAIPEN Community](https://discord.gg/SEYaYkuVgN)

Use Discord for quick questions, screenshots, ideas, and cross-project discussion.
Use the relevant repository's GitHub Issues for reproducible bugs and durable
feature requests. That split keeps chat conversational and engineering work
searchable six months later, a surprisingly advanced technology for our species.

## Contributing

There is no requirement to become a "community member" before contributing.

Useful contributions include:

- reproducible bug reports;
- minimal failure cases;
- documentation corrections;
- platform compatibility reports;
- design criticism backed by concrete examples;
- focused pull requests against the owning repository.

Project-specific contribution and security rules live in each repository and take
precedence over this organization-level overview.

## Project ownership

**SAIPEN HQ** is the ecosystem/organization identity.

**vacterro** is the current author and repository owner for the linked projects.

That distinction is intentional. It allows the organization to become a shared
maintainer surface later without pretending the migration or governance already
happened.

---

<div align="center">

**Persist the state. Verify the work. Let the next agent continue.**

</div>

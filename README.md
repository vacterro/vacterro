<div align="center">

<img src="https://raw.githubusercontent.com/vacterro/saipen/main/assets/SAIPEN_TEXT1.png" alt="SAIPEN" width="420">

# vacterro

**Building local-first tools for AI agents, automation, and Windows.**

Continuation protocols, multi-agent operator tooling, quota monitors, desktop utilities, and the glue that keeps long-running AI work from turning into session archaeology.

[![SAIPEN Community](https://img.shields.io/badge/Discord-SAIPEN%20Community-5865F2?logo=discord&logoColor=white)](https://discord.gg/SEYaYkuVgN)
[![SAIPEN Core](https://img.shields.io/badge/SAIPEN-Core-D4B86A)](https://github.com/vacterro/saipen)
[![FastPrompter](https://img.shields.io/badge/FastPrompter-Windows-0078D6)](https://github.com/vacterro/FastPrompter)

</div>

## SAIPEN ecosystem

SAIPEN is the umbrella for a growing set of tools around practical AI-agent workflows: persistent project state, continuation across cold sessions, multi-agent operation, auditing, packaging, communication, and human-visible control.

| Project | What it does |
|---|---|
| [**SAIPEN**](https://github.com/vacterro/saipen) | Vendor-neutral continuation protocol for AI coding agents. Plain-file project state, recovery, validation, and cold-agent handoff. |
| [**ZAICODE**](https://github.com/vacterro/zaicode) | Windows operator workbench for running many AI coding agents across many projects with SAIPEN-driven continuation, scheduling, workers, and quota-aware routing. |
| [**FastPrompter**](https://github.com/vacterro/FastPrompter) | Keyboard-first local scratchpad and snippet workspace for Windows with global hotkeys, Markdown, file containers, and offline storage. |
| [**LIMISAW**](https://github.com/vacterro/limisaw) | One-file Windows tray monitor for Codex, Claude Code, Antigravity, and Zcode quota windows across multiple accounts. |
| [**SAITULS**](https://github.com/vacterro/saituls) | Windows Explorer and desktop utility hub for file/media operations, agent launchers, and supporting tools. |
| [**ProTrail**](https://github.com/vacterro/protrail) | Native Windows cursor trails, click effects, hold effects, and multi-monitor overlays built with Qt 6, C++20, Direct2D, and DirectComposition. |

## Agent infrastructure

These projects are more specialized, but they are part of the same direction: make autonomous AI work inspectable, resumable, and less dependent on one chat session staying alive forever.

| Project | Role |
|---|---|
| [**AUDAPACK**](https://github.com/vacterro/audapack) | Verified project packaging, multi-wave audit workflow, and local browser bridge. |
| [**SAIPAL**](https://github.com/vacterro/saipal) | Forensic observer for SAIPEN-governed agent sessions and protocol drift. |
| [**SAIMAIL**](https://github.com/vacterro/saimail) | Local-first agent post office and desktop messenger with provenance and bounded inbox triage. |
| [**SAIPENVIEW**](https://github.com/vacterro/saipenview) | Local control center for SAIPEN project state, tickets, conformance, sub-agents, and AI CLI workflows. |
| [**Wintage**](https://github.com/vacterro/Wintage) | Dark Golden Windows 95-style theme system for the web and selected desktop applications. |

## Design direction

Most of the work here follows a few recurring rules:

- **Local-first when practical** — project state should remain inspectable and usable without depending on a hosted service.
- **Human-readable state** — Markdown, JSON, logs, and explicit contracts beat invisible magic.
- **Automation with recovery** — long-running work should survive restarts, interrupted sessions, model changes, and partial failure.
- **Operator control** — autonomous agents are useful; autonomous ambiguity is not.
- **Windows is a first-class target** — not an afterthought held together by three shell scripts and hope.
- **Evidence over vibes** — tests, validators, reproducible state, and failure-oriented checks wherever possible.

## Community

The shared community for SAIPEN and related projects lives on Discord:

**[Join the SAIPEN Community](https://discord.gg/SEYaYkuVgN)**

Use it for discussion, screenshots, ideas, quick questions, and project feedback. Reproducible bugs and durable feature requests are still best filed in the relevant GitHub repository so they do not disappear into chat history.

## Current focus

The current focus is not inventing fifty more project names. It is making the existing ecosystem more coherent, easier to enter, and increasingly capable of running useful agent workflows with less manual babysitting.

---

<div align="center">

**Build useful things. Persist the state. Let the next agent continue.**

</div>

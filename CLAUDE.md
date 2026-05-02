# mediasuite-whitepaper — Claude Code Context

## What this repository is

This repository contains a white paper in progress titled **"Media Suite in the
Age of AI Agents: Rethinking Access to Audiovisual Heritage"**, authored by
Roeland Ordelman (CTO, CLARIAH / Netherlands Institute for Sound and Vision).

The white paper is being drafted collaboratively with Claude in an iterative
process: Claude drafts sections, Roeland edits and adds comments in the format
`[RO: ... text ...]`, Claude reads the comments and revises. The repository is
the shared working space.

## Working method

- Roeland adds `[RO: ...]` comments inline in the markdown files
- Claude fetches the latest version from GitHub, reads comments, revises,
  and produces an updated version
- Updated versions are committed back to the repo
- Sections are drafted and approved one at a time before moving on

## The white paper

**Title:** Media Suite in the Age of AI Agents: Rethinking Access to Audiovisual Heritage

**Audience:** The Media Suite team, CLARIAH partners, and colleagues in the
digital and audiovisual heritage sector. Written for a technically informed
audience — researchers, developers, infrastructure specialists — not for
management or the general public.

**Purpose:** A working document (white paper) that:
- Articulates the architectural vision for AI-assisted access to audiovisual heritage
- Shows how ten years of Media Suite infrastructure work is the right foundation for this vision
- Demonstrates that the vision is already being built across current projects
- Invites feedback from external colleagues
- Can later be condensed into a conference paper once user evaluation is complete

**Tone:** Serious, technically grounded, written for a dual audience of team
members and external heritage sector colleagues. Not too internal, not too
abstract. Should feel like a rigorous position paper, not a project status report.

## Planned structure

1. **Introduction** — premise, shift from tools to agents, what this document is
2. **Ten years of Media Suite** — origin, principles, what was built (draws from the 2014-2024 booklet: https://doi.org/10.5281/zenodo.11575936)
3. **What the AI revolution actually changes** — and what it does not
4. **What we already have** — infrastructure assets that become more valuable in an agentic world
5. **The architectural vision** — from pipelines to agents, MCP as connective protocol
6. **Open Beelden as the proving ground** — why here first, three compounding reasons
7. **How current projects map to the vision** — the evidence that it's already being built
8. **Roadmap** — phased, honest
9. **Priorities and next steps** — concrete, actionable

## Current status

- Section 1 (Introduction): drafted and revised based on RO comments ✓
- Section 2 onwards: not yet drafted

## Key source documents in this repo

- `whitepaper_draft.md` — the main white paper draft (all sections accumulate here)
- `project_vision_mapping_v2.md` — detailed mapping of current projects to the vision
- `vision_one_pager.md` — one-page summary of the vision (useful for team presentations)

## Key background documents (external)

- **2014-2024 booklet:** https://doi.org/10.5281/zenodo.11575936 — the origin story, principles, and what was built; Section 2 draws heavily on this
- **Meerjarenplan 2026-2029** — in project knowledge, provides institutional context and current thematic priorities (Grip op AI, Hoogwaardige Databronnen, Media & Democratische Veerkracht)
- **mediasuite-knowledge-base repo:** https://github.com/roelandordelman/mediasuite-knowledge-base — the practical prototype that grounds the architectural claims
- **media-suite-learn-chatbot repo:** https://github.com/roelandordelman/media-suite-learn-chatbot — the chatbot application built on the knowledge base

## Key arguments to preserve throughout

1. **"The work was right"** — ten years of structured infrastructure decisions are the
   foundation for AI, not an obstacle to it
2. **"From grip on AI to AI as instrument"** — the shift from defensive ("managing AI")
   to active ("using AI as a lever")
3. **"The vision is already being built"** — current projects are not adjacent to the
   vision, they ARE the vision from multiple directions simultaneously
4. **"From pipelines to tools"** — Media Suite capabilities become agent-callable tools,
   not interfaces to replace
5. **"Dataset agents one by one"** — Open Beelden first, then each dataset added
   independently and interoperably
6. **Open Beelden's three compounding advantages** — open (no login), NDE-registered
   (national data flow model), already instrumented (LOD, ASR, IIIF)

## Terminology conventions

- **AI agent / agent** — preferred over "agentic system" in most contexts
- **MCP (Model Context Protocol)** — introduce on first use, then use as-is
- **RAG (Retrieval-Augmented Generation)** — introduce on first use
- **NDE (Netwerk Digitaal Erfgoed)** — introduce on first use
- **DAB (Data Access Broker)** — introduce on first use
- **SANE** — introduce on first use as the trusted execution environment for quantitative research
- Avoid internal task numbers (2026-004 etc.) in the main white paper text — use descriptions instead
- Dutch terms: translate on first use, then use English equivalent

## Style notes

- Write for both internal team members AND external heritage sector colleagues simultaneously
- Avoid project management vocabulary (task numbers, budget codes, quarter references)
- Be honest about gaps and open questions — this builds credibility
- The research scenario "I am studying migration in Dutch television news..." is a
  recurring concrete example that can be referenced across sections
- The Deep Journalism Lab scenario (broadcast + oral history, migration, Moluccan identity)
  is the applied use case that grounds abstract claims

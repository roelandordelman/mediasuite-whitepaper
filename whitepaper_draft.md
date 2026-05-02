# Media Suite in the Age of AI Agents
## Rethinking Access to Audiovisual Heritage

*Draft white paper — Netherlands Institute for Sound and Vision / CLARIAH Media Suite*
*Version 0.1 — May 2026*

---

## Section 1 — Introduction

For ten years, the CLARIAH Media Suite has been built on a simple but demanding
premise: that researchers deserve more than a search box. They deserve structured
access to audiovisual heritage — tools to search, compare, annotate, and analyse
across collections, with transparency about what is available, what is missing,
and how algorithmic processes shape what they see. That premise has produced
something rare: a research infrastructure that is simultaneously a working
platform, a technical experiment, and a community of practice.

The AI revolution has not made that premise obsolete. It has made it more
urgent — and for the first time, genuinely achievable at scale.

This white paper argues that ten years of careful, standards-driven infrastructure
work has put the Media Suite ahead of most institutions in its readiness for
AI-assisted research access. Not because AI was anticipated, but because the
decisions that make AI useful — structured data, persistent identifiers,
machine-readable rights expressions, open standards for interoperability —
are the same decisions that make any infrastructure good. The work was right.
What changes now is the interface layer on top of it.

The shift we are describing is from a set of tools that researchers operate
to a set of capabilities that an AI agent can orchestrate on a researcher's behalf.
A researcher asks, in natural language: *I am studying the representation of
migration in Dutch television news over the last fifty years — where do I start,
what is available, how have others approached this, and what can I access?*
The answer to that question currently requires navigating multiple interfaces,
consulting documentation, understanding collection structures, and knowing which
tools exist. An agent built on the Media Suite's infrastructure can answer it
directly — retrieving relevant collections, surfacing related research, explaining
access conditions, and guiding the researcher to the right starting point — with
provenance and source links at every step.

This is not a speculative vision. The components required to build such an agent
are not future work — they are already under active development. An AI retrieval
pipeline running on production infrastructure, an access control layer based on
open standards for policy-based data access, a national dataset catalogue queryable
by machine, a knowledge graph for structured reasoning over collection metadata,
and concrete user scenarios in journalism and research: each of these is being
built right now, in ongoing projects at the Netherlands Institute for Sound and
Vision and its CLARIAH and European partners. What has been missing is the
explicit framing that connects these threads — the architectural vision that shows
how the pieces fit together, where the gaps are, and what the path forward looks
like.

That is what this document provides.

### Who this is for

This white paper is written for the Media Suite team, CLARIAH partners, and
colleagues in the digital and audiovisual heritage sector who want to understand
not just what we are building but why the architecture is designed the way it is —
and what it implies for how similar institutions might approach the same challenge.
It is not a management summary or a funding proposal, though it may inform both.
It is a working document — intended to align the team, articulate the vision to
partners, invite feedback from external colleagues, and be updated as the work
progresses and our understanding deepens.

### What this document is not

It is not an argument that the Media Suite's existing infrastructure should be
replaced or fundamentally redesigned. The search infrastructure, the SPARQL
endpoints, the linked data publication pipeline, the annotation and analysis
tools — these remain the foundation. The AI agent layer described in this
document is built on top of them, not instead of them. A decade of investment
in structured, standards-compliant infrastructure turns out to be exactly the
right preparation for what comes next.

It is not a claim that the transition is straightforward or that all problems are
solved. There are genuine open questions — around evaluation methodology, around
the practical implementation of machine-readable rights expressions, around the
coordination of shared infrastructure across projects. These are acknowledged
and named explicitly, because honest accounting of what remains to be done is
more useful than a document that only describes what has been achieved.

It is not a finished document. The architectural thinking described here is
grounded in practical prototype work — a working AI retrieval system with a
knowledge graph layer and a structured evaluation framework, built to understand
from the inside how the components fit together. As the team's production
implementation matures and user evaluation begins, this document will be updated
to reflect what we learn.

### Structure

The document proceeds as follows. Section 2 briefly recounts ten years of
Media Suite development — not as history but as context: what was built, what
principles guided it, and why those decisions turn out to be exactly the right
foundation for the next step. Section 3 describes what the AI revolution
actually changes, and what it does not. Section 4 takes stock of what the
Media Suite already has — the infrastructure assets that become more valuable,
not less, in an agentic world. Section 5 describes the architectural vision:
from pipelines to agents, from interfaces for humans to capabilities for
agents, with MCP as the connective protocol. Section 6 makes the case for
Open Beelden as the proving ground — the right dataset to demonstrate the
vision concretely before expanding further. Section 7 shows how current project
work maps to the vision. Section 8 describes a phased roadmap. Section 9 is
concrete about priorities and next steps.

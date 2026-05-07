# Changelog

All notable changes to this white paper are documented here.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

---

## [0.1.5] — 2026-05-07

### Changed
- Section 7, orientation reminder: removed "five components" count (table now
  has eight); replaced with "core architectural components" framing that
  explicitly notes the table covers additional cross-cutting components.
- Section 8 intro: `ROADMAP.md` reference softened from "is maintained" to "is
  intended to be maintained in this paper's accompanying GitHub repository" —
  the filename reference was inaccessible to external readers of the PDF and
  implied a document already in existence.
- Section 8, Phase 4: "personal prototype repositories" clarified to "prototype
  repositories developed by this paper's author"; "built independently" replaced
  with "built as exploratory proof-of-concept work"; "personal infrastructure"
  in the phase gate replaced with "prototype infrastructure outside the
  institutional stack" — removes ambiguity about whose prototype this is and
  removes language that implies unsanctioned or unofficial work.
- Section 9, "A final note on the prototype": "built as a personal project"
  replaced with "built by this paper's author as exploratory proof-of-concept
  work, separate from any specific funded project deliverable"; added explicit
  note that the two repositories are publicly accessible — removes ambiguity for
  external readers who have no other way to know the prototype is open and
  accessible.
- Section 9, "A final note on the prototype": MCP/federation claim narrowed
  from "makes federation genuinely tractable in a way that previous standards
  did not" to "adds a tool-call layer above existing standards — SPARQL, IIIF,
  REST APIs — that makes agent-mediated access tractable: not by replacing those
  standards, but by giving AI agents a consistent, discoverable interface to
  invoke them."
- Section 9, "What the team needs to do": removed redundant introductory
  sentence that created a structural ambiguity (colon implying the trade-offs
  paragraph was the "next steps" content).

### Addresses
- Issue [#6](https://github.com/roelandordelman/mediasuite-whitepaper/issues/6)
  — Sections 7, 8, 9 need broader revision for precision and consistency

---

## [0.1.4] — 2026-05-07

### Changed
- Section 4, "Visual similarity" subsection: retitled from "VisXP and the work
  still to be done" to "from prototype to production"; rewrote body to acknowledge
  VisXP is no longer actively maintained and position CLIP-based embeddings
  (available via standard model hubs) as the concrete implementation path.
- All subsequent VisXP references updated throughout Sections 4, 5, 6, 8, and 9:
  "VisXP embeddings" → "CLIP-based embeddings"; "VisXP revival" → "visual
  similarity build"; "dusting off VisXP" removed; "VisXP investment decision"
  reframed as visual similarity implementation decision.
- Figure 4 (dataset agent anatomy): "VisXP embeddings" label updated to
  "CLIP embeddings" in the visual similarity component.
- Section 7, knowledge graph subsection: added two paragraphs on the SSHOC-NL
  Knowledge Graph — its role as a tool catalogue complementing INFINITY's content
  knowledge graph, and its application to automatic SANE provisioning with the
  Open Beelden dataset via the DAB.
- Section 7, component table: added row for "Research tool catalogue — computational
  methods, automatic SANE provisioning / SSHOC-NL Knowledge Graph"; table count
  updated from seven to eight components.
- Section 8, Phase 5: added paragraph on SSHOC-NL Knowledge Graph as the tool
  layer enabling automatic environment provisioning alongside the INFINITY content
  knowledge graph.

### Addresses
- Issue [#1](https://github.com/roelandordelman/mediasuite-whitepaper/issues/1)
  — VisXP model note (no longer maintained; CLIP is the path forward)
- Issue [#2](https://github.com/roelandordelman/mediasuite-whitepaper/issues/2)
  — Include SSHOC-NL knowledge graph

---

## [0.1.3] — 2026-05-07

### Changed
- Section 7: removed reference to internal filename `project_vision_mapping_v2.md`
  from the table introduction.
- Section 7: fixed table second column header from "What builds it" to "Project
  work building it"; updated intro sentence to count seven components (not five).
- Section 7, agent layer: removed internal code identifiers (`embed_text`,
  `query_archive`, `query_milvus`, repository name, model name `multilingual-e5-
  large-instruct`, benchmark abbreviation `MTEB`) — rephrased to describe what
  each component does rather than naming implementation details.

### Added
- Section 7: new "Fragment citation" subsection covering the IIIF for AV work
  in SSHOC-NL — previously in the table but absent from the body text.

### Addresses
- Issue [#4](https://github.com/roelandordelman/mediasuite-whitepaper/issues/4)
  — Bit of weird structuring of section 7

---

## [0.1.2] — 2026-05-07

### Changed
- Rephrased the recurring research question from "the representation of migration
  in Dutch television news over the last fifty years" to "how migration has been
  covered in Dutch television news over the past fifty years" — three occurrences
  in Sections 1, 5, and 5 (federation subsection).
- Replaced the characterisation of the CKAN registry as having "become a mess"
  with a historically accurate framing: the registry was built when NDE was not
  yet mature enough to serve as the primary catalogue; datasets entered directly
  rather than via NDE; the register is accurate but not NDE-derived. Removed the
  framing as a "failure of institutional follow-through" in favour of a description
  of changed circumstances and the stronger case for NDE-first going forward.
  Two occurrences updated: Section 5 registry chain and Section 6.

### Addresses
- Issue [#5](https://github.com/roelandordelman/mediasuite-whitepaper/issues/5)
  — Research question phrasing
- Issue [#3](https://github.com/roelandordelman/mediasuite-whitepaper/issues/3)
  — Regarding the CKAN registry

---

## [0.1.1] — 2026-05-07

### Added
- Four architectural diagrams (Figures 1–4): three-layer architecture, target
  registry chain, federated agent model, dataset agent anatomy. Placed at the
  relevant points in Sections 5 and 6.
- Orientation reminders at the opening of Sections 7, 8, and 9 — brief
  italicised paragraphs that name the key concepts in play and point back to
  where they were introduced, so readers re-entering later sections do not need
  to search the full document.

### Changed
- Figure cross-references added throughout Sections 7, 8, and 9 (e.g.,
  "Figure 1", "Figure 2") so recurring terms are anchored to a visual.
- Removed internal task number reference (2026-012) from Section 7 body text.

### Addresses
- Issue [#7](https://github.com/roelandordelman/mediasuite-whitepaper/issues/7)
  — Consistent references to previously stated ideas/components

### Still open
- Issue [#6](https://github.com/roelandordelman/mediasuite-whitepaper/issues/6)
  — Sections 7, 8, 9 need broader revision for precision and consistency
- Issue [#5](https://github.com/roelandordelman/mediasuite-whitepaper/issues/5)
  — Research question phrasing
- Issue [#4](https://github.com/roelandordelman/mediasuite-whitepaper/issues/4)
  — Section 7 structuring
- Issue [#3](https://github.com/roelandordelman/mediasuite-whitepaper/issues/3)
  — CKAN registry section
- Issue [#2](https://github.com/roelandordelman/mediasuite-whitepaper/issues/2)
  — Include SSHOC-NL knowledge graph
- Issue [#1](https://github.com/roelandordelman/mediasuite-whitepaper/issues/1)
  — VisXP model note

---

## [0.1] — 2026-05-01

Initial draft. Sections 1–9 complete.

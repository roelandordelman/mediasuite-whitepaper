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
## Section 2 — Ten years of Media Suite: the right foundation

The CLARIAH Media Suite began in 2014 with a deceptively modest ambition: to
bring five prototype tools from earlier research projects into a single, sustainable
environment for humanities researchers working with Dutch audiovisual heritage.
Those five tools — CoMeRDa, AVResearcherXL, TROVe, DIVE, and Verteld Verleden
— represented the state of the art in exploratory search, cross-media analysis, and
oral history research at the time. What they lacked was a stable home: a management,
development, and production environment that could outlast any single project cycle.
That was what the Media Suite set out to provide.

Ten years later, having passed through CLARIAH-SEED (2014–2015), CLARIAH-Core
(2015–2019), and CLARIAH-Plus (2019–2024), the Media Suite offers researchers
access to more than 90 collections of Dutch cultural heritage — radio and television
broadcasts, oral history interviews, newspapers, film, programme guides, audience
ratings, and more — with tools for advanced search, close reading, annotation,
comparison, and computational analysis. Over 400 publications, presentations, and
tutorials have been produced by researchers working with or about the Media Suite.
What began as an experiment has become a unique national research infrastructure
with international reach.

But the significance of the ten years is not primarily the scale achieved. It is the
*decisions* that were made along the way — decisions that turn out, in retrospect, to
be exactly the right preparation for the moment we are now in.

### Co-development as a founding principle

The most important decision came first, before any tools were built: that the Media
Suite would be developed *with* researchers, not *for* them. Humanities scholars,
archivists, data specialists, computer scientists, and developers worked together from
the outset, guided by the recognition that mutual understanding — of technical
possibilities and constraints, of archival context, of research methodology — is a
prerequisite for building something sustainable. This was not just a management
philosophy. It was the mechanism by which the Media Suite remained grounded in
real research practice rather than drifting toward features that looked impressive but
were not useful.

The practical form this took was a continuous cycle of use cases, user stories, design
sessions, workshops, evaluation panels, and CLARIAH Research Fellows — researchers
who conducted actual research projects using the infrastructure and reported back on
what worked and what did not. Every major capability in the Media Suite today can be
traced to something a researcher said they needed. The discipline of listening before
building, of treating a researcher's frustration as a design requirement rather than a
complaint, shaped not just the tools but the way the team thinks about infrastructure.

This co-development culture produced something harder to replicate than any
individual tool: a community of practice. Researchers who understand what the
infrastructure can do, who have published with it, who have taught with it, and who
trust it enough to build their methodology around it. That community is itself an asset
— one that an AI agent layer can serve directly, and that will be essential for
evaluating whether it does so well.

### The kitchen and its recipes

An early conceptual frame that proved useful was the kitchen metaphor: the Media
Suite as a kitchen that provides tools (facilities) to prepare research results (meals)
with workflows (recipes), data (ingredients), and documentation (cookbooks). The
metaphor was useful precisely because it acknowledged that different researchers
have different needs. The pizza maker who wants quick results with simple tools, the
haute cuisine chef with complex workflows, and the fusion artist crossing disciplinary
boundaries all needed to be served by the same infrastructure.

This led to the distinction between *close reading* — viewing, annotating, and
interpreting individual items — and *distant reading* — searching for patterns across
large collections, visualising distributions, analysing transcripts computationally. The
Media Suite was designed to support both, and the tension between them drove many
of the most important infrastructure decisions: how to build a Resource Viewer that
serves a film historian examining a single clip, while also supporting a computational
researcher running queries across hundreds of thousands of items via a Jupyter
Notebook. Getting that balance right required constant negotiation — and getting it
wrong, as happened more than once, was always quickly surfaced by researchers who
expected something the system could not yet do.

### The infrastructure decisions that matter now

Several decisions made during the ten years look, in hindsight, like exactly the right
preparation for an agentic future — even though they were made for entirely different
reasons.

**Structured search with linked data.** From early on, the Media Suite used linked
data to enrich search results: connecting person names to the GTAA thesaurus and
Wikidata, enabling disambiguation and contextual lookup within the search interface.
This was done to help researchers find the right person in the right role. As a
side-effect, it produced queryable structured data that an agent can traverse.

**Speech transcripts with timecodes.** The decision to prioritise automatic speech
recognition (ASR) for radio, oral history, and news genres — and to index transcripts
in Elasticsearch with timecodes — was motivated by the observation that most
audiovisual material is underdescribed: an archivist's summary and a few metadata
fields cannot support the kind of content-based search researchers need. The ASR
pipeline, now covering large portions of the Sound & Vision archive, makes the spoken
content of broadcasts findable. Those same timecoded transcripts are the raw
material for temporal deep links — stable, citable references to specific moments in a
programme — which no existing interface yet fully exploits.

**Dataset transparency and criticism.** The Collection Inspector, Dataset Archaeology,
and the practice of publishing ASR quality benchmarks openly were all motivated by
a commitment to research integrity: researchers should be able to understand the
structure, coverage, and limitations of the data they work with. Gaps in archived
genres, metadata fractures, the variable quality of speech recognition across speech
types — these are documented and exposed, not hidden. This transparency is unusual
among heritage institutions and it is what makes the infrastructure trustworthy enough
to build AI on top of. An agent that can tell a researcher "this collection has limited
metadata coverage before 1980" or "ASR quality for conversational speech is lower
than for broadcast news" is providing the same kind of critical context the Collection
Inspector provides — but in response to a natural language question.

**Secure access with SURFconext.** The decision to use SURFconext for
authentication — giving Dutch university researchers single sign-on access across
CLARIAH services — was the first recipe the Media Suite ever implemented, and
deliberately so. Secure, auditable access to restricted material is a prerequisite for
everything else. The same infrastructure now underpins the Data Access Broker and
SANE (Secure ANalysis Environment) being developed for quantitative analysis of
sensitive datasets. Access control is not an add-on; it is foundational.

**Dataset discovery via registries.** When no suitable dataset registry existed, the
Media Suite built its own using CKAN. When the NDE Dataset Register emerged as
the national standard for Dutch digital heritage, the Media Suite connected to it. The
habit of registering datasets with structured, machine-readable descriptions —
including metadata about content, coverage, rights, and access — is exactly what
makes a collection discoverable by an agent rather than only by a human who knows
where to look.

**National and European infrastructure alignment.** Throughout its development,
the Media Suite was connected to SURF (for compute and authentication), DANS (for
Oral History), the Humanities Cluster (for annotation infrastructure), and NDE (for
dataset discovery). These connections made the Media Suite more capable than it
could have been in isolation — and they created a web of interoperable infrastructure
that an agent can navigate. A researcher's question that touches on Oral History, Sound
& Vision broadcasts, and newspaper collections from the KB already crosses three
institutions whose data infrastructures are partially connected. The work of the last
ten years is what makes that crossing possible.

### Where things stood at the end of 2024 — and where they go next

At the close of CLARIAH-Plus in 2024, it was clear that the ambitions for the next
phase were pointing in a consistent direction: more data science-oriented access to
large datasets, safe access to sensitive data, AI applications and model training for
research questions, seamless movement between qualitative and quantitative methods,
personal research corpora composed from multiple datasets, and an expanded user
base reaching research journalists and citizen scientists.

Every one of those aspirations was already present, and every one of them is now
being addressed. The work has continued through new projects — SSHOC-NL, which
is building the national data access and authentication infrastructure, and Macroscope,
which is extending the Media Suite into social media and cross-media analysis — and
through CLARIAH-NL as the organisation that sustains the Dutch research
infrastructure for the humanities beyond any single project cycle.

What was missing in 2024 was not ambition, and not infrastructure. It was the
architectural frame that names what all those aspirations have in common. That frame
is the agentic architecture described in this document. The ten years of infrastructure
investment is the foundation. The next phase is the interface layer that makes it
accessible in the way researchers now expect — and that connects the Media Suite's
capabilities to the broader AI ecosystem in a way that is principled, transparent, and
true to the co-development culture that made the infrastructure worth building in the
first place.
## Section 3 — What the AI revolution actually changes, and what it does not

There is a version of the AI narrative that goes like this: large language models
have changed everything, and institutions that do not move fast will be left behind.
There is another version that goes like this: AI is mostly hype, the real work is
still in the data and the infrastructure, and nothing fundamental has changed. Both
versions are wrong, and both are common.

What has actually changed is specific, and understanding it precisely matters —
both to avoid overreacting and to avoid underreacting. For a research environment
like the Media Suite, with a decade of structured infrastructure behind it, the
honest assessment is: the AI revolution changes the *interface* fundamentally,
changes the *scale of what is achievable* significantly, and changes almost nothing
about the *underlying requirements for good data*.

### What has genuinely changed

**Natural language as a first-class query interface.** Before large language
models, natural language interfaces to structured data were a research problem
with unsatisfying solutions. Researchers had to learn query languages, controlled
vocabularies, and interface conventions to get what they needed. The gap between
what a researcher wanted to ask and what the system could understand was bridged
by training, documentation, and frustration. Large language models close much of
that gap. A researcher can now describe what they are looking for in the same
language they use to write their research questions, and a well-built system can
translate that into structured queries against the underlying data. This is not
magic — it fails in predictable ways, and those failures need to be understood
and communicated. But the direction of travel is clear and the pace is fast.

**Multi-step reasoning over heterogeneous sources.** The researcher question
from Section 1 — *I am studying migration in Dutch television news over fifty
years, where do I start?* — requires simultaneously knowing what collections
exist, what their coverage is, what access conditions apply, how other researchers
have approached the topic, and what tools are appropriate for the analysis. No
single query to a single system answers all of that. Previously, answering it
required a researcher who already knew the landscape, or hours of documentation
reading. An AI agent can now retrieve from multiple sources, synthesise across
them, and produce a grounded, source-linked answer in seconds. The synthesis step
is what is new. Individual retrieval was always possible; orchestrated multi-source
reasoning at natural language was not.

**The economics of enrichment.** Automatic speech recognition, named entity
recognition, visual similarity, and other enrichment pipelines existed before
the current AI moment. What has changed is the cost, quality, and accessibility
of running them. Setting up a production-quality ASR pipeline for a large and
varied archive — one that handles broadcast news, oral history interviews,
and conversational speech with appropriate model choices and quality benchmarking
— is still genuinely hard work. It requires years of investment in models,
infrastructure, and institutional alignment, as the Media Suite's own experience
demonstrates. But the barrier has dropped substantially. What this means for the
agent layer is that enriched, searchable spoken content — once a long-term
aspiration — is now an achievable foundation. The work of getting there deserves
acknowledgment; it was not automatic.

**Researcher and public expectations.** This is perhaps the most consequential
change of all, and the one hardest to manage. Since large language model
assistants became widely accessible — from around 2022 with ChatGPT, and
accelerating rapidly since — researchers, journalists, and the general public
have developed strong intuitions about how AI-assisted access should feel. They
arrive at a heritage research environment expecting it to work like the tools they
use every day. That expectation is not always fair — heritage data is complex,
rights-constrained, and cannot be treated the same way as the open web — but it
is real, and ignoring it means losing users to systems that are easier to use but
less trustworthy and less rich. Meeting that expectation, while maintaining the
rigour and transparency that makes the Media Suite worth using, is the central
design challenge of the next phase.

### What has not changed

**The requirements for good data.** An AI agent that retrieves from poorly
structured, inconsistently described, rights-ambiguous data produces unreliable
answers. The fundamental requirements — persistent identifiers, structured
metadata, machine-readable rights expressions, documented coverage and gaps —
are exactly the same as they have always been. If anything, AI makes the
consequences of poor data quality more visible, because a confident-sounding
wrong answer is more damaging than a transparent failure to find anything.

This is where the Digitaal Erfgoed Referentie Architectuur (DERA), the Dutch
national framework for digital heritage infrastructure, becomes directly relevant.
DERA defines exactly the technical foundations that make heritage data
AI-accessible: persistent URIs, linked data publication using RDF and SPARQL,
machine-readable rights statements via RightsStatements.org, shared terminology
sources via the Termennetwerk, and a national Dataset Register for collection
discovery. It explicitly anticipates machine-to-machine (M2M) interfaces as
first-class citizens — not an afterthought — and its enrichment/annotation
pattern maps directly onto what AI agents produce: outputs that must carry
provenance metadata, be linked to objects via persistent URIs, and have their
rights status declared.

The Media Suite's infrastructure decisions over the last ten years — linked data,
NDE registration, structured metadata, ASR benchmarking — have been consistently
aligned with DERA principles. This alignment is not coincidental and not merely
compliance: it reflects the understanding that these standards exist precisely
because federated, trustworthy, machine-readable access to heritage data requires
them. That understanding turns out to be the right preparation for an agent
layer. The work of the last ten years becomes more important, not less.

The same logic extends to the European level. The common European Data Space for
Cultural Heritage (DS4CH) — led by the Europeana Foundation, funded through the
EU's Digital Europe programme, and now operating under a Strategy 2025–2030 — is
the European counterpart to DERA: a framework for making heritage data findable,
shareable, and reusable across institutional and national boundaries. NISV already
contributes collections to Europeana via an aggregator. The current focus on building
DERA-aligned Media Suite infrastructure offers a clear opportunity to make that
contribution more structural and sustainable — connecting it directly to the same
pipelines that serve researchers, rather than treating European publication as a
separate obligation.
The European Collaborative Cloud for Cultural Heritage (ECCCH), being built
through the ECHOES consortium, complements the data space by providing the
collaborative research environment where heritage data gets enriched, analysed,
and transformed — the layer where AI-assisted research actually happens.

The chain runs from DERA-compliant NISV data, through the NDE Dataset Register,
into the DS4CH/Europeana data space, and from there into the ECCCH research
environment. An AI agent operating at the Media Suite level sits at the bottom
of that chain. But what it does — making collections queryable
by machine, enriching them with structured metadata and ASR, linking them via
persistent identifiers — is exactly what feeds the European layer. The obligation
to contribute to European data spaces is not a separate requirement sitting on top
of the infrastructure work. It is the same work, viewed from a different altitude.
Making the Media Suite's Europeana contribution systematic rather than occasional
is both an institutional obligation and a natural consequence of building the
agent layer correctly.


**The need for transparency and data criticism.** One of the most important
contributions the Media Suite has made to digital humanities practice is the
vocabulary and tooling for data criticism: understanding how datasets were
constructed, what decisions shaped them, and how those decisions affect analysis.
AI makes this more urgent, not less. A researcher using an AI assistant to
explore the Sound & Vision archive needs to know that genre coverage is uneven,
that ASR quality varies by speech type, that metadata fields have changed meaning
over time. The agent should surface this — not bury it under a confident answer.
Transparency about what the system knows and does not know, and how it knows it,
is a design requirement, not an optional extra.

**The importance of access control and rights awareness.** The complexity of
rights and access in a heritage archive does not disappear because the interface
is more convenient. A researcher asking an AI agent for footage from the Dutch
Public Broadcaster is still subject to copyright restrictions, SURFconext
authentication requirements, and institutional access agreements. The agent must
respect these constraints, communicate them clearly, and route researchers to
appropriate access paths — not work around them or pretend they do not exist.
This is not a technical obstacle; it is a legal and ethical requirement that
defines the trustworthiness of the system.

**The primacy of the research community.** The co-development culture described
in Section 2 does not become less important because AI makes some things easier.
If anything, it becomes more important, because the failure modes of AI systems —
confident hallucination, vocabulary mismatch, uneven coverage — are less obvious
to users than the failure modes of traditional search. Researchers need to be
involved in defining what "working well" means, in evaluating whether it does,
and in identifying the gaps and biases that automated evaluation cannot catch.
User evaluation is not a phase that comes after development; it is a continuous
thread through it.

### The reframe: from grip on AI to AI as instrument

Managing the impact of AI — on research practice, on data governance, on
institutional autonomy — is a genuine and pressing challenge. The risks are real:
cost and autonomy risks from outsourcing core capabilities to large commercial
AI providers, legal and ethical constraints from the AI Act and GDPR, the
challenge of maintaining transparency and accountability when systems become more
complex. These concerns need to be taken seriously, and the Media Suite's
institutional context — as part of a public broadcaster with obligations to
researchers, journalists, and the general public — makes them more pressing, not
less.

But caution is not the same as passivity, and managing risk is not the same as
using AI well. The position this white paper argues for is that the Media Suite
— precisely because of its decade of structured infrastructure work, its
commitment to transparency and data criticism, its alignment with national and
European standards, and its deep entanglement with the research community — is
well positioned to use AI as an instrument rather than merely manage it as a risk.

The distinction matters. Managing AI as a risk leads to defensive choices:
waiting for standards to stabilise, avoiding commitments to specific models or
frameworks, treating every AI application as a governance challenge first. Using
AI as an instrument means making deliberate choices about where it genuinely
helps — natural language access to structured heritage data is one such place —
and building that capability with the same rigour and transparency that has
characterised the Media Suite's development from the beginning. For an institution
like NISV, whose primary asset is the archive itself, this also means being
deliberate about data sovereignty: the archive is a public good, not a training
dataset for commercial AI systems. Using AI as an instrument means retaining
control over how archival data is accessed, processed, and enriched — keeping the
institution as the authoritative source rather than ceding that role to external
providers.

The infrastructure is ready. The data is largely in place. The research community
exists and is engaged. What is needed now is the architectural commitment to
connect these assets through an agent layer — and the evaluation discipline to
know, honestly, when it is working and when it is not.

### A note on what the agent layer is not

It is worth being explicit about the limits of the shift being described, because
AI enthusiasm tends to obscure them.

The agent layer does not replace the tools researchers use for actual analysis.
A computational researcher doing corpus analysis, a film scholar doing close
reading, a data journalist running frequency analyses — these workflows are not
replaced by a conversational agent. The agent helps researchers *find* the right
data, *understand* what is available, and *orient themselves* within the
infrastructure. The analysis itself remains the researcher's work.

The agent layer does not make access restrictions disappear. It makes them easier
to navigate — by explaining what is accessible to whom, routing to the right
authentication paths, and presenting options clearly. But a researcher without
SURFconext access still cannot stream restricted NPO broadcasts, and an agent
that implies otherwise is a liability, not a feature.

The agent layer does not eliminate the need for documentation, tutorials, and
human support. It complements them. The Media Suite's investment in Help pages,
How-to guides, tutorials, and data stories remains valuable — the agent draws on
all of it as its knowledge base, and researchers who want to go deeper will
always need the underlying documentation.

What the agent layer does is lower the threshold for researchers who are new to
the infrastructure, speed up orientation for researchers who are familiar with
it, and make the Media Suite's capabilities more visible and discoverable to
users who do not yet know what is possible. That is a significant improvement.
It is also a bounded one.

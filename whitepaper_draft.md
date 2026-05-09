# Media Suite in the Age of AI Agents
## Rethinking Access to Audiovisual Heritage

*Draft white paper — Netherlands Institute for Sound and Vision / CLARIAH Media Suite*
*Version 0.1.3 — May 2026*

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
A researcher asks, in natural language: *I am studying how migration has been
covered in Dutch television news over the past fifty years — where do I start,
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

**Good data requirements have not changed.** An AI agent that retrieves from poorly
structured, inconsistently described, rights-ambiguous data produces unreliable
answers. The fundamental requirements — persistent identifiers, structured
metadata, machine-readable rights expressions, documented coverage and gaps —
are exactly the same as they have always been. If anything, AI makes the
consequences of poor data quality more visible, because a confident-sounding
wrong answer is more damaging than a transparent failure to find anything.

This is where the Digitaal Erfgoed Referentie Architectuur (DERA — roughly,
a national standard for machine-readable heritage data, mandating linked data,
persistent URIs, and machine-readable rights expressions across Dutch cultural
institutions), becomes directly relevant.
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
them. NISV is represented on the DERA Architecture Council, which means the
institution has not merely been a recipient of these standards but an active
participant in shaping them — a position that carries both standing and
responsibility when it comes to advocating for their consistent application.
That understanding turns out to be the right preparation for an agent
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


**Data criticism is more urgent, not less.** One of the most important
contributions the Media Suite has made to digital humanities practice is the
vocabulary and tooling for data criticism: understanding how datasets were
constructed, what decisions shaped them, and how those decisions affect analysis.
AI makes this more urgent, not less. A researcher using an AI assistant to
explore the Sound & Vision archive needs to know that genre coverage is uneven,
that ASR quality varies by speech type, that metadata fields have changed meaning
over time. The agent should surface this — not bury it under a confident answer.
Transparency about what the system knows and does not know, and how it knows it,
is a design requirement, not an optional extra.

**Access control is not a convenience feature.** The complexity of
rights and access in a heritage archive does not disappear because the interface
is more convenient. A researcher asking an AI agent for footage from the Dutch
Public Broadcaster is still subject to copyright restrictions, SURFconext
authentication requirements, and institutional access agreements. The agent must
respect these constraints, communicate them clearly, and route researchers to
appropriate access paths — not work around them or pretend they do not exist.
This is not a technical obstacle; it is a legal and ethical requirement that
defines the trustworthiness of the system.

**The research community still has to be in the room.** The co-development culture described
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
## Section 4 — What we already have: the infrastructure assets

Section 3 argued that the AI revolution changes the interface fundamentally but
changes almost nothing about the underlying requirements for good data. This
section takes stock of what the Media Suite already has — the infrastructure
assets that an agentic system needs and that years of careful work have put in
place. The inventory is not exhaustive, but it is intended to be honest: each
asset is described as it actually is, including where it remains incomplete or
requires further investment to reach its potential.

The organising principle is simple: for each asset, what does it enable for an
agent that could not be done without it?

### Speech transcripts with timecodes — Elasticsearch

The Media Suite's Elasticsearch index contains ASR transcripts for large portions
of the Sound & Vision archive, indexed with timecodes at the sentence and word
level. This is the single most powerful asset for an agent working with
audiovisual heritage, because it transforms the spoken content of broadcasts into
searchable, queryable text — and crucially, text that is anchored to specific
moments in time.

For an agent, this means two things. First, semantic search over spoken content:
a researcher asking about the representation of a topic in Dutch television news
can retrieve relevant fragments based on what was actually said, not just how
the programme was catalogued. Second, and not yet fully exploited, temporal deep
links: every retrieved passage has a start and end time, which means every answer
the agent gives about spoken content can point the researcher to the exact moment
in the broadcast rather than to the programme as a whole. This capability — stable,
citable references to specific fragments of audiovisual content — is what fragment
citation means in practice, and it is already technically present in the data.

Priority has been given to radio programmes, Oral History interviews, and news
and current affairs genres — the content most requested for research and hardest
to search without transcripts. The goal of full coverage remains ahead, but the
foundation is substantial and growing.

### Linked data and SPARQL — data.beeldengeluid.nl

The data platform at data.beeldengeluid.nl publishes collection metadata as
linked data, accessible via a SPARQL endpoint. This is structured, queryable
knowledge about the collections — not just a search index but a graph of entities
and relationships: programmes, people, organisations, events, genres, time
periods, and the connections between them.

For an agent, a SPARQL endpoint is a precision instrument. Where semantic search
over text is good at finding relevant material when the query is fuzzy or
natural-language, SPARQL is good at answering precise relational questions: which
programmes feature a specific person in a specific role, across which time period,
in which genre. The named SPARQL query patterns already developed in the prototype
work — covering tools, collections, workflows, access conditions — demonstrate
what is possible at small scale. The data.beeldengeluid.nl endpoint makes the
same approach available at collection scale.

The linked data also carries rights information, connecting to the Open Beelden
dataset and the broader NDE infrastructure. An agent that can query rights status
via SPARQL before presenting content to a researcher is doing something
qualitatively different from one that presents everything and leaves rights
navigation to the user.

### The NDE Dataset Register and Termennetwerk

NISV datasets are registered in the NDE Dataset Register, the national catalogue
of Dutch digital heritage collections. The register is publicly queryable via a
SPARQL endpoint — no authentication required — and returns DCAT-structured
metadata: what datasets exist, who manages them, what their access conditions
are, what distribution formats are available.

For an agent, the NDE register is the map. It answers the question "what exists
and how can I reach it?" not just for NISV collections but for Dutch digital
heritage more broadly. An agent tool that queries the register can tell a
researcher which collections across multiple institutions are relevant to their
question — before any content-level retrieval happens. This is discovery at the
national level, and it is already queryable today.

The Termennetwerk — the federated search across Dutch heritage terminology
sources — complements the register by providing shared vocabulary. When a
researcher uses a term, the agent can resolve it against the Termennetwerk to
find canonical forms, related terms, and broader/narrower concepts across the
GTAA thesaurus, Wikidata, and other sources. This is the disambiguation layer
that makes cross-collection search reliable rather than keyword-dependent.

### SURFconext, SANE, and the Data Access Broker

The access control infrastructure — SURFconext for authentication, SRAM for
role-based authorisation, SANE for trusted analysis environments, and the Data
Access Broker (DAB) being developed with SURF — is the layer that makes
rights-aware agentic access possible for restricted collections.

An agent that can verify a researcher's institutional affiliation via SURFconext,
check their access entitlements via SRAM, and route sensitive dataset requests
through the DAB to a SANE environment is doing something that most AI systems
cannot: respecting the access conditions of restricted heritage data rather than
working around them. This is not a constraint on what the agent can do; it is
what makes it trustworthy enough to use with restricted material.

The current state of AAI is binary — SURFconext confirms that a logged-in user
is affiliated with a Dutch research institution, but does not yet distinguish
between institutions or grant granular access based on specific dataset agreements.
SRAM adds the group and role layer that makes finer-grained authorisation possible.
This infrastructure is being built and refined; it is not yet complete, but the
direction is right and the investment is ongoing.

### The Collection Inspector and Dataset Archaeology tooling

The Collection Inspector gives researchers — and agents — structured access to
metadata about the metadata: what fields exist in a collection, what their
coverage is, how completeness varies over time. Dataset Archaeology extends this
to the historical decisions that shaped a collection: digitisation initiatives,
changes in cataloguing policy, the introduction of thesaurus terms, metadata
fractures.

For an agent, this tooling is the source of the critical context that distinguishes
a trustworthy answer from a confident but misleading one. An agent that can tell
a researcher "ASR coverage for this collection drops significantly before 1980"
or "the genre metadata for this period reflects a cataloguing change in 2004" is
providing the kind of methodological grounding that the Collection Inspector was
built to support. The challenge is making this information available to the agent
in a queryable form — which is an engineering task, not a conceptual one.

### The research community and 400+ publications

The Zotero library of CLARIAH WP5 publications — over 400 papers, presentations,
and tutorials produced by researchers working with or about the Media Suite — is
a knowledge base in its own right. It documents what research questions have been
asked, what methods have been used, what collections have been studied, and what
findings have emerged. For a researcher starting a new project, knowing that
others have worked on similar questions with similar data is enormously valuable
orientation.

This corpus is already partially ingested in the prototype knowledge base
developed alongside this white paper. The challenge is systematic coverage:
identifying which publications describe Media Suite use, extracting the relevant
methodology and dataset information, and making it retrievable by the agent.
The DOI-based pipeline for publication ingestion is one of the near-term
additions planned for the knowledge base.

### Documentation — Help, How-to, FAQ, tutorials, data stories

The Media Suite's documentation — the Help section, How-to guides, FAQ, tutorials
available via the Learn menu, and the Data Stories corpus — represents a
substantial body of knowledge about how to use the infrastructure, what it can do,
and what researchers have done with it. This documentation was the starting point
for the prototype work described in this white paper: the first knowledge base
was built entirely from the Jekyll source of the mediasuite-website repository,
producing over 10,000 deduplicated chunks covering all documentation collections.

The retrieval evaluation on this knowledge base reached 86–100% Hit@10 on a
structured test set of researcher questions, demonstrating that the documentation
is well-suited to semantic retrieval. This is the "Ask Media Suite" capability
described in the introduction — a chatbot that answers researcher questions by
retrieving from the actual documentation, not from general knowledge. It is
working and deployable. It is also the proof of concept for the broader
architecture: the same pipeline that retrieves from documentation can retrieve
from collection metadata, publication abstracts, and data stories.

Key implementation decisions from the prototype: text is chunked at approximately
1500 characters with overlap, chosen based on retrieval quality testing across
chunk sizes; both semantic search and structured SPARQL queries run in parallel
with results deduplicated by source URL; top-k is set to 10 with results ranked
by source authority before synthesis. These parameters are published alongside
the evaluation results and treated as tunable — the evaluation framework exists
precisely to detect when they need adjustment as the corpus grows or query
patterns shift.

### Visual similarity — from prototype to production

The VisXP project, co-financed by CLICKNL, developed visual similarity
capabilities for the Sound & Vision archive: shot-level embeddings that allow
researchers to find visually similar content given an example image or video
frame. This work proved the concept — embeddings computed, a similarity search
prototype demonstrated, the technical pipeline established.

VisXP is no longer actively maintained, and the specific model it used has been
superseded by more capable approaches. But the core finding stands: visual
similarity search over audiovisual content is technically feasible and
demonstrably valuable for heritage research. CLIP embeddings — which represent
images and text in the same vector space — are the concrete implementation path
forward. Available via standard model hubs, CLIP enables genuinely cross-modal
queries: embedding a textual description to find visually similar content, or
embedding an image to find thematically related spoken material. Several strong
multilingual variants exist, making the approach viable for Dutch-language
heritage collections.

What is needed is focused attention to build this capability into the agent tool
set alongside the text-based Elasticsearch and SPARQL tools, so that a researcher
can ask "find me footage that looks like this" and get a grounded, source-linked
answer. Visual similarity is the capability that most clearly demonstrates the
multimodal potential of the archive — and it is the one that most clearly
distinguishes the Media Suite from text-only AI systems.

The Open Beelden dataset — with its open license and manageable scale — is the
right place to build this first. It is the investment that makes the difference
between a text-only demonstrator and a genuinely multimodal one.

### The MCP server in development

Finally, and connecting all of the above: an MCP (Model Context Protocol) server
is already under active development as part of the AI experimentation work. MCP
is the open standard that allows AI agents to call tools through a consistent
interface — the protocol layer that turns each of the assets above into something
an agent can invoke. Tools already defined include `embed_text`, `query_archive`,
and `query_milvus`. The Elasticsearch search, SPARQL queries, and vector retrieval
are all being exposed as agent-callable tools through this server.

This is significant because it means the agent architecture is not being built
from scratch. The connective tissue is already being put in place. What remains
is the coordination work: ensuring that each tool is designed once and shared
across projects rather than reimplemented per team, and that the tool catalogue
grows systematically to cover each of the assets described in this section.

One constraint worth naming explicitly: the current OpenShift infrastructure
operates with GPU VRAM limits (24GB) that constrain which models can run locally.
The current approach — local embedding via multilingual-e5-large-instruct, with
generation handled separately — works within these limits. Scaling to larger
corpora or heavier generation workloads will require either hardware investment
or a hybrid architecture that uses SURF HPC infrastructure for compute-intensive
tasks while keeping archival data within institutional control.

### Summary

None of this is hypothetical. The infrastructure exists — in varying states of
completeness, but it exists. The agent layer does not need to be built from
scratch; it needs to be connected, coordinated, and evaluated honestly. The
gaps — visual similarity still at prototype, authorisation still binary, publication
ingestion still ad hoc — are real, and they are named here because pretending
they are not there would make the architecture less credible, not more. The
question is not whether the foundation is right. It is. The question is whether
the institutional commitment exists to finish what ten years of work has made
possible.
## Section 5 — The architectural vision: from pipelines to agents

The Media Suite today is a set of interfaces for humans. A researcher logs in,
navigates to the search tool, constructs a query, applies filters, opens items
in the Resource Viewer, saves bookmarks, creates annotations, runs a Jupyter
Notebook. Each step requires the researcher to know what tool to use, how to use
it, and how to interpret what comes back. The infrastructure supports the
researcher; it does not yet act on their behalf.

The shift this section describes is from a set of tools that researchers operate
to a set of capabilities that an agent can orchestrate — on the researcher's
behalf, in response to a question asked in natural language, drawing on whichever
combination of tools and data sources is relevant. The tools themselves do not
change. What changes is the layer of coordination above them.

### From pipelines to tools

In the current architecture, a researcher's interaction with the Media Suite
follows a fixed sequence determined by the interface: search, then filter, then
view, then annotate, then export. This is a pipeline: a predetermined path through a set of
capabilities. Pipelines are efficient for well-understood workflows, but they
break down when a researcher's question does not fit the path — when answering
it requires combining results from multiple collections, consulting documentation,
checking access conditions, and cross-referencing prior research, all in a
sequence determined by the question rather than by the interface design.

The agentic architecture replaces the fixed pipeline with a reasoning loop. Each
Media Suite capability — keyword search over Elasticsearch, SPARQL queries over
the linked data endpoint, semantic retrieval from the vector index, rights status
lookup, documentation retrieval — becomes a *tool* that the agent can call. The
agent decides which tools to call, in what order, based on what the question
requires. It can call the same tool multiple times with different parameters, 
evaluate whether the results are sufficient, and try a different approach if they
are not.

This is not a small change. It means that the researcher's entry point is no
longer a search box or a tool menu — it is a question. And the question can be
as complex as the research problem requires.

### MCP: the connective protocol

For the agent layer to work, each capability needs to be exposed through a
consistent interface that the agent can call without knowing the internal
implementation details of the underlying system. This is what the Model Context
Protocol (MCP) provides.

MCP is an open protocol, developed by Anthropic and now widely adopted, that
defines how AI agents connect to external tools and data sources. It works like
HTTP for AI: a standard that allows any agent to talk to any tool without custom
integration code. Each capability becomes an MCP server, exposing a set of named
tools with defined inputs and outputs. The agent is an MCP client, calling
whichever servers are registered and relevant.

For the Media Suite, the implication is concrete. Each capability becomes a
named, callable tool:

- The Elasticsearch search: `search_archive(query, filters)`
- The SPARQL endpoint: `query_knowledge_graph(sparql_template, parameters)`
- The NDE Dataset Register: `find_datasets(institution, license, format)`
- The vector retrieval index: `semantic_search(query, collection)`
- The visual similarity index: `find_visually_similar(image_or_description)`
- The documentation knowledge base: `ask_media_suite(question)`
- The access control layer: `check_access(dataset, user_context)`

![Figure 1: The three-layer agentic architecture. Existing infrastructure assets (bottom) are each exposed as a named MCP tool (middle layer), which an agent reasoning loop (top) calls in whatever combination a researcher's question requires. The same MCP tools serve multiple interfaces — research, public, journalistic, and federated CLARIAH.](figure1.drawio.png)

Each tool is built once and shared across any application that needs it — not
just the Media Suite chatbot. A future CLARIAH
tool, a researcher's own local agent, a journalistic application — all can use
the same MCP servers without requiring new integration work. This is the
architecture that turns a collection of project-specific implementations into
shared infrastructure.

An MCP server is already under active development as part of the current AI
experimentation work, with tools for embedding, archive querying, and vector
retrieval already defined. The path forward is to expand this server systematically
to cover the full tool catalogue described above, ensuring each tool is designed
for reuse rather than for a single application.

### What the agent does — a concrete scenario

The migration research question from Section 1 — *I am studying how migration
has been covered in Dutch television news over the past fifty years — where do I
start, what is available, how have others approached this, and what can I access?* —
illustrates what the agent can do when the tool catalogue is in place.

The agent receives the question and reasons about what is needed. It queries
the NDE Dataset Register to identify which collections cover Dutch television news
over the relevant time period — not just NISV collections, but any registered
dataset nationally. It queries the Media Suite's own collection registry to
determine which of those datasets are currently indexed and queryable within the
research environment. It queries the knowledge graph for structured facts: temporal
coverage, genre distribution, ASR availability, access conditions. It checks the
researcher's access context to determine what is immediately accessible and what
requires a different route. It runs semantic search over ASR transcripts to find
programmes where migration was actually discussed, not just catalogued as a
subject. It queries the publications knowledge base for how other researchers have
approached the question.

It synthesises all of this into a structured response: here are the relevant
collections, here is what you can access now and how to request what you cannot,
here is what others have found, here are the most relevant programmes to start
with, and here is the documentation that will help you proceed.

Every claim is linked to its source. The researcher can follow any link, go
deeper, or challenge the framing. The agent has oriented the researcher within
the infrastructure — with situational awareness that previously required
institutional expertise or hours of exploration — without doing the research
itself.

After this orientation, the researcher typically moves into the Media Suite's
familiar interface: searching within a specific collection, opening items in the
Resource Viewer, building annotations, running a Jupyter Notebook. The agent
does not replace this workflow. It is most useful at specific moments: at the
start of a project, when the researcher does not know where to begin; at
transitions, when a new tool or collection is needed; and when stuck, when a
search is returning too little or too much. In between, the researcher works as
before. The agent is a companion with deep institutional knowledge, not a
replacement for the research process.

### The registry chain — and why it has to be fixed

![Figure 2: The target registry chain. NISV publishes Open Beelden to the NDE Dataset Register with correct DCAT and ODRL metadata; the Media Suite local registry harvests and enriches from NDE; the indexed data feeds the research environment agent tools; DS4CH/Europeana receives from NDE via a standard pipeline. Open Beelden is the first NISV dataset to complete this chain end to end.](figure2.drawio.png)

The scenario above makes one assumption that is not yet true and needs to be
stated plainly: it assumes that querying the NDE Dataset Register gives a
reliable, complete picture of what datasets exist in Dutch digital heritage,
and that querying the Media Suite's local registry gives a reliable picture of
what is actually available for research there. Neither assumption currently holds,
and the gap between them is a structural problem that has accumulated over years.

The intended chain runs like this: data providers register their datasets in the
NDE Dataset Register with DCAT metadata and ODRL rights expressions; the Media
Suite harvests from NDE to populate its local collection registry, adding
integration-specific details about indexing and access; researchers and agents
query both layers to find what exists and what is usable. At the European level,
NDE feeds into the common European Data Space for Cultural Heritage, connecting
Dutch heritage to DS4CH and making it discoverable across the continent.

The actual situation reflects a transition that has not yet completed. NISV
currently contributes content to Europeana via EUscreen — the European television
archives domain aggregator — a route established before NDE existed as a mature
publication layer. Open Beelden content reaches Europeana through a separate
route. Neither path currently goes through NDE. The practical consequence for
an agent is significant: querying NDE gives an incomplete picture of what NISV
holds and what is accessible, because the national layer has not yet been
populated with the authoritative descriptions that should flow through it. This
is not a permanent state — it is the gap that the current infrastructure work
is designed to close, starting with Open Beelden.

At the national level, the Media Suite's local registry — currently implemented
in CKAN — exists for a straightforward historical reason: when it was built, the
NDE Dataset Register was not yet authoritative or feature-complete enough to
serve as the Media Suite's primary collection catalogue. Datasets entered the
CKAN registry directly, via arrangements with data providers who had neither
the resources nor a strong incentive to register in NDE first. The registry
accurately reflects what collections are available in the Media Suite, but it
is not systematically derived from NDE — which makes it an unreliable foundation
for automated discovery across the national infrastructure.

This is not a failure of technology, and it is not a failure of NDE. The
standards, the register, and the network facilities have existed and been
maintained. What did not happen — across the heritage sector, including NISV —
was a consistent practice of treating NDE registration as the primary step
rather than an optional parallel publication. The NDE register has matured
considerably since the CKAN registry was established. The case for routing all
new dataset registrations through it is now much stronger, and the Open Beelden
integration is the point at which that practice becomes the norm rather than
the exception.

The agentic architecture makes the cost of this failure more visible than it has
ever been. An agent that confidently queries NDE and returns an incomplete picture
is worse than no agent at all — it produces a confident wrong answer at scale.
This is why the Open Beelden commitment matters beyond its immediate scope: it is
the first time the chain will be completed properly, with governance enforced, for
a real NISV dataset. The full chain: NISV publishes to NDE with correct DCAT
and ODRL metadata; the Media Suite local registry harvests from NDE and adds
integration details; the Media Suite index makes it queryable for research;
DS4CH/Europeana ingests from NDE — not via a parallel aggregator route. When that chain works for Open Beelden, it becomes
the model for every subsequent dataset. And when an agent queries NDE and finds
Open Beelden properly described there, it will for the first time be able to
give a researcher a complete and accurate answer about what that dataset contains,
who can access it, and how.

### Federation: the CLARIAH level and beyond

![Figure 3: The federated agent model. Specialised dataset agents — Media Suite (Sound & Vision broadcasts and Open Beelden), DANS (oral history), KB (newspapers), EYE (film) — are coordinated by a CLARIAH-level agent that synthesises across their responses. Each specialised agent maintains its own accuracy and governance; the coordinating agent does not fabricate answers on any agent's behalf.](figure3.drawio.png)

The scenario above operates at the Media Suite level — one research environment,
one agent, one researcher. But the research question — *I am studying how migration has been covered in Dutch
media over the past fifty years* — is not a Media Suite question. It is a question about Dutch media, which spans Sound &
Vision broadcasts, KB newspapers, DANS oral history interviews, EYE film
collections, and potentially social media data from multiple platforms. No single
research environment holds all of this.

The right architectural response to this is federation — a network of specialised
agents, each with deep knowledge of its own domain, that can be coordinated by a
higher-level agent. The Media Suite agent knows the Sound & Vision collection
intimately: its coverage, its access conditions, its ASR transcripts, its linked
data. The DANS agent knows the oral history collections and is already developing
data access infrastructure via SSHOC-NL. The KB agent knows the newspaper archive
and is building towards machine-queryable access to its collections. The EYE
Filmmuseum contributes film heritage. A CLARIAH-level coordinating agent —
sitting at clariah.nl, or eventually replacing what INEO currently tries to be
as a portal — can query all of them and synthesise across their responses. The
Media Suite is not doing this alone; it is building one component of a shared
architecture that several CLARIAH institutions are developing in parallel,
each from their own domain.

This is not the same as building a single monolithic CLARIAH research application.
That approach has been tried in various forms and consistently fails: the
institutional complexity underneath does not disappear because there is a unified
interface on top, and maintaining a centralised surface that accurately represents
distributed, differently-governed collections requires unsustainable effort. The
federated agent model is different in a crucial way: each specialised agent
maintains its own accuracy and its own governance. A researcher who asks the
CLARIAH agent about newspaper coverage gets an answer sourced from the KB agent's
own authoritative knowledge. If the KB agent does not know something, it says so —
the CLARIAH agent does not fabricate an answer on its behalf.

INEO's role in this architecture should be as a catalogue, not a portal. Its
current incarnation as a unified discovery surface over heterogeneous,
differently-governed collections has not delivered on its promise — the
institutional complexity underneath does not disappear because there is a
unified interface on top. As a machine-queryable registry of what tools,
datasets, workflows, and educational materials exist across CLARIAH — the map
that a coordinating agent queries to find which specialised agents exist and
what they cover — it would be both more accurate and more sustainable.

The Media Suite's identity in this federated architecture is clear: it remains a
research environment with its own interface, tools, and community of researchers
who know it and use it directly. It also exposes its capabilities as MCP tools
callable by external agents. These two roles are not in tension. A researcher who
knows the Media Suite uses it as before. A researcher who asks a question on
clariah.nl gets routed to Media Suite capabilities without needing to know the
Media Suite exists. The institution's research environment and the federated
infrastructure are the same thing, at different levels of abstraction.

What makes this achievable — rather than another promised federation that never
materialises — is the combination of three things that have not previously been
in place simultaneously: a standard protocol (MCP) that is simple enough for
institutions to implement without large integration projects; AI agents capable
of synthesising across heterogeneous sources without requiring those sources to
be harmonised first; and a concrete proving ground (Open Beelden) where the full
chain can be demonstrated end to end before the vision is extended. The federation
does not need to be complete before it starts working. It needs one chain to work
properly, and then another, and then another.

### Parallel paths: vector search and structured queries

One of the key design insights from the prototype work is that vector search and
structured queries are complementary, not competing. They answer different kinds
of questions and should run in parallel, with the agent synthesising from
whatever both return.

Vector search — embedding a question and finding semantically similar chunks of
text — is good at fuzzy, open-ended questions: *what have researchers said about
migration and Dutch television?* It handles vocabulary variation, finds related
concepts, and works well when the researcher does not know exactly what to look for.

Structured queries — SPARQL templates run against the linked data endpoint — are
good at precise, relational questions: *which programmes in the NISV archive from
1990–2010 have ASR transcripts and are accessible without a SURFconext login?*
They return exact, verifiable answers and work well when the question has a
definite answer.

The agent decides which path to take based on the nature of the question — or,
more robustly, runs both paths and synthesises from the combination. Factual
questions about collections, access conditions, and rights get routed to
structured queries. Exploratory questions about content, themes, and prior
research get routed to vector search. Complex questions that require both get
both. The named SPARQL query catalogue — already containing eleven templates
covering tools, collections, workflows, and access conditions — is the structured
path's tool kit, and it grows as new question types are identified.

### The dataset agent concept

The agentic architecture described above applies to the Media Suite as a whole —
all collections, all tools, all documentation. But the path to building it
sustainably is incremental. The concept of the *dataset agent* — a well-instrumented,
independently deployable agent for a single dataset — is the building block.

A dataset agent for Open Beelden, for example, would expose:
- Semantic search over ASR transcripts of the full Open Beelden corpus
- Structured SPARQL queries over the Open Beelden linked data
- Visual similarity search over Open Beelden keyframes using CLIP-based embeddings
- Rights and access information from the NDE registration
- Provenance and coverage information from Dataset Archaeology

![Figure 4: Anatomy of a dataset agent. Five instrumented components — ASR transcripts, linked data, visual similarity, rights metadata, and provenance — are bundled into a single, independently deployable, MCP-callable agent. The agent can be invoked from the Media Suite research interface, a public-facing interface, or a CLARIAH coordinating agent, without any component needing to be rebuilt per use case.](figure4.drawio.png)

It would be deployable independently, callable via MCP, and usable both within
the Media Suite and by external applications. When a second dataset agent is
built — for the Oral History collection, for the newspaper archive, for the
television news collection — it is added alongside the first without changing
either one. Cross-dataset queries become possible when two agents exist:
*compare the framing of migration in television news and in oral history
testimonies from the same period* is a question that spans two dataset agents
and requires a coordinating layer to synthesise the results.

This is the dataset-by-dataset expansion model. It is deliberately incremental:
prove the architecture works on one dataset, then add the next. Each addition
increases the capability of the whole system without requiring a redesign.
Open Beelden, as the only fully open NISV dataset with no login requirement, is
the right place to start — and its migration to the new collection platform by
April 2027 provides both the deadline and the motivation.

### Responsible AI by design

The architectural vision described here is not neutral with respect to AI
governance. Several design choices are deliberate responses to the concerns
raised in Section 3.

**Source grounding over generation.** Every claim the agent makes is linked to
a source in the knowledge base or the collection. The agent does not generate
answers from general knowledge — it retrieves and synthesises from verified
sources, with provenance at every step. This is not a technical constraint; it
is the design choice that makes the system trustworthy for research use.

**Transparency about uncertainty.** When retrieval confidence is low — when
the agent cannot find relevant material, or finds conflicting information, or
reaches the boundary of what the knowledge base covers — it says so. Technically,
this means implementing confidence thresholds: when the top-k retrieved results
are semantically distant from the query, the agent falls back to an explicit
acknowledgment rather than synthesising a confident answer from weak evidence.
This corrective retrieval approach is built into the evaluation framework from
the start — low-confidence responses are flagged, reviewed, and used to improve
both the knowledge base coverage and the retrieval configuration. An answer
that acknowledges its own limits is more useful to a researcher than a confident
answer that conceals them.

**Rights enforcement, not rights bypass.** The access control layer is not a
friction point to be minimised — it is a feature. The agent enforces access
conditions, communicates them clearly, and routes researchers to appropriate
paths. Material that requires a SURFconext login is not accessible without one,
and the agent does not pretend otherwise.

**Local-first where possible.** The prototype work was built entirely on locally
running models — no data sent to commercial APIs, no archive content used as
training material. Production deployment will require infrastructure decisions
about which models to run where, but the principle of keeping archival data
within institutional control is not negotiable. The work to build this on
NISV's own OpenShift infrastructure is already underway.

**Evaluation as a continuous practice.** The system is only as trustworthy as
the evidence that it works correctly. The evaluation framework — structured test
questions, retrieval benchmarks, publicly reported quality metrics — is built in
from the start and updated as the system evolves. Quality is not asserted; it is
measured and reported.
## Section 6 — Open Beelden as the proving ground

Every architectural vision needs a proving ground — a bounded, real case where
the theory is tested against practice, where the gaps between what is claimed and
what is true become visible, and where the lessons learned shape everything that
follows. For the agentic architecture described in this document, that proving
ground is Open Beelden.

The choice is not arbitrary. Three advantages compound each other in a way that
makes Open Beelden uniquely suited to this role, and a fourth — the hard deadline
of April 2027 — makes it urgent.

### Three compounding advantages

**Open access — no login required.** Open Beelden is the only NISV collection
that is fully open: Creative Commons licensed, publicly accessible without a
SURFconext login, downloadable without institutional affiliation. This matters
enormously for the agent architecture because it removes the access control
complexity that makes everything else harder. An AI assistant built on Open
Beelden can be deployed publicly — accessible to researchers, journalists,
educators, students, and the general public — without the authentication
infrastructure, usage tracking, and rights enforcement that restricted
collections require. This is the first opportunity to demonstrate what AI-assisted
heritage access looks like when the answer is genuinely "anyone can use this,"
not "anyone with the right institutional affiliation can use this."

The public access angle has strategic significance beyond the technical. The
Media Suite's primary audience has always been academic researchers. Open Beelden
offers a route to a much broader audience — the journalist who wants to find
historical footage, the educator who wants to illustrate a lesson, the citizen
who is curious about Dutch media history. An agent that can answer their questions
in natural language, with source links and access to the actual content, is a
qualitatively different kind of public service than a traditional search interface.
It is also a demonstrator for what the Media Suite could become for all open
content, and what NISV's contribution to European open heritage can look like
when the infrastructure is properly connected.

**Already instrumented — the technical foundation is largely in place.** Open
Beelden is not a new dataset that needs to be built from scratch. The linked data
for the B&G Open Beelden set is already present in the B&G LOD endpoint,
queryable via SPARQL. ASR processing is underway for the collection, with timecoded
transcripts being added to the Elasticsearch index. IIIF manifest support is being
developed, which will enable fragment-level access — stable, citable temporal
references to specific moments in specific videos. NDE registration exists,
though it needs to be completed and enriched with proper DCAT and ODRL metadata.
The collection also includes sub-collections beyond the B&G set — Natuurbeelden,
VPRO, EYE, Yad Vashem — that need to be brought into the same infrastructure.

This is not a situation where the work starts from zero. It is a situation where
substantial groundwork has been done and what is needed is the focused commitment
to complete it — to close the gaps, connect the layers, and bring the dataset to
the standard that the agent architecture requires. The difference between "we have
some linked data and some ASR transcripts" and "this dataset is fully agent-ready"
is a matter of focused engineering and governance, not a fundamental rearchitecting.

**NDE registration — the model for the national chain.** Open Beelden is the
right dataset to demonstrate the full NISV → NDE → Media Suite chain working
properly, for a reason beyond its technical readiness: it is fully open, which
means the governance complexity around rights and access does not obscure the
technical work. A restricted dataset that goes through the chain correctly still
requires careful management of who can access what and under what conditions.
Open Beelden has CC licenses. The rights question is settled. This makes it
possible to focus entirely on getting the technical chain right — correct DCAT
metadata, correct ODRL expressions, proper distribution descriptions, NDE
registration that accurately reflects what is available and how to get it — and
to verify that it works end to end before applying the same approach to datasets
where the rights complexity is harder.

When the Open Beelden chain is complete and working, it becomes the reference
implementation. Every subsequent dataset added to the Media Suite follows the
same pattern. Data providers who want their dataset in the Media Suite are shown
Open Beelden as the model. NDE registration is not optional; it is the entry
point. The situation with the existing CKAN registry — built before NDE was mature
enough to serve as the primary catalogue — does not recur if NDE registration
is the entry point from the start.

### The April 2027 deadline — migration as opportunity

Open Beelden as a standalone platform (openbeelden.nl) is being phased out by
April 2027. The content and functionality need to migrate to new homes: the B&G
PeerTube instance for video playback, Wikimedia Commons for open distribution,
and the Media Suite for research access and AI-assisted discovery.

This deadline is both a constraint and an opportunity. It is a constraint because
it sets a hard date by which the Media Suite integration must be functional — the
research access that openbeelden.nl currently provides cannot simply disappear.
It is an opportunity because it creates institutional momentum for doing the work
properly rather than quickly: the migration happens once, and if it is done with
the full chain in place — NDE registration, agent-ready linked data, ASR
transcripts, IIIF manifests, public access without login — it sets the standard
for everything that follows.

The Media Suite team has no hard deadline responsibility for the platform
migration itself. This is actually an advantage: it means there is freedom to
take the time to build the agent layer correctly, rather than rushing a minimal
integration to meet an operational deadline. The question is not "how do we get
Open Beelden into the Media Suite by April 2027" — that is straightforward. The
question is "how do we get Open Beelden into the Media Suite by April 2027 in a
way that demonstrates the architecture we want for everything else."

### What "done properly" means

An Open Beelden dataset agent that demonstrates the architecture needs to
deliver five things, verifiably:

**1. The full chain completed.** NDE registration with correct DCAT and ODRL
metadata, Media Suite local registry harvesting from NDE, Media Suite index
built from the harvested data, DS4CH/Europeana receiving from NDE rather than
via a parallel aggregator route. Not "the data is somewhere accessible" but
"the chain is traceable from source to research environment to European data
space."

**2. Full ASR coverage with timecoded transcripts.** All Open Beelden content
— B&G set plus Natuurbeelden, VPRO, EYE, Yad Vashem — processed through the
ASR pipeline with timecoded transcripts indexed in Elasticsearch. This is the
layer that makes content-based search possible and that enables temporal deep
links in agent responses. It is also the organisational coordination task that
needs a named owner and a delivery date.

**3. Visual similarity from prototype to production.** The VisXP project
established the proof of concept for visual similarity search over archival AV
content, but the prototype is no longer actively maintained. The implementation
path is now clear: CLIP-based embeddings, available via standard model hubs,
enable cross-modal retrieval that neither requires nor depends on the original
VisXP infrastructure. Open Beelden is the right dataset to build this first —
manageable scale, open license, no rights complications. A researcher who can
ask "find footage that looks like this" and get a grounded, source-linked answer
is experiencing a capability that no other Dutch heritage interface currently
offers. This is the investment that needs focused attention.

**4. A public-facing agent interface.** Not a researcher-only tool behind a
SURFconext login but a genuinely public interface — embeddable on the Media Suite
community site, accessible from a public URL, usable by anyone. The evaluation
framework includes questions from journalists, educators, and general users,
not just academic researchers. Quality is reported publicly, as the ASR
benchmarks are, so users can understand what the system can and cannot do.

**5. Evaluation as a published benchmark.** A structured set of test questions
— across all content types and question types that Open Beelden supports — with
Hit@10 and MRR scores published openly and updated as the system improves. This
is the evidence that the architecture works. It is also the discipline that
prevents the "it works in demos" failure mode that has plagued previous
infrastructure initiatives. If the system cannot answer a class of questions
well, that is reported, not hidden.

### Open Beelden as the first dataset agent

When all five of these are in place, Open Beelden becomes the first proper
dataset agent in the Media Suite ecosystem: a well-instrumented, independently
deployable, MCP-callable agent for a single dataset, demonstrating the full
architecture from NDE chain to public-facing retrieval.

The second dataset agent — whether for the television news collection, the Oral
History interviews, or a subset of the Sound & Vision archive — follows the same
model. It is added alongside Open Beelden without changing Open Beelden. The
cross-dataset questions become possible as soon as two agents exist: a researcher
asking about migration across television news and open archival footage has two
agents to query and a coordinating layer to synthesise the results.

This is the incremental path from a working prototype to a working infrastructure.
Not a grand unified system, not another promised federation that will take years
to materialise. One dataset, done properly. Then another. Then another.

The frustration of people who have known what was needed for years — who have
watched the registry chain fail to close, who have seen linked data promise more
than it delivered, who have built prototype after prototype that never reached
production — is legitimate. Open Beelden is the chance to demonstrate that the
frustration is over, that the architecture is right, and that the institutional
commitment is real. It is a small dataset by any measure. What it proves is not.
## Section 7 — The vision is already being built

The previous sections describe an architectural vision. This section makes a
specific claim about it: every major component is already under active
development, across multiple funded projects, by the same team. This is not a
proposal for future work. It is a description of work in progress, seen from
a vantage point that the individual projects do not have — because each project
sees its own piece, not the whole.

*For readers returning to this section directly: the core architectural
components — agent layer, access control, national dataset catalogue, and
knowledge graph — were introduced in Section 5 and shown in Figure 1. The
table below maps these, and the cross-cutting components that support them,
to the projects currently building each one. The dataset-by-dataset expansion
model — one well-instrumented dataset agent at a time, each added without
requiring changes to the previous — is the implementation strategy from
Section 5 (Figure 4). Open Beelden, described in Section 6, is the first
dataset agent and the proving ground where the registry chain (Figure 2)
will first be completed end to end.*

The table below maps the eight components the architecture requires to the
projects currently building them.

| Architecture component | Project work building it |
|---|---|
| Agent layer — embedding, vector retrieval, MCP server, agent orchestration | AI experimentation (SSHOC-NL / Macroscope) |
| Access control — DAB, AAI/SRAM, SANE trusted environment | National Data Flow (SSHOC-NL) |
| National dataset catalogue — NDE registration, DCAT, ODRL | Open Beelden Integration + National Data Flow |
| Knowledge graph — entity model, SPARQL query catalogue, RDF | INFINITY (Horizon Europe) |
| Research tool catalogue — computational methods, automatic SANE provisioning | SSHOC-NL Knowledge Graph (SSHOC-NL) |
| Applied user scenarios — journalism, oral history, cross-media | HAICu Deep Journalism Lab |
| Social media corpus — comparative cross-media analysis | Macroscope |
| Fragment citation — IIIF for AV, proxy fragment access | IIIF Viewer & Image Collections (SSHOC-NL) |

What follows describes each component in the terms of what it contributes to
the architecture, and what remains to be done.

### The agent layer

The most direct implementation of the vision is already well underway. The
AI experimentation work, developed jointly within SSHOC-NL and Macroscope,
has produced a working pipeline: a semantic embedding layer for converting
queries and collection content into comparable vector representations, a vector
database deployed on NISV's OpenShift infrastructure, and an MCP server with
the first agent tools already defined and callable. An orchestration layer —
the component that receives a researcher's question, decides which tools to
call, and synthesises a grounded answer — is in active development, with a
full prototype expected by end of Q2 2026 and suitable for initial user testing.

The embedding model was selected based on multilingual retrieval benchmarks and
tested against Dutch-language heritage content. It handles Dutch and English in
the same vector space — important for a corpus spanning decades of Dutch-language
broadcasting queried by an international research community — and outperformed
alternatives on the domain-specific evaluation set used during prototype
development.

The Frozen Sets concept — user-defined, topic-scoped subsets of Media Suite
content that can be embedded and queried independently via RAG — is confirmed
in scope. A researcher defines a dataset by specifying a topic, time period,
and collection scope; the system makes it queryable as its own agent. This
connects to current work in the CLARIAH community on FAIR reuse of SPARQL
queries — making query definitions citable, versioned, and reusable artifacts
in their own right, not just ephemeral search inputs. This
points toward improved reproducibility — a Frozen Set is more than a saved
search result in that it captures the corpus definition explicitly, making it
easier to re-run analyses on a defined subset. Whether it fully solves the
reproducibility problem is a more difficult question. True reproducibility
requires that the same query returns the same results at a later date, which
in turn requires that the underlying collection is versioned and that the state
of the index at the time of the original analysis is preserved or citable.
Collections do change: new items are added, metadata is corrected, ASR
transcripts are updated. A Frozen Set as currently conceived does not
address this. It is a step in the right direction — and a useful one — but
the full reproducibility challenge requires versioned collections and citable
data snapshots, which is a harder infrastructure problem that deserves separate
attention.

The current prototype measures end-to-end query latency at 2–4 seconds for
documentation retrieval on a single-user basis — acceptable for an orientation
tool, though multi-user load testing under realistic conditions has not yet been
conducted. Scaling to the full AV corpus will require profiling the Milvus index
performance at larger vector counts and assessing whether the OpenShift GPU
allocation remains sufficient or whether SURF HPC infrastructure needs to be
brought in for heavier workloads. These are known unknowns, not surprises.

Two gaps are worth naming explicitly. First, a human-verified evaluation set
for the agent does not yet exist. The approach that has proven effective for
the documentation knowledge base — developed as a parallel prototype to ground
the architectural thinking in this white paper — combines automatic validity
testing with human verification: a structured set of questions is generated
over the collection, automatically checked for whether retrieval returns
expected sources, and then extended and validated by researchers who can judge
whether the answers are actually useful. Quality metrics are reported publicly,
as the ASR benchmarks are, so quality is transparent rather than asserted.
This approach needs to be applied to the AV collections agent from the start,
with a named owner and a commitment to publish the results. Second, the MCP
server design needs to take the full architecture into account from the start
— each tool built once and shared, not reimplemented per project.

### The access control layer

The Data Access Broker (DAB), Authentication and Authorisation Infrastructure
(AAI via SURFconext and SRAM), and SANE trusted analysis environment are being
built as part of the SSHOC-NL national data flow work. These are the components
that make rights-aware agentic access possible for restricted collections.

The pilot workflow — dataset registered in NDE with ODRL rights rules, user
requests access via DAB, DAB verifies authorisation via SURFconext/SRAM, data
transferred to SANE for quantitative research or the Media Suite for qualitative
research — is a precise description of controlled agentic data access. It is
being built and tested now.

Two honest caveats. Current authorisation is binary: SURFconext confirms
institutional affiliation but does not yet distinguish between institutions or
grant granular access based on specific dataset agreements. SRAM adds the
role-based layer that makes finer-grained authorisation possible, and that work
is ongoing. And ODRL implementation — machine-readable rights expressions that
an agent can read to know what it is permitted to do with a dataset — is
understood conceptually at NISV but not yet operationally standard. Making ODRL
part of every NDE registration, starting with Open Beelden, is the concrete
first step.

### The national dataset catalogue

The NDE Dataset Register is already publicly queryable via SPARQL — no
authentication required, no new infrastructure needed. An agent tool that
queries the register can tell a researcher what datasets exist nationally,
what their rights are, and how to access them. This is a working agent tool
today. The NDE Termennetwerk — federated search across Dutch heritage
terminology sources, including the GTAA thesaurus — is also live and queryable,
providing the shared vocabulary layer that makes cross-institutional entity
resolution possible. The NDE Knowledge Graph, which aggregates and connects
heritage information across participating institutions, is likewise operational.
These are not aspirations; they are infrastructure the agent can use now.

What is not yet working is NISV's contribution to that register. As described
in Section 5 (Figure 2), NISV currently contributes to Europeana via EUscreen,
bypassing NDE. The Open Beelden integration work is the vehicle for closing
this gap: publishing the full Open Beelden dataset as linked data via
data.beeldengeluid.nl, registering all sub-collections in the NDE register
with correct DCAT and ODRL metadata, and ensuring that DS4CH/Europeana receives
from NDE rather than via a parallel aggregator route.

This is the governance commitment that makes the technical architecture credible.
The policy is: new datasets follow the chain. Open Beelden is first.

### Fragment citation

IIIF (International Image Interoperability Framework) support for audiovisual
material is being developed within SSHOC-NL's image and AV collections work.
For static images, IIIF is already well established in the heritage sector —
it enables stable, citable references to specific regions of a digitised
object. Extending this to audiovisual material means the same principle applied
to time: a stable, citable reference to a specific moment within a video or
audio item, not just to the item as a whole.

For the agent architecture, this is what turns a retrieved transcript passage
into a usable citation. A researcher who asks what was said about a topic gets
not just a text fragment but a link to the exact moment in the broadcast where
it was said — playable, shareable, and citable in a publication. Combined with
the timecoded ASR transcripts already in the Elasticsearch index (described in
Section 4), IIIF fragment references are the interface layer that makes the
archive's spoken content genuinely accessible rather than merely findable. The
IIIF work also enables proxy-based access to fragments of rights-managed
content for authorised researchers, without requiring direct access to the
underlying files — a meaningful step forward for restricted collections.

### The knowledge graph

INFINITY is a Horizon Europe knowledge graph project for cultural heritage data,
in its first year of preparation in 2026. The Media Suite's contribution is as
an active partner, not a passive consumer: providing a working AV heritage
test environment, contributing to the Use Case Requirements (WP5) and Ethics
and Design (WP8) work packages with evidence from the prototype work, and
aligning the entity model and SPARQL query catalogue with the ontology design
patterns INFINITY develops for cross-institutional knowledge graphs.

The prototype knowledge graph — 1057 triples across five entity types, eleven
named SPARQL query templates, deterministic embedding-based routing — is
intended as an integrated test bed for INFINITY research outcomes: a real
heritage collection, with real query patterns, surfacing the entity models and
failure modes that production-scale knowledge graph design needs to address.
The Media Suite's existing linked data assets — the GTAA thesaurus connections,
the Wikidata linkages, the data.beeldengeluid.nl SPARQL endpoint — provide
INFINITY with a working Dutch AV heritage environment to validate against,
not just a theoretical use case. Aligning the prototype's entity model with
established ontology design patterns (ODPs) — particularly for events, agents,
and temporal relationships in AV heritage — is a concrete contribution the
Media Suite team can make to INFINITY's shared knowledge graph design.
Articulating that contribution concretely, and ensuring active participation
in the relevant INFINITY work packages, is a near-term priority.

A complementary knowledge graph developed within SSHOC-NL takes a different
focus: cataloguing the research tools and software methods available for
computational analysis of heritage collections. Where INFINITY maps cultural
heritage entities and their relationships, the SSHOC-NL Knowledge Graph maps
the research landscape — which tools exist, what data types they work with,
what computational environments they require, and how they connect to specific
datasets.

For the agentic architecture, this has a concrete application with Open Beelden.
A researcher who identifies the tools they need for a particular analysis — drawn
from entries in the SSHOC-NL Knowledge Graph — can have a SANE environment
automatically provisioned with exactly those tools, with the Open Beelden dataset
pre-loaded by the DAB. This removes the manual dataset acquisition step from the
researcher's workflow entirely: the researcher selects tools, the DAB downloads
the data, the SANE environment is provisioned. The SSHOC-NL Knowledge Graph
becomes part of the access control and provisioning chain — answering not just
*can this researcher access this data* but *what research environment do they need
to work with it*, automatically rather than by manual configuration.

### The applied user scenarios

The HAICu Deep Journalism Lab — led by NISV within the HAICu programme — is
developing the first end-to-end user scenario for the agentic architecture:
a journalist or researcher exploring how migration has been portrayed in Dutch
television, contrasted with personal testimonies from oral history collections.
This scenario spans broadcast material (Sound & Vision) and oral history
(in collaboration with DANS), with AI supporting cross-media retrieval,
contrast, and narrative construction.

This scenario is the human evaluation that the agent layer currently lacks.
Rather than depending on what the Deep Journalism Lab researchers choose to do
— which may go in a journalistic rather than a research direction — the
evaluation framework should be designed proactively: a curated set of questions
on Open Beelden and the television news collection, structured by type and
difficulty, built in the same way the documentation knowledge base evaluation
was built. The Deep Journalism Lab is a valuable source of authentic questions,
but it should supplement a proactively designed evaluation set rather than
replace it.

The scenario also has a funding implication worth naming. The Deep Journalism
Lab has no dedicated development budget for the infrastructure work the scenario
requires — broadcast data pipeline, oral history integration, interactive
storytelling output. A dedicated project building on CLARIAH infrastructure
and incorporating Media Suite broadcast data, Oral History (in collaboration
with DANS), and interactive storytelling capabilities, would be the natural
vehicle. The white paper's vision provides the architectural frame for exactly
that kind of project proposal.

### The social media layer

The Macroscope project is building the Netherlands Media Corpus: a multi-modal, temporally structured
corpus connecting broadcast (Sound & Vision), print (KB newspapers), and social
media (Twi-XL and others) into a unified research resource. For the Media Suite
team, the CLARIAH contribution to Macroscope is concrete: a queryable AV layer
for the Netherlands Media Corpus, exposed via MCP, with an evaluation framework.
This is not "AI cross-media analysis" in the abstract — it is a dataset agent
that contributes the broadcast and audiovisual dimension to a federated
cross-media corpus that other CLARIAH partners contribute to in parallel.

This framing also makes the legal constraints more legible. Social media data
subject to platform terms of service and AVG privacy rules cannot be queried
openly. The Data Access Broker and SANE trusted environment are not optional
add-ons for the Macroscope corpus — they are the only compliant mechanism by
which an agent can query sensitive social media data on behalf of a researcher.
Macroscope is the first production test of whether DAB/SANE actually works as
the agent's access control mechanism at scale.

At the CLARIAH level, the Netherlands Media Corpus is the multi-source corpus
that a CLARIAH coordinating agent queries when a researcher asks a cross-media
question — the kind described in Section 5's federation scenario. At the Media
Suite level, the deliverable is the AV component of that corpus: queryable,
MCP-callable, evaluated.

### What is not yet connected

Three gaps are worth naming explicitly, because they represent coordination
work that does not yet have a clear owner.

**A shared evaluation framework.** The agent layer, the documentation knowledge
base, and the future dataset agents all need evaluation, but evaluation is being
developed separately in each context. Someone needs to own the question of what
"working well" means across the whole system — building the test sets, running
the benchmarks, and reporting the results publicly. Concretely, this is the
work of a Media Suite analyst or data scientist with domain knowledge of the
collections and the research questions, working closely with researchers to
extend and validate the evaluation set over time.

**MCP server coordination.** The agent layer is building an MCP server. The
SPARQL endpoint, the Elasticsearch search, the NDE register query, the access
control layer, the visual similarity index — all of these need MCP wrappers.
Given a small team, the right approach is sequential and disciplined: one MCP
server at a time, built to a shared standard, evaluated before moving to the
next. This is not a reason for delay — the first server (the archive query
tools currently in development) is already underway. It is a reason to resist
the temptation to build parallel wrappers per project, and to bring in people
from across the institute — on the data, legal, and rights dimensions — who
need to be involved for each capability to work correctly.

**The Open Beelden ASR completion.** Having ASR transcripts for all Open Beelden
content is technically feasible — the pipeline exists. The question is one of
prioritisation and resource allocation: who coordinates running it across the
full collection, including the non-B&G sub-collections (Natuurbeelden, VPRO, EYE,
Yad Vashem), and by when. This needs a named owner and a delivery date before
the dataset agent can be fully operational.

### The summary argument

The current project portfolio is building the agentic architecture from multiple
directions simultaneously. The agent layer from the AI experimentation work.
The access control layer from the national data flow work. The knowledge graph
from INFINITY. The first dataset agent from the Open Beelden integration. The
applied user scenario from the Deep Journalism Lab. None of these projects was
designed with the explicit goal of building an agentic architecture — they were
designed to solve specific, funded research problems. But the architecture
described in this document is what they converge on when their outputs are
connected.

What is missing is not ambition and not technical capability — though the team
is currently under-resourced relative to the scope of what is being built, and
making that case is part of what this document is intended to support. What is
missing above all is the explicit frame that names what the projects have in
common and the coordination that ensures their outputs are compatible. This
white paper is that frame. The coordination, and the resourcing, is what comes
next.
## Section 8 — Roadmap

The roadmap for this work is intended to be maintained as a living document
in this paper's accompanying GitHub repository, with detailed phase
descriptions, individual checklist items, and a learning log that records what
changed and why. This section provides the higher-level view: the phased
structure, the key decision points, and the gates that need to be passed before
each phase can credibly begin.

*For readers returning to this section directly: the dataset agent concept —
a well-instrumented, independently deployable, MCP-callable agent for a single
dataset (Figure 4) — was introduced in Section 5. The registry chain each
dataset must complete (Figure 2) — NISV to NDE to Media Suite to DS4CH — was
described in Section 5 and grounded in the Open Beelden case in Section 6.
The three-layer architecture (Figure 1) — infrastructure assets, MCP tools,
agent reasoning loop — is what each phase extends. The roadmap adds one
dataset agent per phase, with gates requiring evaluation evidence before the
next phase begins.*

The roadmap is organised around the dataset-by-dataset expansion model: each
phase adds a new dataset agent, with evaluation evidence from the previous
phase informing the design of the next. This is not the only possible approach
— a broader parallel build would be faster on paper — but it is the approach
that is most likely to produce working infrastructure rather than another
partially-completed federation.

### Phase 1 — Documentation knowledge base (complete)

A working RAG pipeline over the Media Suite's documentation — Help pages,
How-to guides, FAQ, tutorials, data stories — with a knowledge graph layer,
dual retrieval paths (semantic search and structured SPARQL queries), and a
structured evaluation framework. Hit@10 of 86–100% on a verified test set of
researcher questions. Publicly deployable as an "Ask Media Suite" assistant.

This phase demonstrated the architecture at small scale and on content the
team controls completely. It produced the evaluation methodology and the
prototype knowledge graph that inform all subsequent phases. It is documented
in the mediasuite-knowledge-base and media-suite-learn-chatbot repositories,
which will be migrated to the beeldengeluid GitHub organisation as part of the
Phase 4 infrastructure transition.

### Phase 2 — Open Beelden dataset agent (current focus)

The full chain completed for one open dataset: NDE registration with correct
DCAT and ODRL metadata, Media Suite index built from harvested linked data,
ASR transcripts covering the full collection, visual similarity built using
CLIP-based embeddings and deployed as a production agent tool, public-facing
interface without login requirement, evaluation framework with published quality
metrics.

The ambition for this phase is to have the Open Beelden dataset agent
working well before any external user testing begins — the evaluation evidence
from this phase is what makes subsequent phases credible.

**Gate for Phase 3:** the Open Beelden chain is complete, the evaluation
framework shows acceptable retrieval quality, and at least one external user
group (journalists, educators, or researchers) has provided structured feedback.

### Phase 3 — Broadcast and television news agent

The first restricted dataset agent: a queryable agent for the television news
collection, or a defined subset of the Sound & Vision broadcast archive, with
access control via SURFconext/SRAM and the Data Access Broker. This phase tests
the access control layer under realistic conditions — real researchers, real
restricted content, real authorisation requirements.

The Deep Journalism Lab scenario — migration across television news and oral
history — is both the natural evaluation context for this phase and a potential
driver of which restricted dataset is prioritised first: the collection most
relevant to the lab's research questions is also the one that benefits most
from early agent-readiness. The Macroscope contribution — the queryable AV
layer for the Netherlands Media Corpus — is the parallel development that feeds
the cross-media capability.

**Gate for Phase 4:** the access control layer works correctly for at least
one restricted dataset, the DAB/SANE pathway is tested with real researchers,
and the MCP server covers both the open and restricted dataset agents with a
shared interface.

### Phase 4 — Prototype integration and first cross-dataset queries

The prototype repositories developed by this paper's author — built as
exploratory proof-of-concept work to validate the architecture described here
— are consolidated into the team's production infrastructure on NISV OpenShift
and beeldengeluid GitHub. This is not a migration of the team's ongoing work,
which is already being built on institutional infrastructure, but the
integration of the prototype's evaluation framework, knowledge graph patterns,
and MCP server designs into the shared codebase. The first cross-dataset queries then become possible: a researcher
question that spans the Open Beelden agent and the television news agent,
synthesised by a coordinating layer.

This phase must happen before external researcher testing at scale. It is also
the phase that tests whether the institutional commitment to the chain holds
when the work moves from prototype to production: registry hygiene, governance
discipline, and the maintenance burden of a system that real researchers depend
on.

**Gate for this phase being the right moment:** a natural trigger is when the
first external researcher group is ready to use the system — not before, because
migration under production load is harder than migration before deployment, but
not after, because running production traffic on prototype infrastructure
outside the institutional stack is not sustainable.

### Phase 5 — Knowledge graph at scale and CLARIAH federation

The INFINITY project provides the production-scale content knowledge graph. The
NDE register, properly populated by phases 2 and 3, is the catalogue a
CLARIAH-level coordinating agent can query. The Media Suite agent becomes one
component in a federated network — the first time the architecture described in
Section 5 is actually tested at scale rather than demonstrated in a prototype.

The SSHOC-NL Knowledge Graph adds the tool layer: researchers browsing available
computational methods, with automatic SANE provisioning and DAB-mediated dataset
download as the delivery mechanism. By this phase, the Open Beelden precedent —
tool selection from the SSHOC-NL KG triggering automatic environment setup — can
be extended to additional NISV collections as they enter the NDE chain.

Whether a CLARIAH coordinating agent actually exists by this point, or whether
it is being built in parallel, is an open question. What is not open is that
the Media Suite's MCP tools need to be ready for it — callable by any agent,
not just the one we build ourselves.

### Phase 6 — Real users, real feedback

Structured evaluation with researchers who were not involved in building the
system. This is where the architecture either proves itself or reveals its
assumptions. The evaluation framework built in phases 1 and 2 is the scaffold;
the researchers are the test. Published results, updated as the system improves,
honest about failure modes. The open question here is not technical — it is
whether the evaluation discipline is maintained when the results are
uncomfortable.

### Phase 7 — The model becomes available

When the dataset agent approach is working for two or three NISV collections,
other institutions will want to use the same model. This is not a separate
project; it is the consequence of doing the earlier work well and documenting it
honestly. The NDE chain, the MCP server design, the evaluation framework — these
become a reference implementation. Whether CLARIAH or NDE takes ownership of
maintaining and promoting that reference is a governance question that phase 7
will force into the open.

### Key dependencies and risks

**The governance commitment.** Every phase depends on the NDE chain being
maintained and extended. If the governance discipline established for Open
Beelden in phase 2 is not sustained — if subsequent datasets bypass the chain,
if NDE registration slips back to being optional — the federated architecture
fails regardless of the technical quality of the individual components. This
is the risk that has caused previous federation attempts to fail, and it is
the risk that requires active management, not just technical implementation.

**The resourcing gap.** The team is currently under-resourced relative to the
scope of what is being built across multiple funded projects simultaneously.
The evaluation framework, the MCP server coordination, the visual similarity
build, the Open Beelden ASR completion — each of these needs sustained attention from
someone with the right combination of technical and domain knowledge. The
white paper is partly intended to make this case: the architectural vision is
credible and the project portfolio is aligned, but the coordination and
evaluation work requires investment that is not fully covered by current
project budgets.

**Prototype integration timing.** Consolidating the prototype work into the
team's production codebase (Phase 4) should happen as soon as the Open Beelden
evaluation evidence is strong enough to guide the design choices — not before,
to avoid integrating something that needs further iteration, and not long after,
to avoid the prototype diverging from the production direction.

**The visual similarity gap.** The VisXP project established visual similarity
as technically feasible for archival AV content, but the prototype is no longer
maintained. The decision to build CLIP-based visual similarity into the Open
Beelden agent — using current models available via standard model hubs — needs
to be made early in phase 2, not deferred to phase 3. If the Open Beelden
dataset agent launches without visual similarity, it demonstrates a diminished
version of the architecture's potential.

### This roadmap is a living document

The roadmap described here, and maintained in detail in `ROADMAP.md`, will
change as the work progresses. What we learn from the Open Beelden evaluation
will change how we approach the television news agent. What we learn from the
Deep Journalism Lab will change how we design the evaluation framework. What
we learn from the NISV migration will change what we recommend to other
institutions.

This is the epistemically honest position: the architecture is right at the
level described in this document, but the implementation details will be
revised in the light of evidence. The learning log in `ROADMAP.md` records
what changed and why. The version history of this document records how the
vision itself evolves.

The goal is not to produce a document that is correct once and then maintained
forever unchanged. It is to produce a document that is honest about what is
known, clear about what is uncertain, and updated as the uncertainty resolves.
## Section 9 — Priorities, next steps, and what this enables

*For readers returning to this section directly: the three priorities below
are direct consequences of the architectural commitments made earlier in this
document. Priority 1 — completing the Open Beelden chain — delivers the
dataset agent proving ground described in Section 6, including the full
registry chain (Figure 2) and the five-component dataset agent structure
(Figure 4). Priority 2 — coordinating the MCP server — builds the connective
tool layer shown in Figure 1 (Section 5). Priority 3 — the evaluation
framework — makes the responsible AI design principles from Section 5
operational rather than aspirational. Section 8 sets out the phased roadmap
within which these priorities sit.*

### The three things that matter most right now

Across the sections of this document, several priorities emerge. Not everything
can happen at once, and the team is small. These three are the ones where
decisions made now have the most consequence for everything that follows.

**1. Complete the Open Beelden chain — properly.**
This is the work that makes everything else credible. NDE registration with
correct DCAT and ODRL metadata. ASR transcripts across the full collection,
with a named owner and a delivery date. Visual similarity built into the Open
Beelden agent using CLIP-based embeddings — a decision that needs to be made
now, not deferred. A public-facing interface with a published evaluation framework.
This is not one project among many; it is the proof of concept that the
entire architecture rests on.

**2. Coordinate the MCP server — as shared infrastructure.**
The mediasuite-agent MCP server is being built. The SPARQL endpoint, the
Elasticsearch search, the NDE register query, the access control layer, and
the visual similarity index all need MCP wrappers. The discipline required
is sequential and deliberate: one capability at a time, built to a shared
standard, evaluated before the next. The coordination across projects and
teams — ensuring each wrapper is built once and shared rather than
reimplemented — needs active ownership. This is an architectural governance
task as much as a technical one.

**3. Build the evaluation framework as a public benchmark.**
Every capability added to the system needs a test set, a quality metric, and
a published result. Not after deployment — from the start. The model is the
ASR benchmarking at opensource-spraakherkenning-nl.github.io: transparent,
updated as the system improves, honest about failure modes as well as
strengths. The evaluation framework built for the documentation knowledge base
prototype is the starting point. Extending it to cover Open Beelden content,
then restricted collections, then cross-dataset queries, requires sustained
attention from someone with both domain knowledge and evaluation methodology
skills. This role needs to be filled.

### What the team needs to do

These priorities require trade-offs. Not everything currently in the backlog
can proceed at the same pace. The evaluation framework and MCP coordination are
coordination investments that pay dividends across all projects — which is
precisely why they justify deprioritising some project-specific feature work to
make room. Naming that trade-off explicitly is part of what makes the priorities
credible.

**Immediately:**
- Confirm a named owner for the Open Beelden ASR completion, with a delivery
  date, covering all sub-collections including Natuurbeelden, VPRO, EYE, and
  Yad Vashem
- Make the visual similarity decision: implement CLIP-based visual similarity
  for Open Beelden, or explicitly defer with a stated reason
- Agree on the MCP server design standard before additional wrappers are built

**In the next quarter:**
- Complete the Open Beelden NDE registration with correct DCAT and ODRL metadata
- Launch the public-facing Open Beelden agent interface, even in beta, with the
  evaluation framework running alongside it
- Establish the evaluation framework as a shared responsibility — not attached
  to any single project — with results reported publicly

**Over the next year:**
- Use the Open Beelden evaluation evidence to design the television news agent,
  with the Deep Journalism Lab scenario informing which collection is prioritised
- Integrate the prototype repositories into the team's production codebase once
  the design choices from Open Beelden are stable
- Articulate NISV's concrete contribution to INFINITY ahead of the next project
  meeting — using the prototype knowledge graph as evidence

### What this enables beyond the research community

The focus of this document has been the research use case: the historian, the
computational humanities researcher, the digital journalist who needs to
navigate a complex heritage archive. That is the right starting point — it is
the audience the Media Suite was built for and the one that has the clearest
requirements and the most experience with the infrastructure.

But the architecture described here is not specific to research. The MCP
servers, the agent tools, the NDE chain, the evaluation framework — these are
general-purpose infrastructure. What changes between audience types is not the
infrastructure but the interface: the system prompt, the tool priorities, the
response style, the level of provenance detail required.

**Broadcast professionals.** A producer or archivist looking for reusable
historical footage needs fast, reliable rights clearance and high-quality
preview — not a methodological discussion of source criticism. The same agent
tools that tell a researcher "this collection is accessible under SURFconext
with these restrictions" can tell a broadcast professional "this footage is
available for reuse under this license, here is the contact for licensing." The
archive query tool is the same; the response framing is different. As NISV
builds AI-assisted services for the broadcast market, the Media Suite's
agent infrastructure is the natural foundation — not a separate system to build
from scratch.

**Educators.** A teacher building a lesson on Dutch media history needs
age-appropriate framing, curriculum alignment, and confidence that the content
is accessible without institutional login. Open Beelden, with its CC licensing
and public access, is already the right dataset. An educator-facing agent
interface — a different system prompt, a different response format, the same
underlying tools — is a modest extension of what the research-facing interface
builds. The "Data als Kans" workshops and the Media Suite's existing tutorial
infrastructure are the natural community for a pilot.

**The general public.** The citizen who is curious about Dutch media history,
or who wants to find historical footage of an event they remember, or who is
exploring their family's cultural background through archival material — this
audience has been the stated aspiration of Open Beelden since its founding.
An AI assistant that can answer "what footage exists of the 1953 flooding" or
"show me how Dutch television covered the moon landing" is a qualitatively
different kind of public access than a search box. It is also, for the first
time, genuinely achievable without a specialist interface or institutional
expertise.

The important point is that building these audience-specific interfaces does
not require rebuilding the underlying infrastructure for each one. The MCP
servers, the evaluation framework, the NDE chain — these are built once, in
the research context where the requirements are best understood, and then
reused across audiences. This is the argument for investing in the
infrastructure properly: not because research is the only audience that
matters, but because research is the right starting point for infrastructure
that ultimately serves everyone.

### A final note on the prototype

The architectural thinking in this document is grounded in practical prototype
work: a working AI retrieval system over the Media Suite's documentation, with
a knowledge graph layer, dual retrieval paths, a structured evaluation
framework, and a chat interface deployable on the community site. It was built
by this paper's author as exploratory proof-of-concept work — undertaken to
connect the dots through direct experience rather than through reading about it,
and separate from any specific funded project deliverable. The two repositories
involved are publicly accessible and will be integrated into the team's
institutional infrastructure as part of Phase 4.

It produced lessons that could not have been anticipated from the architecture
documents alone. Retrieval quality is only as good as the test set used to
measure it, and the test set is only as good as the domain knowledge used to
construct it. The governance failures that have plagued linked data
federation are real, not theoretical, and naming them honestly is the
prerequisite for doing better. The MCP protocol adds a tool-call layer above
existing standards — SPARQL, IIIF, REST APIs — that makes agent-mediated
access tractable: not by replacing those standards, but by giving AI agents a
consistent, discoverable interface to invoke them. And the gap between a
working prototype and production infrastructure is primarily a governance and
resourcing gap, not a technical one.

These lessons are in the white paper because they are the most useful things
it can offer to people who will build the next stages. The architecture is
right. The path is clear. The work is already underway. What remains is the
institutional commitment to see it through — dataset by dataset, evaluation
by evaluation, chain link by chain link — until the federation that the
heritage sector has been promising itself for twenty years finally materialises,
one working system at a time.
## Appendix — Furhat Research Platform: Human-Archive Interaction

*This appendix documents a separate research initiative, distinct from the main
Media Suite agentic roadmap. It is included here as a reference for future
development and potential student projects.*

### The concept

A Furhat social robot connected to the Media Suite agent infrastructure,
paired with a large display screen, creates an experimental platform for
studying human interaction with AI-assisted archival access. The system
works as follows: a user speaks to the robot ("what can I find about the
1953 floods?"), the robot transcribes via Whisper, the Media Suite agent
searches the archive, relevant video footage plays fullscreen on the screen
behind the robot, and the robot responds verbally with contextual information.
The user can then ask follow-up questions about the playing video ("what city
is mentioned here?"), triggering entity extraction from the ASR transcript and
new searches. The system is multimodal, conversational, and grounded in real
archival content.

### Why this is now buildable

The technical gap that made this impossible before the AI revolution was the
natural language interface, semantic search, and video QA layer. The archive
infrastructure and domain expertise were always present at Sound and Vision.
Those gaps are now closed:

- **Natural language interface** — the existing Media Suite agent handles
  conversational queries in Dutch and English
- **Semantic search with timecodes** — Elasticsearch index with ASR transcripts
  at sentence and word level; fragment-level retrieval already works
- **Video QA** — ASR transcripts cover spoken content; CLIP embeddings cover
  visual content; vision models (GPT-4o, Claude) handle frame-level visual QA
- **Entity extraction for follow-up** — LLM-based NER over the current video
  transcript enables "find more footage about this city/person/event"
- **Display controller** — Python + VLC, triggered via local HTTP from the agent

The visual similarity groundwork already done at Sound and Vision through the
VisXP project — shot-level embeddings, similarity search pipeline — makes the
CLIP-based implementation significantly easier than starting from scratch.

### Technical architecture

```
Furhat (microphone + speaker + animated face)
    ↓ speech
Whisper ASR (server-side, Dutch-optimised)
    ↓ text query
Media Suite Agent
    ├── search_archive(query)     → items + timecodes from Elasticsearch
    ├── play_video(id, timecode)  → sends to display controller
    ├── ask_about_video(id, q)    → ASR transcript + vision model
    └── find_related(entity)      → follow-up search by name/place/event
    ↓
Display Controller (VLC via HTTP)
    ↓ fullscreen video on screen behind Furhat
```

### Incremental build milestones

**Weekend 1:** Search and play loop. Furhat listens → Whisper transcribes →
agent searches → video plays. No QA yet. Already a compelling demo.

**Weekend 2:** Video content QA. While video plays, user asks "what is this
about?" → agent retrieves ASR transcript at current timecode → Furhat summarises.

**Weekend 3:** Entity extraction and follow-up. "It mentions Zeeland" → NER
over transcript → new search → related footage plays. Conversational loop works.

**Weekend 4+:** Visual QA. Frame extraction via ffmpeg, CLIP similarity, vision
model for "what do you see in this scene?" questions.

### Research dimensions

The system is not only a demo — it is a research platform. The combination
of a social robot, a deep archival knowledge base, and real historical video
creates research opportunities that most HRI studies lack: a genuine, rich,
historically significant knowledge domain rather than a toy scenario.

#### Research questions for adult users

- Does access to archival video change the questions people ask compared to
  text-only access? (information-seeking behaviour)
- How does the robot's spoken response interact with simultaneous video —
  do people attend to audio or video when both are present?
- What repair strategies do users employ when the system misunderstands?
  (dialogue breakdown and recovery)
- How do users calibrate their expectations of the system over a conversation —
  do they develop an accurate mental model of what it knows?

#### Research questions for children

- What vocabulary do children use to query archival content, and how does it
  differ from adult vocabulary? (directly relevant to designing child-facing
  interfaces)
- Does the embodied robot interface lower the threshold for engagement with
  historical content compared to a screen-only interface?
- How do children handle uncertainty in robot responses — do they accept,
  challenge, or ignore incorrect information?

#### HRI methodology questions

- Is the Wizard of Oz paradigm still useful when the underlying AI is
  genuinely capable? Or does partial autonomy create new methodological
  challenges?
- How do users calibrate trust in a system that is sometimes right and
  sometimes wrong?

### Related research context

**Furhat as research platform.** Furhat has been used extensively for HRI
research at KTH Stockholm and elsewhere: museum guide robots, interview robots,
social skill training, second language learning. The robot's design —
projectable face, directional audio, gaze control — was built for HRI research.

**Situated dialogue and grounded language interaction.** The question of how
what a person sees affects what they ask, and how a system should respond to
shared visual context, is an active research area. Key references: BabyTalk
project (Edinburgh) on systems describing shared visual scenes; MMDialog dataset;
Das et al. (2017) on visual dialogue as a multi-turn conversational task.

**Archive + robot interaction.** This specific combination — social robot as
interface to a deep audiovisual archive, with dynamic video driven by
conversation — is genuinely novel as a research object. Most Furhat deployments
use shallow knowledge domains. The Media Suite provides what most HRI research
lacks: a real, historically significant knowledge base.

**Children and heritage content.** The CHESS project (EU, 2013–2016) explored
personalised museum experiences including child audiences, but without social
robots and without dynamic video. Children interacting with a social robot and
archival footage is essentially unstudied.

### Relevant research groups for collaboration

- **Furhat Robotics / KTH** — research collaboration programme exists
- **CWI Amsterdam** — multimedia interaction, long history with NISV on AV research
- **TU Delft / TU Eindhoven** — active HRI groups, social robots in public spaces
- **UvA / CLARIAH community** — Media Suite research community; HRI is a natural extension
- **TNO** — human-AI teaming in information-rich environments

### Sound and Vision assets that enable this

- Furhat robot (available at NISV)
- Media Suite agent infrastructure (in development)
- ASR pipeline with timecoded transcripts (operational)
- Visual similarity groundwork from VisXP project (prototype stage; CLIP-based production implementation to follow)
- Educational programme infrastructure and school visit network (for child studies)
- Open Beelden as the ideal first dataset: open, CC-licensed, visually rich,
  historically significant (1953 floods coverage is particularly strong)

### The most tractable first study

A think-aloud study with 10–15 adult researchers using the system to explore
the 1953 floods collection. Questions: what do they ask, what do they not ask,
where does the system fail, and how do they respond to failure. Small qualitative
study, doable without a large ethics review, produces concrete findings about
information-seeking behaviour with archival AI systems. No comparable study
has been published.

The children study is more ambitious but potentially higher impact — and Sound
and Vision's existing educational infrastructure makes recruitment
straightforward.

### Suitable as a student project

This platform is well suited to a master's thesis or research internship project,
particularly combining:

- **Computer Science / AI** — building the technical integration (Furhat SDK,
  agent connection, display controller, video QA)
- **Human-Computer Interaction** — designing and running the user studies
- **Media Studies / Digital Humanities** — interpreting findings in the context
  of archival access and historical engagement

A joint supervision between Sound and Vision and a university HRI or HCI group
would be the natural structure. The student arrives at a working technical
foundation; the research contribution is the study design, execution, and
analysis.

### Status

Concept phase. No implementation started. Depends on the Open Beelden dataset
agent (Phase 2 of the main roadmap) being sufficiently stable to serve as the
knowledge base for the demo. Estimated earliest realistic start: Q4 2026.

## Revision history

| Version | Date | Changes |
|---|---|---|
| 0.1.6 | May 2026 | Added Furhat Research Platform appendix — concept documentation for human-archive interaction research initiative. |
| 0.1.5 | May 2026 | Sections 7, 8, 9: precision and consistency revision — orientation reminder updated; prototype/personal-project language clarified for external readers throughout Phases 1, 4, and final note; ROADMAP.md reference softened; MCP/federation claim narrowed; "What the team needs to do" structure fixed. Issue [#6](https://github.com/roelandordelman/mediasuite-whitepaper/issues/6). |
| 0.1.4 | May 2026 | Visual similarity: VisXP framing updated throughout to acknowledge prototype is superseded, CLIP-based embeddings positioned as path forward. SSHOC-NL Knowledge Graph added to Section 7 and Phase 5. Issues [#1](https://github.com/roelandordelman/mediasuite-whitepaper/issues/1), [#2](https://github.com/roelandordelman/mediasuite-whitepaper/issues/2). |
| 0.1.3 | May 2026 | Section 7: removed internal filenames and tool identifiers; fixed table column header; added fragment citation subsection. Issue [#4](https://github.com/roelandordelman/mediasuite-whitepaper/issues/4). |
| 0.1.2 | May 2026 | Rephrased research question (three occurrences); reframed CKAN registry history in Sections 5 and 6. Issues [#3](https://github.com/roelandordelman/mediasuite-whitepaper/issues/3), [#5](https://github.com/roelandordelman/mediasuite-whitepaper/issues/5). |
| 0.1.1 | May 2026 | Added four architectural diagrams (Figures 1–4); added orientation reminders at the opening of Sections 7, 8, and 9. Issue [#7](https://github.com/roelandordelman/mediasuite-whitepaper/issues/7). |
| 0.1 | May 2026 | Initial draft. Sections 1–9 complete. |

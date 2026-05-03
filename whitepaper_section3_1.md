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
contributes collections to Europeana via an aggregator, but that contribution has
been largely ad hoc, not structurally integrated with Media Suite infrastructure.[ro: this should be reframed or downplayed. Maybe say that NISV contributes but that the current focus is a chance for organising this more structural or sustainable via the media suite infrastructure]
The European Collaborative Cloud for Cultural Heritage (ECCCH), being built
through the ECHOES consortium, complements the data space by providing the
collaborative research environment where heritage data gets enriched, analysed,
and transformed — the layer where AI-assisted research actually happens.

The chain is clear: DERA-compliant NISV data → NDE Dataset Register → DS4CH/
Europeana → ECCCH for research.[RO: maybe write out instead of "->"?] An AI agent operating at the Media Suite level
sits at the bottom of that chain. But what it does — making collections queryable
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
characterised the Media Suite's development from the beginning. [RO: I think it is important to mention here that for an institute as NISV it is important to be prudent with the data we have and not let it leak to others and loose its primary gold]

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

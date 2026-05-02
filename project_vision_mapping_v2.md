# Current Project Work and the Agentic Vision
## How the pieces fit together

*This document maps active and upcoming project work at the Media Suite team
to the architectural vision described in the white paper. It is intended for
the team and project partners to show that the vision is not a proposal for
future work — it is a description of what is already being built simultaneously
from multiple directions.*

---

## The core insight

Building an AI agent that can genuinely help researchers access audiovisual
heritage requires five things:

1. **Structured, queryable data** — not just files, but data with metadata,
   rights information, and persistent identifiers that a machine can reason about
2. **An access control layer** — policy-based, auditable, rights-aware;
   so the agent knows what it can access on behalf of which user and under what conditions
3. **A dataset catalogue** — so the agent knows what collections exist nationally,
   what they contain, and how to reach them
4. **An agent layer** — the orchestration logic, retrieval tools, and language
   model that turn a researcher's question into a structured query and a grounded answer
5. **Applied use cases with real users** — to evaluate whether the system
   actually helps researchers do research

Every one of these five components is in active development in the current
project portfolio. The table below shows where.

---

## The mapping

| Vision component | What it does | Project / Task | Status |
|---|---|---|---|
| Agent layer | Orchestrates retrieval, calls tools, generates answers | 2026-004 (RAG / Ask AI) | In progress — alpha Q2 2026 |
| MCP protocol | Standard interface connecting agent to tools | 2026-004 (MCP Server) | In development |
| Embeddings & vector search | Semantic retrieval over collection content | 2026-004 (Embeddings API + Milvus) | ~90% complete |
| Access control layer | Policy-based access to restricted data | 2026-003 (DAB / AAI / SANE) | In review |
| Rights metadata | Machine-readable rights expressions | 2026-003 (ODRL rules) + 2026-012 | In review |
| Dataset catalogue | National registry of what exists and how to access it | 2026-003 + 2026-012 (NDE register) | In review |
| First dataset agent | Open Beelden as fully queryable, open, NDE-registered agent | 2026-012 (Open Beelden Integration) | Draft — hard deadline Apr 2027 |
| Cross-dataset queries | Tracing the same event across multiple collections | 2026-010 (Transmedial News) | Pipeline |
| Fragment citation | Stable, citable temporal references to AV content | 2026-011 + 2026-003 (IIIF for AV) | Wishlist / funding lead |
| Knowledge graph | Structured layer for precise relational queries | INFINITY (Horizon Europe) | Year 1 prep 2026 |
| AI enrichment tools | Structured claims, speaker labels, face recognition | 2026-006 (FactRank) + HAICu | In progress |
| Applied user scenario | End-to-end researcher evaluation with real use case | 2026-013 (Deep Journalism Lab) | In review |
| Social media layer | Comparative cross-media corpus alongside AV | 2026-005 (Social Media Integration) | Draft |
| Public-facing agent | Open access, no login required | 2026-012 (Open Beelden, open dataset) | Draft |

---

## Component by component

### The agent layer — Task 2026-004 (RAG / Ask AI)

This is the most direct implementation of the vision and it is already well
underway. The mediasuite-agent repository contains:

- An **Embeddings API** that accepts text and returns dense vector embeddings —
  the component that converts researcher questions and collection content into
  comparable representations. Testing on OpenShift, approximately 90% complete.
- **Milvus** as the vector database — open source, running on OpenShift,
  scalable to the full archive.
- An **MCP Server** with agent tools already defined: `embed_text`,
  `query_archive`, `query_milvus`. This is the protocol layer that makes
  each retrieval capability callable by the agent as a tool.
- An **Agent API** with the main agent logic (`graph.py`) and FastAPI app —
  the orchestration layer that decides which tools to call and in what order.

The embedding model chosen — `multilingual-e5-large-instruct` — handles Dutch
and English, which matters for a corpus that spans decades of Dutch-language
broadcasting queried by an international research community.

**Frozen Sets** are confirmed in scope: user-defined, topic-scoped subsets of
Media Suite collections that can be embedded and queried independently. This is
the first form of researcher-defined dataset agents — a researcher creates a
corpus, the system makes it queryable via RAG.

The alpha prototype is expected by end of Q2 2026, suitable for initial user
testing. A significant gap identified in the task plan is the absence of a
human-verified evaluation set. Rather than depending on what the Deep Journalism
Lab researchers choose to do — which may go in a journalistic rather than
research direction — the preferred approach is to design the evaluation set
proactively: a curated corpus with a structured variety of example questions,
in the same way the help chatbot evaluation was built. This can be extended
later through structured experiments that elicit questions from real users.
The goal is a publicly visible quality benchmark — analogous to the ASR
benchmarking published at opensource-spraakherkenning-nl.github.io — so that
quality is transparent and comparable over time.

**What this means for the vision:** the agent layer is being built on production
infrastructure (OpenShift, Milvus) with the right protocol (MCP) and a
multilingual embedding model suited to the corpus. This is not a prototype on
a laptop — it is the production system. The help chatbot prototype was built
on the documentation corpus as a personal exercise to understand the same
architecture that the team is building for collection data. The white paper's
vision and the team's current implementation are the same thing, described at
different levels of abstraction.

---

### The access control layer — Task 2026-003 (National Data Flow: DAB / AAI / IIIF)

One of the hardest — and most persistently confusing — problems in building AI
agents for heritage data is access control. It is worth stating the problem
clearly, because a lot of confusion in this space comes from conflating three
distinct layers that need to be handled separately.

**Layer 1 — Dataset discovery**: an agent needs to know what datasets exist,
what they contain, and what their rights status is. This is the NDE register
layer: DCAT descriptions, queryable via SPARQL, with ODRL rights expressions
describing what is permitted.

**Layer 2 — Object-level metadata access**: knowing a dataset exists is not
the same as being able to harvest the metadata of individual objects within
it. This is typically handled via OAI-PMH, a SPARQL endpoint over the
collection, or a download distribution. The NDE register points to these
endpoints; the agent follows the pointer.

**Layer 3 — Object access**: accessing the objects themselves — watching a
video, reading a document, hearing audio — requires a streaming or viewing
facility that enforces the rights constraints. For NISV this means either
the Media Suite (for researchers with a SURFconext login) or a public portal
for openly licensed content. The Data Access Broker handles the controlled
transfer of data to trusted environments (SANE for quantitative research,
Media Suite for qualitative research).

ODRL is the machine-readable rights expression format that spans all three
layers: it describes what an agent is permitted to do with a dataset —
query but not download, display but not redistribute, access only within a
trusted environment. Currently ODRL expertise at NISV is at the conceptual
level; implementation is not yet standard practice. Making ODRL a standard
part of every dataset registration — starting with Open Beelden — is both
a practical requirement for the agentic architecture and an opportunity to
lead by example nationally.

The Data Access Broker (DAB), developed with SURF, handles the controlled
transfer of restricted data to trusted research environments. The pilot
workflow is a precise description of controlled agentic data access:

1. A dataset is registered in the NDE Data Registry with ODRL rights rules and a persistent identifier
2. A user (or agent acting on behalf of a user) requests access via the DAB
3. The DAB verifies authorisation via SURFconext/SRAM
4. The DAB transfers the data to the appropriate trusted environment — SANE for quantitative research, or the Media Suite for qualitative research
5. The agent queries the data within that environment — without ever exposing the source directly

ODRL (Open Digital Rights Language) is the machine-readable rights expression
format. An agent that can read ODRL rules knows programmatically what it is
allowed to do with a given dataset — query but not download, display but not
redistribute, access only within a trusted environment. This is rights awareness
built into the infrastructure, not bolted on. ODRL implementation is not yet
standard practice at NISV — the concept is understood but operational
implementation is a near-term priority, and making it a standard part of every
NDE registration starting with Open Beelden is a concrete first step.

The Authentication and Authorisation Infrastructure (AAI) via SURFconext and
SRAM provides the identity layer. Currently authorisation is binary — SURFconext
login confirms that a user is a researcher affiliated with a Dutch institution,
but does not yet identify which institution or what that entitles them to access
specifically. SRAM adds role and group-based authorisation on top of this,
enabling more granular access control as the infrastructure matures.

**IIIF for video** — also in this task — extends the interoperability standard
to audiovisual material. The meeting notes from Jesse's session (April 2026)
describe the proxy approach for fragment access: a proxy that handles media
fragment parameters and returns only the bytes of the requested segment,
enforcing that the surrounding content cannot be easily extracted. This is the
technical foundation for fragment citation — stable, citable references to
specific moments in an audiovisual item.

**What this means for the vision:** the access control layer the agentic
architecture needs is being built in SSHOC-NL right now. DAB is the
policy enforcement tool. ODRL is the rights metadata format. SANE is the
trusted execution environment for quantitative research; the Media Suite
serves the same role for qualitative research. AAI is the identity layer.
These are not future components — they are infrastructure decisions being
made and implemented this year, and they are exactly the right decisions
for an agentic system.

---

### The dataset catalogue — NDE Data Registry across multiple tasks

The NDE (Netwerk Digitaal Erfgoed) Data Registry is, from the agentic
perspective, the catalogue of what exists in Dutch digital heritage and how
to access it. An agent that can query the NDE register knows:

- What datasets exist (DCAT dataset descriptions)
- What their rights and access conditions are (ODRL)
- What their distribution formats are (downloadable distributions, SPARQL endpoints, APIs)
- How to request access (DAB endpoint)

Tasks 2026-003, 2026-010, and 2026-012 all involve NDE registration of
different datasets. Together they are building the national dataset catalogue
that makes cross-collection agent queries possible. The transmedial news use
case (task 2026-010) is the first concrete demonstration: an agent that can
find the same news event in NISV news broadcasts, KB newspapers, and NHA press
photographs, because all three are registered in the same catalogue with
compatible metadata.

The connection to the EU level (ECHOES/DS4CH connecting the NDE registry to
the European data catalog) means the same catalogue query that works nationally
can eventually be extended to European collections — without any change to
the agent architecture, because the catalogue interface is standardised.

**What this means for the vision:** the NDE register is not just a data
management tool — it is the agent's map of the national digital heritage
landscape. Crucially, it is already queryable today via a public SPARQL
endpoint (`https://datasetregister.netwerkdigitaalerfgoed.nl/sparql`),
with no authentication required. An agent tool that queries the register
is not a future capability — it can be built and tested right now. Every
dataset registered there becomes potentially queryable by the agent. Every
ODRL rule registered there becomes a constraint the agent can respect
automatically. The work in tasks 2026-003 and 2026-012 is about enriching
what is registered — better rights metadata, ODRL expressions, richer
distribution descriptions — not about building the query infrastructure
from scratch. NDE also maintains a `dataset-knowledge-graph` project that
generates an inferred knowledge graph from register contents with quality
scores, which is directly relevant to the INFINITY knowledge graph work.

---

### The first dataset agent — Task 2026-012 (Open Beelden Integration)

Open Beelden is being phased out as a standalone platform by April 2027.
The migration work — publishing as Linked Data via data.beeldengeluid.nl,
registering in the NDE register, indexing into the Media Suite for open access
— is also the definition of the first complete dataset agent:

- **Open data, no login required** — the agent can serve any researcher or
  public user without access control complexity
- **Linked Data with SPARQL endpoint** — already exists in the B&G LOD
  endpoint; structured queries work today
- **NDE registered** — the catalogue entry exists; distribution downloads
  are the planned access method
- **ASR transcripts possible** — the speech layer that makes content
  queryable by what was said, not just how it was catalogued
- **IIIF manifest support** — fragment access via the Universal Viewer and
  compatible players
- **Multiple sub-collections** — B&G set plus Natuurbeelden, VPRO, EYE,
  Yad Vashem; each a separate NDE-registered distribution, each individually
  queryable, together demonstrating the dataset-by-dataset expansion model

The hard deadline (April 2027) turns this from an architectural thought
experiment into an operational requirement. Open Beelden must work in the
Media Suite — and since the Media Suite is not responsible for delivering
anything before that deadline, there is full freedom to build it right:
as a properly instrumented dataset agent with all the components above,
rather than a simple indexed collection bolted in at the last minute.

The open access angle has an additional significance: an Open Beelden dataset
agent is the first AI-powered heritage tool that can be publicly accessible
without institutional login. This opens the audience beyond university-affiliated
researchers to journalists, educators, and the general public — and provides
a clean testbed for public-facing evaluation before tackling restricted
collections. It also offers a pointed contrast with more conventional portal
approaches: the Media Suite can demonstrate that standards compliance,
linked data publication, and AI-assisted access can be achieved with a lean,
open, researcher-first approach — making the technical and ethical case for
this architecture in a concrete, publicly visible way.
---

### The knowledge graph — INFINITY (Horizon Europe)

INFINITY is a Horizon Europe project focused on multidimensional knowledge graph
development for cultural heritage data. The alignment with the white paper's vision
is direct: the knowledge graph layer described in the vision as the structured
complement to vector search is what INFINITY is building at production scale.

The 2026 work packages are particularly relevant:

- **WP5 — Use Case Requirements and Design** (€35k): defining what the knowledge
  graph needs to represent and what queries it needs to answer — exactly the
  entity model and query catalogue work already prototyped in the hobby project
- **WP8 — Ethics and Design** (€40k): responsible AI, explainability, transparency
  — the "grip on AI" concerns addressed from the inside of a production system

The Media Suite already has substantial structured data assets — linked data,
SPARQL endpoints, entity models, query catalogues — that position it as a
strong contributor to INFINITY rather than a passive participant. Articulating
this contribution concretely, ahead of the next project meeting, is a priority:
what specific data, tools, and expertise does the Media Suite bring, and how
does the prototype's knowledge graph align with INFINITY's design goals?
This white paper is part of that articulation.

The prototype's knowledge graph (1057 triples, 11 SPARQL query templates,
entity-URI filter connecting graph facts to vector chunks) is a working proof
of concept for what INFINITY will build at scale. The prototype's evaluation
framework — retrieval accuracy, routing determinism, structural query coverage
— provides the kind of concrete benchmark data that WP5 needs for requirements.

**What this means for the vision:** the prototype and INFINITY are in a natural
relationship — prototype proves the concept and identifies the hard problems,
INFINITY builds the production-scale version. This is the right sequencing,
and the timing (INFINITY Year 1 in 2026, prototype evaluation in 2026) makes
it possible for the prototype's findings to directly inform WP5's design decisions.

---

### Applied use cases — Task 2026-013 (Deep Journalism Lab, HAICu)

The Deep Journalism Lab, led by B&G within the HAICu programme, is where the
agentic vision meets real researchers with real questions. The migration and
oral history scenario developed by GBh — analysing how migration has been
portrayed in Dutch television broadcasts across time periods, contrasted with
personal testimonies from oral history collections — is a precise description
of what a cross-media RAG agent should be able to do:

- Retrieve relevant broadcast fragments via semantic search over ASR transcripts
- Retrieve oral history testimonies via semantic search over interview transcripts
- Surface structured facts: which speakers, which time periods, which framings
- Support the journalist in constructing a narrative that connects archive and testimony

This is not a hypothetical use case invented to illustrate the vision — it is
an actual research/journalism scenario being developed by the team, with a
named collection (Sound & Vision broadcasts), a named oral history thread
(Moluccan identity, Mary Hehuat's work), and a named output format (interactive
story, Big Village Story format).

It is also a candidate evaluation scenario for task 2026-004 — but with an
important caveat. The Deep Journalism Lab scenario is driven by what journalists
and researchers want to do, not by what the engineering team needs to test.
Depending on it as the primary evaluation source creates a dependency that may
not resolve in a useful direction. The preferred approach is a parallel,
proactively designed evaluation set — structured questions on Open Beelden
content, built independently — that can be supplemented by what the lab
produces rather than replaced by it.

**What this means for the vision:** the Deep Journalism Lab is where the white
paper's abstract claims about research and journalism assistance meet concrete
users. It is a genuine use case, already funded and scheduled. But realising
it fully — particularly the cross-media broadcast plus oral history scenario
— requires infrastructure investment that does not currently have a budget
home. A dedicated project of approximately €300k, building on CLARIAH
infrastructure and incorporating Media Suite broadcast data, Oral History
work (in collaboration with DANS), and interactive storytelling capabilities,
would be the natural vehicle. The white paper's vision provides the
architectural frame for exactly that kind of project proposal.

---

### The social media layer — Task 2026-005 (Macroscope)

The Netherlands Media Corpus (Macroscope) integrates social media data —
Twitter/X via Twi-XL, potentially Reddit and others — alongside broadcast
and print media for comparative cross-media analysis. From the agentic
perspective, this is the next dataset agent after Open Beelden: a harmonised,
temporally structured, provenance-documented social media corpus that an agent
can query alongside audiovisual collections.

The legal and ethical constraints (AVG, platform terms of service) make the
DAB/SANE trusted environment not optional but required: the agent must access
social media data in a controlled, auditable environment where access can be
granted based on verified researcher identity and institutional affiliation.
The infrastructure being built in task 2026-003 is the prerequisite for this
use case to be possible at all.

The combination — broadcast + print + social media, all queryable in the same
agentic framework — is what "cross-media analysis" has always meant in principle.
The agentic architecture is what makes it practical: a researcher can ask
"how did the framing of this news event differ across television, newspapers,
and social media?" and get a grounded answer drawn from all three corpora,
with source links and provenance.

---

## What is not yet connected

Three gaps are worth naming explicitly, because they represent work the vision
requires that is not yet clearly assigned in the project portfolio:

**1. A shared, proactively designed evaluation framework**
Task 2026-004 identifies the lack of a human-verified evaluation set as a
risk. Rather than depending on what the Deep Journalism Lab researchers choose
to do, the evaluation framework should be designed proactively — a curated
set of questions on Open Beelden content, structured by type and difficulty,
built and maintained by the team in the same way the help chatbot evaluation
was built. Quality results should be published openly and updated as the
system improves — analogous to the ASR benchmarking at
opensource-spraakherkenning-nl.github.io — so that transparency about
system quality is built in from the start, not reported selectively.
Someone needs to own this across the agent layer, the dataset agents,
and the user-facing scenarios.

**2. The Open Beelden ASR question**
Having ASR transcripts for all Open Beelden content is technically feasible —
the pipeline exists and is already indexing the broader archive in Elasticsearch
with timecodes. The question is organisational: who coordinates running the
pipeline across the full Open Beelden set (including the non-B&G sub-collections
— Natuurbeelden, VPRO, EYE, Yad Vashem), and in what timeframe. This needs a
concrete answer and a named owner before the Open Beelden dataset agent can
be fully operational.

**3. The MCP server as shared infrastructure**
Task 2026-004 is building an MCP server for the mediasuite-agent. The
broader vision requires MCP servers for multiple components: the Elasticsearch
search tool, the SPARQL endpoint, the DAB access tool, the NDE registry
catalogue tool, and future dataset agents. These span multiple tasks and
projects. The MCP server design needs to take the bigger picture into account
from the start — each component should be built once and shared, with a
consistent interface, rather than reimplemented per project. This is a
coordination question as much as a technical one, and the CTO role is the
natural place to own it. The white paper is part of building the understanding
needed to ask the right questions of the team.

---

## Summary

The agentic vision is not a new direction for the Media Suite team — it is
the common thread that connects what the team is already doing. What is new
is the explicit naming of that thread, the architectural framing that shows
how the pieces fit together, and the identification of the gaps that need
to be closed for the whole to be more than the sum of its parts.

The white paper is the frame. The projects are the evidence.

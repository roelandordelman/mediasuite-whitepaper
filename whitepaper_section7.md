## Section 7 — The vision is already being built

The architectural vision described in Sections 4 and 5 is sometimes presented
in documents like this as a proposal for future work. This section makes a
different claim: every major component of the architecture is already under
active development, across multiple funded projects, by the same team. The white
paper is not a proposal. It is the frame that connects what the team is already
doing.

The table below maps the five components the architecture requires to the
projects and tasks currently building them. The detail behind each mapping is
in the accompanying project-vision mapping document.[ro: link to the doc?]

| Architecture component | What builds it | Status [ro: I think the status collumn can go] |
|---|---|---|
| Agent layer — embedding, vector retrieval, MCP server, agent orchestration | AI experimentation (SSHOC-NL / Macroscope) | In progress — alpha expected Q2 2026 |
| Access control — DAB, AAI/SRAM, SANE trusted environment | National Data Flow (SSHOC-NL) | In review |
| National dataset catalogue — NDE registration, DCAT, ODRL | Open Beelden Integration + National Data Flow | Draft — Open Beelden first |
| Knowledge graph — entity model, SPARQL query catalogue, RDF | INFINITY (Horizon Europe) | Year 1 preparation 2026 |
| Applied user scenarios — journalism, oral history, cross-media | HAICu Deep Journalism Lab | In review |
| Social media corpus — comparative cross-media analysis | Macroscope | Draft |
| Fragment citation — IIIF for AV, proxy fragment access | IIIF Viewer & Image Collections (SSHOC-NL) | Wishlist / funding lead |

What follows describes each component in the terms of what it contributes to
the architecture, and what remains to be done.

### The agent layer

The most direct implementation of the vision is already well underway. The
mediasuite-agent repository — developed as part of the AI experimentation work
funded by SSHOC-NL and Macroscope — contains an Embeddings API for converting
text to dense vector representations, a Milvus vector database deployed on
NISV's OpenShift infrastructure, and an MCP server with agent tools already
defined: `embed_text`, `query_archive`, `query_milvus`. An Agent API with the
main orchestration logic is in active development, with a full prototype expected
by end of Q2 2026 and suitable for initial user testing.

The embedding model chosen — `multilingual-e5-large-instruct` — handles Dutch
and English in the same vector space, which matters for a corpus spanning decades
of Dutch-language broadcasting queried by an international research community.

The Frozen Sets concept — user-defined, topic-scoped subsets of Media Suite
content that can be embedded and queried independently via RAG — is confirmed
in scope. This is the first form of researcher-defined dataset agents: a
researcher creates a corpus, the system makes it queryable. It is a direct
precursor to the dataset agent model described in Section 6. [ro: this seems to be about a flexible way to approach agentic: a researcher defines a dataset and hence, an agent? Could that be an interesting approadch towards reproducibility, that a researchers defines its own knowledge graph of its work, but more in terms of queries than the datasets itslef, if you understand what I mean]

Two gaps are worth naming explicitly. First, a human-verified evaluation set
for the agent does not yet exist. The approach should mirror what was built for
the documentation knowledge base prototype [ro: should be explained, others don't know about this. Mention that this can be partly automatic for the validity tests and using researchers for extending the evaluation set and do proper benchmarking]: a structured set of test questions
covering the range of queries the system is expected to handle, with expected
results verified by domain experts and quality metrics reported publicly. This
needs a named owner. Second, the MCP server design needs to take the full
architecture into account from the start — each tool built once and shared,
not reimplemented per project. The CTO role is the natural place to own the
coordination question across projects.[ro: remove this last sentence]

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
today.

What is not yet working is NISV's contribution to that register. As described
in Section 5, NISV currently contributes to Europeana via EUscreen, bypassing
NDE. The Open Beelden integration work — Task 2026-012 — is the vehicle for
closing this gap: publishing the full Open Beelden dataset as linked data via
data.beeldengeluid.nl, registering all sub-collections in the NDE register
with correct DCAT and ODRL metadata, and ensuring that DS4CH/Europeana receives
from NDE rather than via a parallel aggregator route.

This is the governance commitment that makes the technical architecture credible.
The policy is: new datasets follow the chain. Open Beelden is first.

### The knowledge graph

INFINITY is a Horizon Europe knowledge graph project for cultural heritage data,
in its first year of preparation in 2026. Its Use Case Requirements and Design
work package (WP5) and Ethics and Design work package (WP8) are both active in
2026 — precisely when the prototype knowledge graph built alongside this white
paper provides concrete evidence about what entity models and query patterns are
needed and what failure modes arise in practice.

The prototype knowledge graph — 1057 triples across five entity types, eleven
named SPARQL query templates, deterministic embedding-based routing — is a
working proof of concept for what INFINITY will build at production scale. The
Media Suite's existing linked data assets — the GTAA thesaurus connections,
the Wikidata linkages, the data.beeldengeluid.nl SPARQL endpoint — position
NISV as a contributor with substantial existing structured data, not a passive
participant. Articulating that contribution concretely, ahead of the next INFINITY
project meeting, is a near-term priority.

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
storytelling output. A dedicated project of approximately €300k,[ro: remove the money bit] building on
CLARIAH infrastructure and incorporating Media Suite broadcast data, Oral History
(in collaboration with DANS), and interactive storytelling capabilities, would
be the natural vehicle. The white paper's vision provides the architectural
frame for exactly that kind of project proposal.

### The social media layer

The Macroscope project is building the social media integration that extends the
Media Suite into cross-media corpus analysis: harmonised social media datasets
alongside broadcast and print, with metadata aligned, temporal structures
normalised, and legal and ethical constraints (AVG, platform terms of service)
managed via the DAB/SANE infrastructure. This is the next dataset agent after
Open Beelden — a harmonised, queryable social media corpus alongside the
audiovisual archive, enabling the comparative cross-media analysis that
researchers have been asking for since the first Media Suite use cases were
collected in 2014. 

### What is not yet connected

Three gaps are worth naming explicitly, because they represent coordination
work that does not yet have a clear owner.

**A shared evaluation framework.** The agent layer, the documentation knowledge
base, and the future dataset agents all need evaluation, but evaluation is being
developed separately in each context. Someone needs to own the question of what
"working well" means across the whole system — and to build the test sets,
run the benchmarks, and report the results publicly. This is not a large
investment in time or money. It is a governance commitment.[ro: can we make that even more concrete? E.g., we need to invest in a media suite analyst or something? In parallel I am lobbying for a broader team as we are currently under-resourced. ]

**MCP server coordination.** The agent layer is building an MCP server. The
SPARQL endpoint, the Elasticsearch search, the NDE register query, the access
control layer, the visual similarity index — all of these need MCP wrappers.
These span multiple projects and multiple teams. Without coordination, each
project builds its own wrapper, incompatible with the others. With coordination,
each capability is built once and shared.[ro: we have a small team so better frame it like together focussing on one server, finish it and evaluate it and on to the next, and mybe getting people from the institute on board to help us on the data levels, legals etc.]

**The Open Beelden ASR organisational question.** Having ASR transcripts for
all Open Beelden content is technically feasible — the pipeline exists. The
question is organisational: who coordinates running it across the full collection,
including the non-B&G sub-collections, and by when. This needs a named owner
and a delivery date before the dataset agent can be fully operational.[ro: on a personal note, this could maybe assigned to a person outside the direct context of Media Suite from the "Verkennen" department. The question for me is if this needs to be mentioned in a white paper?]

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

What is missing is not ambition, not funding [ro: well, we are under-resourced :)], and not technical capability. It
is the explicit frame that names what the projects have in common and the
coordination that ensures their outputs are compatible. This white paper is
that frame. The coordination is what comes next.

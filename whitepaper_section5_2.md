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

For the Media Suite, the MCP architecture means:

- The Elasticsearch search becomes an MCP tool: `search_archive(query, filters)`
- The SPARQL endpoint becomes an MCP tool: `query_knowledge_graph(sparql_template, parameters)`
- The NDE Dataset Register becomes an MCP tool: `find_datasets(institution, license, format)`
- The vector retrieval index becomes an MCP tool: `semantic_search(query, collection)`
- The visual similarity index becomes an MCP tool: `find_visually_similar(image_or_description)`
- The documentation knowledge base becomes an MCP tool: `ask_media_suite(question)`
- The access control layer becomes an MCP tool: `check_access(dataset, user_context)`

Each tool is built once, maintained independently, and shared across any
application that needs it — not just the Media Suite chatbot. A future CLARIAH
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

The migration research question from Section 1 — *I am studying the representation
of migration in Dutch television news over the last fifty years — where do I start,
what is available, how have others approached this, and what can I access?* —
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

The actual situation is more awkward. NISV currently contributes content to
Europeana via EUscreen — the European television archives domain aggregator —
bypassing NDE entirely. Open Beelden content appears on Europeana through a
separate route. Neither path goes through the national infrastructure that is
supposed to serve as the connective layer. The result is a paradox: NISV
content is findable at the European level through a route that makes it
invisible at the national level, and an agent querying NDE would not reliably
find it.

At the national level, the Media Suite's local registry — currently implemented
in CKAN — became a mess over time precisely because no strict policy governed
how datasets entered it. Some came via NDE. Many came via direct arrangements
with data providers who had neither the resources nor the immediate incentive
to register in NDE first. The result is a registry that partially overlaps with
NDE but is not derived from it — making it unreliable as a foundation for
automated discovery.

This is not a failure of technology. NDE, CKAN, and the relevant standards have
existed for years. It is a failure of governance: no institution made the
sustained commitment to enforce the chain. The promise of linked data federation
has been made in the heritage sector since the early 2010s, and it has
consistently underdelivered because completing the chain requires ongoing
institutional discipline, not a one-time technical implementation.

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

The scenario above operates at the Media Suite level — one research environment,
one agent, one researcher. But the research question — *I am studying the
representation of migration in Dutch media over the last fifty years* — is not a
Media Suite question. It is a question about Dutch media, which spans Sound &
Vision broadcasts, KB newspapers, DANS oral history interviews, EYE film
collections, and potentially social media data from multiple platforms. No single
research environment holds all of this.

The right architectural response to this is federation — a network of specialised
agents, each with deep knowledge of its own domain, that can be coordinated by a
higher-level agent. The Media Suite agent knows the Sound & Vision collection
intimately: its coverage, its access conditions, its ASR transcripts, its linked
data. The DANS agent knows the oral history collections. The KB agent knows the
newspaper archive. A CLARIAH-level coordinating agent — sitting at clariah.nl,
or eventually embedded in what INEO currently tries to be as a portal — can
query all of them and synthesise across their responses.

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

INEO's role in this architecture is as a catalogue, not a portal. It is the
human-readable and machine-queryable registry of what tools, datasets, workflows,
and educational materials exist across CLARIAH — the map that a coordinating
agent can query to find out which specialised agents exist and what they cover.
This is a more sustainable and more accurate role for INEO than trying to present
a unified surface over heterogeneous data it does not control.

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
- Visual similarity search over VisXP embeddings of Open Beelden keyframes
- Rights and access information from the NDE registration
- Provenance and coverage information from Dataset Archaeology

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
reaches the boundary of what the knowledge base covers — it says so. An answer
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

# Media Suite in the Age of AI Agents
## A one-page vision for the team

---

### Ten years of solid foundations

Since 2014, the Media Suite has grown from an experiment into a unique national
research infrastructure: 90+ collections, 15,000 annual visits, Elasticsearch-powered
search with ASR transcripts, linked data with SPARQL endpoints, a tool set covering
search, annotation, comparison and analysis, and a rich dataset of research
publications and data stories documenting how researchers actually use it. That
infrastructure is not a legacy problem. It is exactly what is needed for the next step.

---

### What the AI revolution actually changes

The tools and data are largely right. What has changed is what researchers —
and the public — now expect from access to those tools and data. They expect to
ask questions in natural language and get useful, grounded answers. They expect
the system to know what it knows and what it does not. They expect to be guided
through a complex archive without having to first become experts in its structure.

Large language models make this possible in a way that was not feasible before.
But the key insight from recent practical work is this: **LLMs are not a replacement
for structured infrastructure — they are the interface layer on top of it.** An agent
that can query a well-indexed Elasticsearch corpus, traverse a SPARQL endpoint,
and retrieve from a curated knowledge base of documentation and publications is
far more capable and trustworthy than one that answers from general knowledge alone.
The ten years of investment pays off again — at a higher level of abstraction.

---

### The vision: from pipelines to agents

The Media Suite today is a set of interfaces for humans. The shift is to make those
same capabilities available as **tools for agents** — queryable programmatically,
with structured inputs and outputs, composable into multi-step reasoning.

Each Media Suite capability becomes an agent tool:

- **Search** → query Elasticsearch (with ASR transcripts, timecoded)
- **Collections** → query linked data / SPARQL for structured facts about rights, access, enrichments
- **Documentation** → query the knowledge base of help, tutorials, publications
- **Annotation** → read and write researcher annotations
- **Visual similarity** → query CLIP embeddings for visual content retrieval

A researcher asking *"I study gender representation in 1970s Dutch television news —
what data is available, how have others approached this, and how do I get started?"*
gets a response that draws on all of these tools in a single coherent answer, with
source links and fragment citations. No single interface does this today.

The protocol connecting these tools is **MCP** (Model Context Protocol) — an open
standard for AI-to-tool communication, analogous to what HTTP did for the web.
Each tool becomes an MCP server. Any AI application — the Media Suite chatbot,
a researcher's local agent, a future CLARIAH-wide assistant — can connect to any
tool without custom integration code.

---

### Open Beelden as the proving ground

Rather than attempting to rewire the entire archive at once, we start with
**Open Beelden** — and for three reasons that compound each other.

First, it is **fully open**: no login required, CC-licensed content, accessible
to researchers and the public alike. An AI assistant built on Open Beelden can be
deployed publicly without access control complexity, reaching audiences the current
Media Suite cannot.

Second, it is **already well-instrumented**: ASR transcripts with timecodes indexed
in Elasticsearch, linked data with a SPARQL endpoint, visual similarity experiments
in progress, and registration in the national NDE dataset register. The tools exist —
what is missing is the agent layer connecting them.

Third, the **NDE dataset register connection** is significant: Open Beelden as a
well-described, agent-queryable dataset in the national register becomes a model
for how other Dutch heritage datasets can be made AI-accessible. The dataset agent
concept — one well-instrumented, interoperable agent per dataset — is something
the heritage sector needs and does not yet have. Open Beelden can demonstrate it.

The approach is deliberately incremental: make one dataset work really well, with
proper evaluation and real researcher testing, before adding the next. Each dataset
agent is addable independently. Cross-dataset questions — *"compare gender
representation across Open Beelden and the Oral History collection"* — become
possible once two agents exist, without redesigning either one.

---

### What this means for the team

The good news: most of what needs to be built is connective tissue, not new
infrastructure. The Elasticsearch index, the SPARQL endpoint, the ASR transcripts,
the linked data — these stay. What gets added is:

1. **MCP wrappers** around existing services — thin layers that expose each capability
   as a tool an agent can call
2. **A knowledge base** of documentation, publications, and data stories — so the
   agent can answer "how do I" and "how have others" questions, not just "what exists"
3. **An evaluation framework** — defined criteria for what "working well" means for
   researchers, before any external testing begins
4. **A deployment path** through NISV infrastructure — so the system can serve
   real researchers, not just run on a laptop

The architectural rethink is not a rewrite. It is a new access layer built on top of
what already exists — one that makes the Media Suite's decade of careful infrastructure
work accessible in the way researchers now expect.

---

*This vision emerged from a practical prototype — a working RAG chatbot with a
knowledge graph, dual retrieval paths, and a structured evaluation framework —
built to understand from the inside how the pieces fit together. The technical
details and learning log live in the mediasuite-knowledge-base and
media-suite-learn-chatbot repositories. This document is the view from altitude.*

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

### Visual similarity — VisXP and the work still to be done

The VisXP project, co-financed by CLICKNL, developed visual similarity
capabilities for the Sound & Vision archive: shot-level embeddings that allow
researchers to find visually similar content given an example image or video
frame. This work produced real infrastructure — embeddings computed, a similarity
search prototype demonstrated, the technical pipeline established.

It is frustrating that this remains at a prototype level. The ground work is done.
The embeddings exist or can be recomputed. What is needed is focused attention to
move from prototype to production: integrating the visual similarity index into
the agent tool set alongside the text-based Elasticsearch and SPARQL tools, so
that a researcher can ask "find me footage that looks like this" and get a
grounded, source-linked answer. Visual similarity is the capability that most
clearly demonstrates the multimodal potential of the archive — and it is the one
that most clearly distinguishes the Media Suite from text-only AI systems. CLIP
embeddings, which represent images and text in the same vector space and enable
genuinely cross-modal queries, are the natural next step: embedding a textual
description and finding visually similar content, or embedding an image and
finding thematically related spoken content.

The path from here to there is not long. It requires dusting off the VisXP work,
assessing the current state of the embeddings and index, and making a focused
investment to bring the capability to a state where it can be exposed as an agent
tool. The Open Beelden dataset — with its open license and manageable scale — is
the right place to do this first.

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

### Summary

The assets described here — speech transcripts, linked data, dataset discovery,
access control, collection metadata, research publications, documentation, visual
similarity — are not a wish list. They exist, in varying states of completeness,
as the product of ten years of deliberate infrastructure work. The agent layer
described in the rest of this document is built on these foundations. Where assets
are incomplete — visual similarity not yet in production, AAI not yet granular,
publication ingestion not yet systematic — the gaps are identified and the path
forward is clear. The question is not whether the infrastructure is ready for
an agentic layer. It largely is. The question is whether the institutional
commitment exists to connect these assets deliberately, maintain them sustainably,
and evaluate them honestly.

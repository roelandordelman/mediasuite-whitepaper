`## Section 6 — Open Beelden as the proving ground

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
point. The mess that CKAN became does not recur if the governance commitment is
maintained from the start.

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

**3. Visual similarity from prototype to production.** The VisXP work produced
shot-level embeddings for visual similarity search. Open Beelden is the right
dataset to move this from prototype to a production agent tool — manageable
scale, open license, no rights complications. A researcher who can ask "find
footage that looks like this" and get a grounded, source-linked answer is
experiencing a capability that no other Dutch heritage interface currently
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

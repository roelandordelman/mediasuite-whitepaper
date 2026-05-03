## Section 8 — Roadmap

The roadmap for this work is maintained as a living document in the
accompanying repository (`ROADMAP.md`), with detailed phase descriptions,
individual checklist items, and a learning log that records what changed and
why. This section provides the higher-level view: the phased structure, the
key decision points, and the gates that need to be passed before each phase
can credibly begin.

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
in the mediasuite-knowledge-base and media-suite-learn-chatbot repositories.[ro: note that these need to be  migrated to beeldengeluid repos]

### Phase 2 — Open Beelden dataset agent (current focus)

The full chain completed for one open dataset: NDE registration with correct
DCAT and ODRL metadata, Media Suite index built from harvested linked data,
ASR transcripts covering the full collection, visual similarity from VisXP
prototype to production agent tool, public-facing interface without login
requirement, evaluation framework with published quality metrics.

This phase has a hard operational context: Open Beelden as a standalone
platform phases out by April 2027. The migration work and the agent work are
the same work. The question is whether the migration happens minimally or
properly.[ro: this can be removed as this an internal governance thing, not so relevant for others. Moreover april 2027 is further away then I want this accomplished]

**Gate for Phase 3:** the Open Beelden chain is complete, the evaluation
framework shows acceptable retrieval quality, and at least one external user
group (journalists, educators, or researchers) has provided structured feedback.

### Phase 3 — Broadcast and television news agent

The first restricted dataset agent: a queryable agent for the television news
collection, or a defined subset of the Sound & Vision broadcast archive, with
access control via SURFconext/SRAM and the Data Access Broker. This phase tests
the access control layer under realistic conditions — real researchers, real
restricted content, real authorisation requirements.

The Deep Journalism Lab scenario (migration across television news and oral
history) is the natural evaluation context for this phase. The Macroscope
contribution — the queryable AV layer for the Netherlands Media Corpus — is
the parallel development that feeds the cross-media capability. [RO: so the choice of the restricted data set is or could be informed by the journalism lab]

**Gate for Phase 4:** the access control layer works correctly for at least
one restricted dataset, the DAB/SANE pathway is tested with real researchers,
and the MCP server covers both the open and restricted dataset agents with a
shared interface.

### Phase 4 — NISV infrastructure migration and federation
[ro: I don't understand this one, migration is relevant for my project as I developed it in mmy owb giothub repos but the team will work on NISV infrastructure]
Migration of both repositories to NISV infrastructure — OpenShift for the
agent layer, institutional servers for the knowledge base and vector index —
and the first cross-dataset queries: a researcher question that spans the Open
Beelden agent and the television news agent, synthesised by a coordinating
layer.

This phase must happen before external researcher testing at scale. It is also
the phase that tests whether the institutional commitment to the chain holds
when the work moves from prototype to production: registry hygiene, governance
discipline, and the maintenance burden of a system that real researchers depend
on.

**Gate for this phase being the right moment:** a natural trigger is when the
first external researcher group is ready to use the system — not before, because
migration under production load is harder than migration before deployment, but
not after, because running production traffic on personal infrastructure is
not sustainable.

### Phase 5 — Knowledge graph at scale and CLARIAH federation

Integration with the INFINITY knowledge graph project, expanding the entity
model and SPARQL query catalogue to production scale. The first connection to
a CLARIAH-level coordinating agent — a researcher on clariah.nl asking a
cross-media question that the Media Suite agent answers as one component of
the response.

The NDE register, properly populated by phases 2 and 3, is the catalogue the
coordinating agent queries. INEO plays its natural role as the human-readable
and machine-queryable map of CLARIAH tools and datasets.

### Phase 6 — User evaluation and iteration

Structured evaluation with real researchers across multiple user groups:
academic researchers, research journalists, educators, and — via the Open
Beelden public interface — the general public. Evaluation results are published
openly and drive the next iteration of both the knowledge base content and the
retrieval architecture.

This phase is not an endpoint. It is the beginning of the continuous evaluation
practice that makes the system trustworthy over time. The evaluation framework
built in phases 1 and 2 scales to cover new datasets, new user groups, and
new question types as they emerge.

### Phase 7 — Expansion beyond the Media Suite

As the architecture matures and the evaluation evidence accumulates, the
infrastructure — the MCP servers, the evaluation framework, the NDE chain
governance — becomes available to other CLARIAH components and other heritage
institutions. The dataset agent model, proven on Open Beelden and the television
news collection, becomes the reference implementation for any institution that
wants to make a dataset AI-queryable within the CLARIAH ecosystem.

This is not a separate project — it is what happens when phases 1 through 6
work as described. The infrastructure does not need to be redesigned for
other institutions; it needs to be documented, maintained, and governed.

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
The evaluation framework, the MCP server coordination, the VisXP revival, the
Open Beelden ASR completion — each of these needs sustained attention from
someone with the right combination of technical and domain knowledge. The
white paper is partly intended to make this case: the architectural vision is
credible and the project portfolio is aligned, but the coordination and
evaluation work requires investment that is not fully covered by current
project budgets.

**The NISV migration timing.** Phase 4 requires a deliberate decision about
when to migrate to NISV infrastructure. Too early, and the system moves before
it is stable enough to benefit from institutional support. Too late, and
prototype infrastructure carries production load. The trigger should be a
specific milestone — the first external researcher cohort ready to use the
system — rather than a calendar date.[ro: see earlier comment]

**The visual similarity gap.** VisXP produced real infrastructure that has
been left at prototype stage. If the Open Beelden dataset agent launches
without visual similarity, it demonstrates a diminished version of the
architecture's potential. The decision to invest in moving VisXP to production
needs to be made early in phase 2, not deferred to phase 3.

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

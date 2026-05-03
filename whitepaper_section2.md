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

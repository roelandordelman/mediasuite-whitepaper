## Section 9 — Priorities, next steps, and what this enables

### The three things that matter most right now

Across the sections of this document, several priorities emerge. Not everything
can happen at once, and the team is small. These three are the ones where
decisions made now have the most consequence for everything that follows.

**1. Complete the Open Beelden chain — properly.**
This is the work that makes everything else credible. NDE registration with
correct DCAT and ODRL metadata. ASR transcripts across the full collection,
with a named owner and a delivery date. VisXP visual similarity moved from
prototype to production agent tool — a decision that needs to be made now,
not deferred. A public-facing interface with a published evaluation framework.
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

For the team reading this document, the priorities translate into concrete
next steps:

**Immediately:**
- Confirm a named owner for the Open Beelden ASR completion, with a delivery
  date, covering all sub-collections including Natuurbeelden, VPRO, EYE, and
  Yad Vashem
- Make the VisXP investment decision: prototype to production for Open Beelden,
  or explicitly defer with a stated reason
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
as a personal project — to connect the dots through direct experience, not
through reading about it — and it produced lessons that could not have been
anticipated from the architecture documents alone.

Among those lessons: retrieval quality is only as good as the test set used
to measure it, and the test set is only as good as the domain knowledge used
to construct it. The governance failures that have plagued linked data
federation are real, not theoretical, and naming them honestly is the
prerequisite for doing better. The MCP protocol makes federation genuinely
tractable in a way that previous standards did not. And the gap between a
working prototype and production infrastructure is primarily a governance and
resourcing gap, not a technical one.

These lessons are in the white paper because they are the most useful things
it can offer to people who will build the next stages. The architecture is
right. The path is clear. The work is already underway. What remains is the
institutional commitment to see it through — dataset by dataset, evaluation
by evaluation, chain link by chain link — until the federation that the
heritage sector has been promising itself for twenty years finally materialises,
one working system at a time.

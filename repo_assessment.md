# Preliminary Repository Assessment

This table lists repositories already checked for decision-density and requirements-as-solution threading, with an initial qualitative score (0–5) reflecting how strongly the artifacts reinforce the Fort principles.

| Repository | Evidence Reviewed | Preliminary Score | Rationale |
| --- | --- | --- | --- |
| fort-decision-density (this repo) | `README.md`, `visualization.md`, `pdca_agent_prompt.md`, `ontology.ttl`, `shacl.ttl` | 4.5 / 5 | Explicit focus on decision density and multi-perspective confidence; artifacts map requirements → decisions → solutions and SCIG, plus SHACL/ontology to operationalize checks. Missing concrete dataset/examples keeps it short of a perfect score. |

**Scoring Legend**

- **5** — Complete, with concrete data and validation assets demonstrating requirements-justified decisions and perspective coverage.
- **4** — Strong conceptual and structural coverage; minor gaps in examples or data.
- **3** — Partial coverage; key constructs present but limited linkage or guidance.
- **2** — Minimal references; concepts mentioned but not operationalized.
- **1** — Barely relevant; requires significant work to align with decision-density principles.
- **0** — No identifiable linkage to the concepts.

## 12-month Repository Scoring (nkllon & louspringer)

**Method:**
- Pulled public repositories via GitHub API for `nkllon` and `louspringer` (`?per_page=100&sort=created&direction=desc`).
- Filtered to repos created on or after 2024-12-05 (past 12 months from current date).
- Applied a quick heuristic desk review using repository names/descriptions to estimate alignment with decision-density and requirements-as-solution principles.
- Higher scores reflect semantics/ontology/decision or Fort-aligned themes; mid scores reflect agent/MCP/clewcrew tooling that might embed structured decision flows; low scores indicate limited observable linkage pending deeper review.

### nkllon (created in last 12 months)

| Repository | Created | Preliminary Score | Rationale |
| --- | --- | --- | --- |
| [fort-decision-density](https://github.com/nkllon/fort-decision-density) | 2025-12-05 | 4.5 / 5 | Directly references Fort concepts; likely to contain structured artifacts supporting decision/requirement threading. |
| [pdf-grepper](https://github.com/nkllon/pdf-grepper) | 2025-12-04 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [gemini-antigravity](https://github.com/nkllon/gemini-antigravity) | 2025-12-04 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [earth-mars-temperature-distributions](https://github.com/nkllon/earth-mars-temperature-distributions) | 2025-12-03 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [gorgonaut](https://github.com/nkllon/gorgonaut) | 2025-11-25 | 3.5 / 5 | OWL/SHACL ontology bundle (`gorgonaut-mindtools.ttl`, `gorgonaut-mindtools-shacl.ttl`) with validation tooling and OpenAPI spec demonstrates structured semantics and policy for conformance, but it lacks Fort namespaces (e.g., `fort:Requirement`) or decision logs tying requirements to solutions. |
| [FalkorDB](https://github.com/nkllon/FalkorDB) | 2025-11-24 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [egpm-gradient-goblin](https://github.com/nkllon/egpm-gradient-goblin) | 2025-11-23 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [goblin](https://github.com/nkllon/goblin) | 2025-11-22 | 3.5 / 5 | Contains a Goblin/SCIG OWL ontology with scored problem classes (`goblin-ontology.ttl`), SHACL constraints, and an agent recipe for score computation, providing ontology-backed metrics but no Fort-style requirement→decision threading or `dec:justifiedBy` links. |
| [jobs-leadership-shadow-engine](https://github.com/nkllon/jobs-leadership-shadow-engine) | 2025-11-22 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [playwright-mcp](https://github.com/nkllon/playwright-mcp) | 2025-11-18 | 2.5 / 5 | MCP/tooling flavor suggests structured flows but lacks explicit requirement/decision framing. |
| [beast-semantics](https://github.com/nkllon/beast-semantics) | 2025-11-17 | 3.5 / 5 | Semantic focus hints at structured artifacts supporting decision/requirement threading. |
| [spoon-diversity-study](https://github.com/nkllon/spoon-diversity-study) | 2025-11-15 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [deep-writer](https://github.com/nkllon/deep-writer) | 2025-11-09 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [nkllon-stories](https://github.com/nkllon/nkllon-stories) | 2025-11-09 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [composable-ai-advisors](https://github.com/nkllon/composable-ai-advisors) | 2025-11-07 | 3.0 / 5 | Advisor tooling may embed structured decision flows though explicit requirement ties are unclear. |
| [graph_RAG](https://github.com/nkllon/graph_RAG) | 2025-11-05 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [netbox-docker](https://github.com/nkllon/netbox-docker) | 2025-11-04 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [beast-dream-snow-loader](https://github.com/nkllon/beast-dream-snow-loader) | 2025-11-03 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [beast-unifi-integration](https://github.com/nkllon/beast-unifi-integration) | 2025-11-03 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [azuredatastudio](https://github.com/nkllon/azuredatastudio) | 2025-11-01 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [docker-sql-extension](https://github.com/nkllon/docker-sql-extension) | 2025-11-01 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [beast-agent](https://github.com/nkllon/beast-agent) | 2025-10-30 | 2.5 / 5 | Agent tooling suggests structured flows but lacks explicit requirement/decision framing. |
| [cc-sdd](https://github.com/nkllon/cc-sdd) | 2025-10-30 | 3.0 / 5 | cc-sdd tooling hints at structured decision patterns though requirement ties are unclear. |
| [beast-observatory](https://github.com/nkllon/beast-observatory) | 2025-10-30 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [beast-ai-dev-agent](https://github.com/nkllon/beast-ai-dev-agent) | 2025-10-30 | 2.5 / 5 | Agent flavor suggests structured flows but lacks explicit requirement/decision framing. |
| [new-mac-setup](https://github.com/nkllon/new-mac-setup) | 2025-10-30 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [beast-mailbox-osx](https://github.com/nkllon/beast-mailbox-osx) | 2025-10-16 | 2.5 / 5 | Tooling/automation could hold structured steps but lacks explicit requirement/decision framing. |
| [beast-orchestrator](https://github.com/nkllon/beast-orchestrator) | 2025-10-14 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [beast-node](https://github.com/nkllon/beast-node) | 2025-10-14 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [beast-mailbox-agent](https://github.com/nkllon/beast-mailbox-agent) | 2025-10-14 | 2.5 / 5 | Agent tooling suggests structured flows but lacks explicit requirement/decision framing. |
| [beast-mailbox-core](https://github.com/nkllon/beast-mailbox-core) | 2025-10-10 | 2.5 / 5 | Core mailbox tooling may encode workflows yet lacks explicit requirement/decision framing. |
| [open-webui](https://github.com/nkllon/open-webui) | 2025-10-07 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [kiro-ai-development-hackathon](https://github.com/nkllon/kiro-ai-development-hackathon) | 2025-08-14 | 2.5 / 5 | Hackathon/AI tooling hints at structured flows but lacks explicit requirement/decision framing. |
| [tidb-agentx-hackathon](https://github.com/nkllon/tidb-agentx-hackathon) | 2025-08-14 | 2.5 / 5 | Hackathon/agent tooling hints at structured flows but lacks explicit requirement/decision framing. |
| [gke-ai-microservices-hackathon](https://github.com/nkllon/gke-ai-microservices-hackathon) | 2025-08-14 | 2.5 / 5 | Hackathon/microservice focus could include decisions but lacks explicit requirement framing. |
| [clewcrew-validators](https://github.com/nkllon/clewcrew-validators) | 2025-08-14 | 3.0 / 5 | Clewcrew validation tooling suggests structured decision flows though requirement ties are unclear. |
| [clewcrew-tools](https://github.com/nkllon/clewcrew-tools) | 2025-08-14 | 3.0 / 5 | Clewcrew tooling suggests structured decision flows though requirement ties are unclear. |
| [clewcrew-recovery](https://github.com/nkllon/clewcrew-recovery) | 2025-08-14 | 3.0 / 5 | Clewcrew recovery utilities suggest structured decision flows though requirement ties are unclear. |
| [clewcrew-core](https://github.com/nkllon/clewcrew-core) | 2025-08-14 | 3.0 / 5 | Clewcrew core likely embeds decision patterns but explicit requirement links are unknown. |
| [clewcrew-agents](https://github.com/nkllon/clewcrew-agents) | 2025-08-14 | 3.0 / 5 | Clewcrew agent package suggests structured flows but lacks explicit requirement/decision framing. |
| [clewcrew-framework](https://github.com/nkllon/clewcrew-framework) | 2025-08-14 | 3.0 / 5 | Clewcrew framework suggests structured flows but lacks explicit requirement/decision framing. |
| [clewcrew-common](https://github.com/nkllon/clewcrew-common) | 2025-08-14 | 3.0 / 5 | Clewcrew common assets imply structured decisions but explicit requirement links are unknown. |

### louspringer (created in last 12 months)

| Repository | Created | Preliminary Score | Rationale |
| --- | --- | --- | --- |
| [w3id.org](https://github.com/louspringer/w3id.org) | 2025-11-24 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [jimmy-hopper-ontology](https://github.com/louspringer/jimmy-hopper-ontology) | 2025-11-23 | 4.0 / 5 | Ontology focus suggests structured artifacts supporting decision/requirement threading. |
| [UL25](https://github.com/louspringer/UL25) | 2025-11-02 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [cc-sdd](https://github.com/louspringer/cc-sdd) | 2025-10-30 | 3.0 / 5 | cc-sdd tooling hints at structured decision patterns though requirement ties are unclear. |
| [stable-diffusion-webui](https://github.com/louspringer/stable-diffusion-webui) | 2025-10-05 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [gemini-cli](https://github.com/louspringer/gemini-cli) | 2025-09-29 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [google-calendar-mcp](https://github.com/louspringer/google-calendar-mcp) | 2025-09-22 | 2.5 / 5 | MCP/tooling flavor suggests structured flows but lacks explicit requirement/decision framing. |
| [kiro-bmad-setup](https://github.com/louspringer/kiro-bmad-setup) | 2025-09-09 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [semtools](https://github.com/louspringer/semtools) | 2025-09-08 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [claude-simone](https://github.com/louspringer/claude-simone) | 2025-09-05 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [spec-kit](https://github.com/louspringer/spec-kit) | 2025-09-05 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [ackbert](https://github.com/louspringer/ackbert) | 2025-09-03 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [awesome-cursor-rules-mdc](https://github.com/louspringer/awesome-cursor-rules-mdc) | 2025-08-30 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [staruml-python](https://github.com/louspringer/staruml-python) | 2025-08-26 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [clewcrew](https://github.com/louspringer/clewcrew) | 2025-08-12 | 3.0 / 5 | Clewcrew suite suggests structured decision flows though requirement ties are unclear. |
| [clewcrew-tools](https://github.com/louspringer/clewcrew-tools) | 2025-08-12 | 3.0 / 5 | Clewcrew tooling suggests structured decision flows though requirement ties are unclear. |
| [clewcrew-validators](https://github.com/louspringer/clewcrew-validators) | 2025-08-12 | 3.0 / 5 | Clewcrew validation tooling suggests structured decision flows though requirement ties are unclear. |
| [clewcrew-recovery](https://github.com/louspringer/clewcrew-recovery) | 2025-08-12 | 3.0 / 5 | Clewcrew recovery utilities suggest structured decision flows though requirement ties are unclear. |
| [clewcrew-agents](https://github.com/louspringer/clewcrew-agents) | 2025-08-12 | 3.0 / 5 | Clewcrew agent package suggests structured flows but lacks explicit requirement/decision framing. |
| [clewcrew-core](https://github.com/louspringer/clewcrew-core) | 2025-08-12 | 3.0 / 5 | Clewcrew core likely embeds decision patterns but explicit requirement links are unknown. |
| [clewcrew-framework](https://github.com/louspringer/clewcrew-framework) | 2025-08-12 | 3.0 / 5 | Clewcrew framework suggests structured flows but lacks explicit requirement/decision framing. |
| [codeguard-common](https://github.com/louspringer/codeguard-common) | 2025-08-12 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [gke-ai-microservices-hackathon](https://github.com/louspringer/gke-ai-microservices-hackathon) | 2025-08-12 | 2.5 / 5 | Hackathon/microservice focus could include decisions but lacks explicit requirement framing. |
| [kiro-ai-development-hackathon](https://github.com/louspringer/kiro-ai-development-hackathon) | 2025-08-12 | 2.5 / 5 | Hackathon/AI tooling hints at structured flows but lacks explicit requirement/decision framing. |
| [tidb-agentx-hackathon](https://github.com/louspringer/tidb-agentx-hackathon) | 2025-08-12 | 2.5 / 5 | Hackathon/agent tooling hints at structured flows but lacks explicit requirement/decision framing. |
| [LLM_OBSERVE](https://github.com/louspringer/LLM_OBSERVE) | 2025-07-22 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [Med_Architecture](https://github.com/louspringer/Med_Architecture) | 2025-07-22 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [SVG-Image-Gen](https://github.com/louspringer/SVG-Image-Gen) | 2025-06-27 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [semantic-web-lsp](https://github.com/louspringer/semantic-web-lsp) | 2025-06-18 | 3.5 / 5 | Semantic focus hints at structured artifacts supporting decision/requirement threading. |
| [rclone](https://github.com/louspringer/rclone) | 2025-06-17 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [gen-ai-app](https://github.com/louspringer/gen-ai-app) | 2025-05-31 | 2.5 / 5 | AI/app focus could include structured flows but lacks explicit requirement framing. |
| [github-mcp-server](https://github.com/louspringer/github-mcp-server) | 2025-05-28 | 2.5 / 5 | MCP/tooling flavor suggests structured flows but lacks explicit requirement/decision framing. |
| [fckappl](https://github.com/louspringer/fckappl) | 2025-05-24 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [Remote-MCP](https://github.com/louspringer/Remote-MCP) | 2025-05-15 | 2.5 / 5 | MCP/tooling flavor suggests structured flows but lacks explicit requirement/decision framing. |
| [python-sdk](https://github.com/louspringer/python-sdk) | 2025-05-07 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [mcp-sse-client-python](https://github.com/louspringer/mcp-sse-client-python) | 2025-05-07 | 2.5 / 5 | MCP/tooling flavor suggests structured flows but lacks explicit requirement/decision framing. |
| [vigilant-beacon](https://github.com/louspringer/vigilant-beacon) | 2025-05-05 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [langchain-academy](https://github.com/louspringer/langchain-academy) | 2025-03-26 | 2.5 / 5 | AI/LLM focus could include structured flows but lacks explicit requirement framing. |
| [octotools](https://github.com/louspringer/octotools) | 2025-03-02 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [botbuilder-python](https://github.com/louspringer/botbuilder-python) | 2025-02-11 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [sfguide-getting-started-with-cortex-analyst](https://github.com/louspringer/sfguide-getting-started-with-cortex-analyst) | 2025-02-08 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [kamiwaza-community-edition](https://github.com/louspringer/kamiwaza-community-edition) | 2025-01-29 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [cline](https://github.com/louspringer/cline) | 2025-01-28 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [enterprise_architecture_tools](https://github.com/louspringer/enterprise_architecture_tools) | 2025-01-28 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [chatbot-llm](https://github.com/louspringer/chatbot-llm) | 2025-01-26 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [pyairtable](https://github.com/louspringer/pyairtable) | 2025-01-19 | 2.5 / 5 | Data/API tooling could support structured decisions though requirement ties are unclear. |
| [cllm](https://github.com/louspringer/cllm) | 2025-01-18 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [universal-chaos](https://github.com/louspringer/universal-chaos) | 2025-01-18 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [osx-terminal.app-colors-solarized](https://github.com/louspringer/osx-terminal.app-colors-solarized) | 2025-01-12 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |
| [scs_whisper](https://github.com/louspringer/scs_whisper) | 2024-12-20 | 1.0 / 5 | Limited observable linkage to decision-density or requirements-as-solution; further review needed. |


# Fort Decision Density & Multi-Perspective Confidence Package

This package captures a small, self-contained Fort / Beast module around two core ideas:

1. **Decision Density** – a higher fraction of requirements-justified decisions increases the probability of solution correctness.
2. **Multi-Perspective Confidence** – independent or weakly correlated perspectives on decisions increase confidence and reduce systemic invalid-state gaps (SCIG).

Contents:

- `ontology.ttl` — OWL/RDF ontology for decision density, perspectives, and SCIG linkage.
- `shacl.ttl` — SHACL shapes for validating solutions and decisions (density and perspective coverage).
- `pdca_agent_prompt.md` — Prompt/spec for a PDCA-style agent that evaluates and improves decision density and perspective diversity.
- `visualization.md` — A simple conceptual diagram and explanation of how requirements → decisions → solutions relate to SCIG.
- `build_package.py` — Python script to regenerate a distributable ZIP of these artifacts.

You can treat this package as a seed module and extend it inside the broader Fort / Beast ontology stack.

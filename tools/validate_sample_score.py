#!/usr/bin/env python3
"""Validate the sample score JSON-LD against SHACL shapes."""
from pathlib import Path

from pyshacl import validate
from rdflib import Graph

REPO_ROOT = Path(__file__).resolve().parents[1]
SAMPLE_JSONLD = REPO_ROOT / "examples" / "sample_score.json"
SHAPES_TTL = REPO_ROOT / "goblin-shapes.ttl"


def main() -> int:
    data = Graph()
    data.parse(str(SAMPLE_JSONLD), format="json-ld")

    shapes = Graph()
    shapes.parse(str(SHAPES_TTL), format="turtle")

    conforms, _report_graph, report_text = validate(
        data_graph=data,
        shacl_graph=shapes,
        inference="rdfs",
        advanced=True,
    )
    print(report_text)
    if not conforms:
        raise SystemExit(1)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

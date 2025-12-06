.PHONY: python-sample-ttl python-sample-jsonld python-validate python-export dot-check docs-link webvowl-check js web ci ci-docker

python-sample-ttl:
	python -m goblin.validate --data samples/goblin-sample.ttl

python-sample-jsonld:
	python tools/validate_sample_score.py

python-validate:
	python tools/validate_shapes.py

python-export:
	python tools/export_instances_dot.py
	python tools/export_web_json.py

dot-check:
	@set -e; dot -Tsvg goblin-map.dot -o docs/goblin-map.svg.new; cmp -s docs/goblin-map.svg docs/goblin-map.svg.new; rm -f docs/goblin-map.svg.new

docs-link:
	@set -e; test -f docs/goblin-map.svg; test -f goblin-ontology.ttl; test -f goblin-shapes.ttl; grep -q "goblin-map.svg" docs/kg.html; grep -q "goblin-ontology.ttl" docs/kg.html; grep -q "goblin-shapes.ttl" docs/kg.html

webvowl-check:
	curl -I --fail https://service.tib.eu/webvowl/

js:
	cd js/goblin-ontology && (npm ci || npm i) && npm run typecheck && npm run build && npm test

web:
	cd web && (npm ci || npm i) && npm run build

ci: python-sample-ttl python-sample-jsonld python-validate python-export dot-check docs-link webvowl-check js web

ci-docker:
	docker compose run --rm python-sample-ttl
	docker compose run --rm python-sample-jsonld
	docker compose run --rm python-validate
	docker compose run --rm python-export
	docker compose run --rm dot-check
	docker compose run --rm docs-link
	docker compose run --rm webvowl-check
	docker compose run --rm js-package
	docker compose run --rm web-build

.PHONY: hooks hooks-push
hooks:
	pre-commit run --all-files --show-diff-on-failure

hooks-push:
	pre-commit run --all-files --hook-stage push --show-diff-on-failure

.PHONY: act-ci-ghcr act-job-ghcr
act-ci-ghcr:
	bash tools/ci/run_act_ghcr.sh

# Run a single job with GHCR-backed act, e.g.: make act-job-ghcr JOB=js
act-job-ghcr:
	bash -lc 'tools/ci/ghcr_login.sh && docker pull ghcr.io/nektos/act:latest >/dev/null && docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v "$$PWD":/github/workspace -v "$$HOME/.act":/root/.act -w /github/workspace ghcr.io/nektos/act:latest pull_request -P ubuntu-latest=catthehacker/ubuntu:act-latest -j "$${JOB}"'

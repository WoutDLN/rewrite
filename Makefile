.PHONY: preview

preview:
	LAST_DISPLAY_ESSAY=$$(git log -1 --format=%cd --date=format:"%-d %B %Y" -- essay.md); \
	LAST_ISO_ESSAY=$$(git log -1 --format=%cd --date=format:"%Y-%m-%d" -- essay.md); \
	FIRST_DISPLAY_ESSAY=$$(git log --follow --reverse --format=%cd --date=format:"%Y" -- essay.md | head -n 1); \
	FIRST_ISO_ESSAY=$$(git log --follow --reverse --format=%cd --date=format:"%Y-%m-%d" -- essay.md | head -n 1); \
	pandoc essay.md \
		--standalone \
		--template=assets/template/template.html \
		--citeproc \
		--csl=assets/csl/apa.csl \
		--toc \
		--metadata last_updated="$$LAST_DISPLAY_ESSAY" \
		--metadata last_updated_iso="$$LAST_ISO_ESSAY" \
		--metadata year_first_published="$$FIRST_DISPLAY_ESSAY" \
		--metadata first_published_iso="$$FIRST_ISO_ESSAY" \
		--metadata is_essay=true \
		--output=index.html

howto:
	@build_page() { \
		SRC="$$1"; \
		OUT="$$2"; \
		\
		LAST_DISPLAY=$$(git log -1 --format=%cd --date=format:"%-d %B %Y" -- "$$SRC"); \
		LAST_ISO=$$(git log -1 --format=%cd --date=format:"%Y-%m-%d" -- "$$SRC"); \
		FIRST_DISPLAY=$$(git log --follow --reverse --format=%cd --date=format:"%Y" -- "$$SRC" | head -n 1); \
		FIRST_ISO=$$(git log --follow --reverse --format=%cd --date=format:"%Y-%m-%d" -- "$$SRC" | head -n 1); \
		\
		pandoc "$$SRC" \
			--standalone \
			--template=assets/template/template.html \
			--citeproc \
			--csl=assets/csl/apa.csl \
			--toc \
			--metadata root_path="../" \
			--metadata last_updated="$$LAST_DISPLAY" \
			--metadata last_updated_iso="$$LAST_ISO" \
			--metadata year_first_published="$$FIRST_DISPLAY" \
			--metadata first_published_iso="$$FIRST_ISO" \
			--metadata is_docs=true \
			--output="$$OUT"; \
	}; \
	\
	for f in docs/md/*.md; do \
		name=$$(basename "$$f" .md); \
		if [ "$$name" = "howto" ]; then \
			out="docs/index.html"; \
		else \
			out="docs/$$name.html"; \
		fi; \
		build_page "$$f" "$$out"; \
	done

wordfile:
	TITLE=$$(sed -n '/^title:/s/^title:[[:space:]]*//p' essay.md | head -n1); \
	SLUG=$$(echo "$$TITLE" | \
		tr '[:upper:]' '[:lower:]' | \
		sed 's/[^a-z0-9]/-/g; s/--*/-/g; s/^-//; s/-$$//'); \
	pandoc essay.md \
		--standalone \
		--citeproc \
		--csl=assets/csl/apa.csl \
		--reference-doc=assets/template/reference.docx \
		--output="$$SLUG.docx"

site: preview howto

all: site wordfile
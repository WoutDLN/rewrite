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
	LAST_DISPLAY_HOWTO=$$(git log -1 --format=%cd --date=format:"%-d %B %Y" -- docs/howto.md); \
	LAST_ISO_HOWTO=$$(git log -1 --format=%cd --date=format:"%Y-%m-%d" -- docs/howto.md); \
	FIRST_DISPLAY_HOWTO=$$(git log --follow --reverse --format=%cd --date=format:"%Y" -- docs/howto.md | head -n 1); \
	FIRST_ISO_HOWTO=$$(git log --follow --reverse --format=%cd --date=format:"%Y-%m-%d" -- docs/howto.md | head -n 1); \
	pandoc docs/howto.md \
	--standalone \
	--template=assets/template/template.html \
	--citeproc \
	--csl=assets/csl/apa.csl \
	--toc \
	--metadata root_path="../" \
	--metadata last_updated="$$LAST_DISPLAY_HOWTO" \
	--metadata last_updated_iso="$$LAST_ISO_HOWTO" \
	--metadata year_first_published="$$FIRST_DISPLAY_HOWTO" \
	--metadata first_published_iso="$$FIRST_ISO_HOWTO" \
	--metadata is_howto=true \
	--output=docs/index.html

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
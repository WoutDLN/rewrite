.PHONY: preview

preview:
	LAST_DISPLAY=$$(git log -1 --format=%cd --date=format:"%-d %B %Y" -- essay.md); \
	LAST_ISO=$$(git log -1 --format=%cd --date=format:"%Y-%m-%d" -- essay.md); \
	FIRST_DISPLAY=$$(git log --follow --reverse --format=%cd --date=format:"%Y" -- essay.md | head -n 1); \
	FIRST_ISO=$$(git log --follow --reverse --format=%cd --date=format:"%Y-%m-%d" -- essay.md | head -n 1); \
	pandoc essay.md \
	--standalone \
	--template=assets/template/template.html \
	--citeproc \
	--csl=https://www.zotero.org/styles/apa \
	--toc \
	--metadata last_updated="$$LAST_DISPLAY" \
	--metadata last_updated_iso="$$LAST_ISO" \
	--metadata year_first_published="$$FIRST_DISPLAY" \
	--metadata first_published_iso="$$FIRST_ISO" \
	--output=preview.html
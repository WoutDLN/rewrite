preview:
	pandoc essay.md \
	--standalone \
	--template=assets/template/template.html \
	--citeproc \
	--csl=https://www.zotero.org/styles/apa \
	--toc \
	--output=preview.html
# Media Suite White Paper — PDF build
# Usage: make pdf
# Requires: pandoc, pdflatex, and images in docs/ folder

PANDOC = pandoc
SOURCE = ../whitepaper_draft.md
TEMPLATE = mediasuite.latex
OUTPUT = mediasuite_whitepaper_v0.1.pdf
DOCS = ../docs

pdf:
	$(PANDOC) $(SOURCE) \
		--template=$(TEMPLATE) \
		--resource-path=$(DOCS) \
		--pdf-engine=pdflatex \
		--variable=title:"Media Suite in the Age of AI Agents" \
		--variable=subtitle:"Rethinking Access to Audiovisual Heritage" \
		--variable=author:"Roeland Ordelman" \
		--variable=date:"Draft v0.1 — May 2026" \
		--variable=geometry:"a4paper" \
		--toc \
		--toc-depth=2 \
		--number-sections \
		-o $(OUTPUT)
	@echo "PDF created: $(OUTPUT)"

# Quick version without TOC for fast preview
preview:
	$(PANDOC) $(SOURCE) \
		--template=$(TEMPLATE) \
		--resource-path=$(DOCS) \
		--pdf-engine=pdflatex \
		--variable=title:"Media Suite in the Age of AI Agents" \
		--variable=author:"Roeland Ordelman" \
		--variable=date:"Draft v0.1 — May 2026" \
		-o preview.pdf
	@echo "Preview created: preview.pdf"

clean:
	rm -f *.pdf *.aux *.log *.toc

.PHONY: pdf preview clean

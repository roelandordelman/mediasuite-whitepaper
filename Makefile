PANDOC    = pandoc
SOURCE    = whitepaper_draft.md
TEMPLATE  = mediasuite.latex
OUTPUT    = mediasuite_whitepaper_v0.1.6.pdf
DOCS      = docs
TMPFILE   = /tmp/whitepaper_for_pdf.md
DRAWIO    = /Applications/draw.io.app/Contents/MacOS/draw.io
FIGURES   = $(DOCS)/figure1.drawio.png $(DOCS)/figure2.drawio.png $(DOCS)/figure3.drawio.png $(DOCS)/figure4.drawio.png

# Render a single draw.io diagram to PNG (high-res, transparent background off)
$(DOCS)/figure%.png: diagrams/figure%.drawio
	@if [ -x "$(DRAWIO)" ]; then \
		$(DRAWIO) --export --format png --scale 2 --output $@ $< ; \
	else \
		echo "draw.io not found at $(DRAWIO); falling back to mmdc for $@"; \
		npx --yes @mermaid-js/mermaid-cli -i diagrams/$(notdir $(basename $@)).mmd -o $@ --theme neutral -s 2 ; \
	fi

figures: $(FIGURES)

pdf: $(FIGURES)
	python3 -c "\
import sys; \
lines = open('$(SOURCE)').readlines(); \
promoted = []; \
[promoted.append(('# ' + l[3:]) if l.startswith('## ') else ('## ' + l[4:]) if l.startswith('### ') else l) for l in lines[8:]]; \
fixed = []; \
[fixed.append('\n') or fixed.append(l) if (l.startswith('# ') or l.startswith('## ')) and i > 0 and promoted[i-1].strip() != '' else fixed.append(l) for i, l in enumerate(promoted)]; \
open('$(TMPFILE)', 'w').writelines(fixed)"
	$(PANDOC) $(TMPFILE) \
		--template=$(TEMPLATE) \
		--resource-path=$(shell pwd)/docs \
		--pdf-engine=xelatex \
		--top-level-division=section \
		--toc \
		-o $(OUTPUT)
	@echo "Done: $(OUTPUT)"

clean:
	rm -f $(OUTPUT) $(TMPFILE)

.PHONY: pdf clean

BUILD = build
NOME_LIVRO = Livro
TITULO = title.txt
METADATA = metadata.xml
CAPÍTULO = A-INSTALACAO-JULIA-INTERFACES.md 1-INTRODUCAO-LINGUAGEM-PROGRAMACAO-JULIA.md
TOC = --toc --toc-depth=2
COVER_IMAGE = images/cover.jpg
LATEX_CLASS = book

all: book

book: epub html pdf

clean:
	rm -r $(BUILD)

epub: $(BUILD)/epub/$(NOME_LIVRO).epub

html: $(BUILD)/html/$(NOME_LIVRO).html

pdf: $(BUILD)/pdf/$(NOME_LIVRO).pdf

$(BUILD)/epub/$(NOME_LIVRO).epub: $(TITULO) $(CAPÍTULO)
	mkdir -p $(BUILD)/epub
	pandoc $(TOC) -S --epub-metadata=$(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@ $^

$(BUILD)/html/$(NOME_LIVRO).html: $(CAPÍTULO)
	mkdir -p $(BUILD)/html
	pandoc $(TOC) --standalone --to=html5 -o $@ $^

$(BUILD)/pdf/$(NOME_LIVRO).pdf: $(TITULO) $(CAPÍTULO)
	mkdir -p $(BUILD)/pdf
	pandoc $(TOC) --latex-engine=xelatex  -V papersize:"a4paper"  -V geometry:margin=1cm  -V  documentclass=$(LATEX_CLASS) -o $@ $^

.PHONY: all book clean epub html pdf

help:     ## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

all: agda-slides.pdf ## build all targets

agda-slides.pdf: agda-slides.tex Chapters/*.tex FrontBackmatter/*.tex myBibliography9.bib ## Build agda-slides.tex
	@latexmk -pdflatex agda-slides.tex

clean: ## remove target
	@rm -f category-book.pdf






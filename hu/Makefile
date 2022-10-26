SECTIONS = $(wildcard sections/*.tex)
ASSETS = $(wildcard assets/*)

.PHONY: all

all: out/cv_sm_hu_short.pdf out/cv_sm_hu.pdf out/cv_sm_hu_long.pdf

out/cv_sm_hu_short.pdf: cv_template.tex $(SECTIONS) $(ASSETS)
	latexmk \
		-pdf \
		-quiet \
		-outdir=out \
		-jobname=cv_sm_hu_short \
		-interaction=nonstopmode \
		-pdflatex='pdflatex %O -interaction=nonstopmode "\input{%S}"' \
		cv_template.tex
	latexmk -outdir=out -jobname=cv_sm_hu_short -c

out/cv_sm_hu.pdf: cv_template.tex $(SECTIONS) $(ASSETS)
	latexmk \
		-pdf \
		-quiet \
		-outdir=out \
		-jobname=cv_sm_hu \
		-interaction=nonstopmode \
		-pdflatex='pdflatex %O -interaction=nonstopmode "\def\mediumform{true}\input{%S}"' \
		cv_template.tex
	latexmk -outdir=out -jobname=cv_sm_hu -c

out/cv_sm_hu_long.pdf: cv_template.tex $(SECTIONS) $(ASSETS)
	latexmk \
		-pdf \
		-quiet \
		-outdir=out \
		-jobname=cv_sm_hu_long \
		-interaction=nonstopmode \
		-pdflatex='pdflatex %O -interaction=nonstopmode "\def\longform{true}\input{%S}"' \
		cv_template.tex
	latexmk -outdir=out -jobname=cv_sm_hu_long -c

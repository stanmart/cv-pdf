SECTIONS = $(wildcard sections/*.tex)
ASSETS = $(wildcard assets/*)

.PHONY: all

all: out/cv_sm_short.pdf out/cv_sm.pdf out/cv_sm_long.pdf

out/cv_sm_short.pdf: cv_template.tex SECTIONS ASSETS
	latexmk \
		-pdf \
		-quiet \
		-outdir=out \
		-jobname=cv_sm_short \
		-interaction=nonstopmode \
		-pdflatex='pdflatex %O -interaction=nonstopmode "\input{%S}"' \
		cv_template.tex
	latexmk -outdir=out -jobname=cv_sm_short -c

out/cv_sm.pdf: cv_template.tex SECTIONS ASSETS
	latexmk \
		-pdf \
		-quiet \
		-outdir=out \
		-jobname=cv_sm \
		-interaction=nonstopmode \
		-pdflatex='pdflatex %O -interaction=nonstopmode "\def\mediumform{true}\input{%S}"' \
		cv_template.tex
	latexmk -outdir=out -jobname=cv_sm -c

out/cv_sm_long.pdf: cv_template.tex SECTIONS ASSETS
	latexmk \
		-pdf \
		-quiet \
		-outdir=out \
		-jobname=cv_sm_long \
		-interaction=nonstopmode \
		-pdflatex='pdflatex %O -interaction=nonstopmode "\def\longform{true}\input{%S}"' \
		cv_template.tex
	latexmk -outdir=out -jobname=cv_sm_long -c

# From  https://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project
# -----------------------------------------------------------------------------
# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
.PHONY: clean

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.

all: longsample
longsample: longsample.pdf


# MAIN PDFLATEX RULE

longsample.pdf: longsample.tex bibliography.bib apa7.cls
	pdflatex longsample
	biber longsample
	pdflatex longsample
	pdflatex longsample

clean:
	@rm -f *.bbl
	@rm -f *.run.xml
	@rm -f *.aux
	@rm -f *.log
	@rm -f *.out
	@rm -f longsample.pdf
	@rm -f *.bcf
	@rm -f *.blg
	@rm -f *.fff
	@rm -f *.ttt

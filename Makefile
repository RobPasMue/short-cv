# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
.PHONY: ROBERTO-PASTOR.pdf all clean

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: clean ROBERTO-PASTOR.pdf

# MAIN LATEXMK RULE

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.

# -interaction=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.

ROBERTO-PASTOR.pdf: src/cv/ROBERTO-PASTOR.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make src/cv/ROBERTO-PASTOR.tex -cd -auxdir=out -outdir=out

clean:
	latexmk -CA src/cv/ROBERTO-PASTOR.tex -cd -auxdir=out -outdir=out

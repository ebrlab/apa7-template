# apa7-template
Latex template for APA7

Generated from https://github.com/ebrlab/apa7-latex-cls-source:

1. Run 1_update_files.zsh to create longsample.tex
2. Separate apa7 source code from files required to create longsample.pdf

The apa7-template folder already contains what is needed. To compile longsample.tex:

either run:

    make clean
    make longsample

or, manually:

   pdflatex longsample
   biber longsample
   pdflatex longsample
   pdflatex longsample


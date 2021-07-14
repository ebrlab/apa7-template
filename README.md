# apa7-template
Latex template for APA7

Generated from https://github.com/ebrlab/apa7-latex-cls-source:

1. Run 1_update_files.zsh to create longsample.tex
2. Separate apa7 source code from files required to create longsample.pdf

This apa7-template folder already contains what is needed.

To use this repository as a template from Github:

1. Go to https://github.com/ebrlab/apa7-template.
2. Click the button "Use this template".
3. Please do use the ebrlab Github organization to host the folder to your new article.
4. On overleaf, you can then "Import from Github" into a new project. Do know that Etienne has a subscription to overleaf, and there can create projects for multiple authors, which the free subscription does not provide.

To compile longsample.tex:

either run:

    make clean
    make longsample

or, manually:

   pdflatex longsample
   biber longsample
   pdflatex longsample
   pdflatex longsample


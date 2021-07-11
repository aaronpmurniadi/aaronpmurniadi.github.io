#!/bin/bash
pandoc -s ./docs/*.md --standalone --top-level-division=section --template=./compiled/template-a4.tex -o ./compiled/tesis-komprehensif-a4.tex

cd ./compiled/
pdflatex -interaction=nonstopmode tesis-komprehensif-a4.tex
pdflatex -interaction=nonstopmode tesis-komprehensif-a4.tex
pdflatex -interaction=nonstopmode tesis-komprehensif-a4.tex

rm tesis-komprehensif-a4.toc
rm tesis-komprehensif-a4.out
rm tesis-komprehensif-a4.log
rm tesis-komprehensif-a4.aux


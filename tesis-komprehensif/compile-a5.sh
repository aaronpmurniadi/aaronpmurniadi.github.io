#!/bin/bash
pandoc -s ./docs/*.md --standalone --top-level-division=chapter --template=./compiled/template-a5.tex -o ./compiled/tesis-komprehensif-a5.tex

cd ./compiled/
arara tesis-komprehensif-a5.tex
#pdflatex -interaction=nonstopmode tesis-komprehensif-a5.tex
#pdflatex -interaction=nonstopmode tesis-komprehensif-a5.tex
#pdflatex -interaction=nonstopmode tesis-komprehensif-a5.tex

rm tesis-komprehensif-a5.toc
rm tesis-komprehensif-a5.out
#rm tesis-komprehensif-a5.log
rm tesis-komprehensif-a5.aux



presentation.pdf: presentation.tex
	pdflatex -halt-on-error presentation.tex \
		&& pdflatex -halt-on-error presentation.tex \
		&& pdflatex -halt-on-error presentation.tex

clean:
	-rm *.aux *.log *.nav *.out *.snm *.toc *.bbl *.blg *.pdf


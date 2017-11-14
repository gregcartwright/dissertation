newProposal.pdf : newProposal.tex references.bib
	pdflatex newProposal.tex
	biber newProposal
	pdflatex newProposal.tex
	pdflatex newProposal.tex
	
.PHONY: clean
clean:
	rm *.log
	rm *.aux
	rm *.bcf
	rm *.blg
	rm *.run.xml
	
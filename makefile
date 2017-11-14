newProposal.pdf : newProposal.tex references.bib
	pdflatex newProposal.tex
	biber newProposal
	pdflatex newProposal.tex
	pdflatex newProposal.tex
	
.PHONY: clean
clean:
	rm -f newProposal.log
	rm -f newProposal.aux
	rm -f newProposal.bbl
	rm -f newProposal.bcf
	rm -f newProposal.blg
	rm -f newProposal.run.xml
	
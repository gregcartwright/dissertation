newProposal.pdf : newProposal.tex references.bib
	pdflatex newProposal.tex
	biber newProposal
	pdflatex newProposal.tex
	pdflatex newProposal.tex

proposal2.pdf : proposal2.tex references.bib
	pdflatex proposal2.tex
	biber proposal2
	pdflatex proposal2.tex
	pdflatex proposal2.tex
	
.PHONY: clean
clean:
	rm -f newProposal.log
	rm -f newProposal.aux
	rm -f newProposal.bbl
	rm -f newProposal.bcf
	rm -f newProposal.blg
	rm -f newProposal.run.xml
	rm -f proposal2.log
	rm -f proposal2.aux
	rm -f proposal2.bbl
	rm -f proposal2.bcf
	rm -f proposal2.blg
	rm -f proposal2.run.xml
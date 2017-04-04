TEX = thesis.tex
BIBER = thesis

all:
	make tex

tex:
	xelatex $(TEX)
	
clean:
	rm -f *.aux *.dvi *.idx *.ilg *.ind *.log *.nav *.out *.snm *.xdv *.toc *.run.xml *.blg *.bcf *.bbl *~

biber:
	biber -l zh__pinyin $(BIBER)

production:
	make tex
	make biber
	make tex
	make tex
	make clean
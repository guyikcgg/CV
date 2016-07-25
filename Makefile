



all: sp en

sp: CV_es.pdf

CV_es.pdf: src/CV_es.tex
	pdflatex src/CV_es.tex

en: CV_en.pdf

CV_en.pdf: src/CV_en.tex
	pdflatex src/CV_en.tex

clean:
	rm -f *.out *.log *.aux

clean-hard:
	rm -f *.pdf

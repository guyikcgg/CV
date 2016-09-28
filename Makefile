



all: es en

es: CV_es.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$<.pdf $<
	mv $<.pdf $<

CV_es.pdf: src/CV_es.tex
	pdflatex src/CV_es.tex

en: CV_en.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$<.pdf $<
	mv $<.pdf $<

CV_en.pdf: src/CV_en.tex
	pdflatex src/CV_en.tex


clean:
	rm -f *.out *.log *.aux

clean-hard:
	$(MAKE) clean
	rm -f *.pdf

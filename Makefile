ALL_FILES = $(wildcard *.tex)  $(wildcard *.bib)  $(wildcard */*.png) 

MAIN = main
TARGET = $(MAIN).pdf

.PHONY:	all clean veryclean

all: veryclean $(TARGET)

$(TARGET): $(ALL_FILES)
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

clean: 
	rm -f *.aux */*.aux
	rm -f *.bbl */*.bbl
	rm -f *.log */*.log
	rm -f *.blg */*.blg
	rm -f *.out */*.out

veryclean: clean  
	rm -rf  ./$(MAIN).pdf

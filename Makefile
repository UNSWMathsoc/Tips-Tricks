

handout:
	latexmk -pdf mathsoc_tipsandtricks.tex

presentation:
	latexmk -pdf

all: handout presentation
	echo


clean:
	rm *.aux *.log *.nav *.snm *.synctex.gz	*.fdb_latexmk
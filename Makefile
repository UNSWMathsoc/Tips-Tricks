
TEXCOMP = latexmk
LATEXFLAGS = -pdf -outdir=auxil
Mover = cd auxil; mv *.pdf ../pdf/; cd ..


handout:
	$(TEXCOMP) $(LATEXFLAGS) mathsoc_tipsandtricks.tex
	$(Mover)

presentation:
	$(TEXCOMP) $(LATEXFLAGS) mathsoc_tipsandtricks_presentation.tex
	$(Mover)

all: handout presentation

clean:
	cd aux
	rm *
	cd ..
	#rm *.aux *.log *.nav *.snm *.fls *.out *.fdb_latexmk *.synctex.gz
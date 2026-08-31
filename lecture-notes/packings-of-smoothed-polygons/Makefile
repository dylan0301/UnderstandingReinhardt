SHELL := /bin/bash
LATEXMK ?= latexmk
JOB := Packings_of_Smoothed_Polygons_Lecture_Notes

.PHONY: all pdf verify clean
all: pdf
pdf:
	mkdir -p build release
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error -outdir=build -jobname=$(JOB) main.tex
	cp build/$(JOB).pdf release/$(JOB).pdf
verify: pdf
	bash scripts/verify.sh
clean:
	$(LATEXMK) -C -outdir=build -jobname=$(JOB) main.tex || true
	find build -type f ! -name '.gitkeep' -delete

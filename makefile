LATEX=latexmk
FLAGS=-cd -pdf -interaction=nonstopmode -file-line-error

DIRS = $(sort $(dir $(wildcard S*/)))
FILES = $(foreach dir,$(DIRS),$(sort $(wildcard $(dir)*.tex)))
OUT = $(foreach file,$(FILES),$(basename $(file)).pdf)

all: $(OUT)

%.pdf: %.tex
	@echo $< $@
	@latexmk $(FLAGS) $<
	@latexmk -c -cd $<

clean: $(OUT)
	@rm -rf $(OUT)

LATEX=latexmk
FLAGS=-cd -pdf -interaction=nonstopmode -file-line-error

DIST=dist
DIRS = $(sort $(dir $(wildcard S*/)))
FILES = $(foreach dir,$(DIRS),$(sort $(wildcard $(dir)*.tex)))
OUT = $(foreach file,$(FILES),$(basename $(file)).pdf)

all: $(shell mkdir -p $(DIST)) $(OUT) distribute

clean:
	@rm -rf $(OUT)
	@rm -rf $(DIST)

distribute:
	$(foreach file,$(OUT),$(shell cp $(file) $(DIST)))

%.pdf: %.tex
	@echo $< $@
	@latexmk $(FLAGS) $<
	@latexmk -c -cd $<

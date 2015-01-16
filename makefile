BIBNAME=bibliography.bib
BIBSRC:=$(shell find bib/ -name "*.bib")

.PHONY: all clean

all: $(BIBNAME)

clean:
	-rm $(BIBNAME)

$(BIBNAME): $(BIBSRC)
	cat $(BIBSRC) > $(BIBNAME)

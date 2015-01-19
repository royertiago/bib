BIBNAME:=bibliography.bib
BIBSRC:=$(shell find bib/ -name "*.bib")

.PHONY: all mostlyclean clean

all: $(BIBNAME)

mostlylcean:

clean:
	rm -f $(BIBNAME)

$(BIBNAME): $(BIBSRC)
	cat $(BIBSRC) > $(BIBNAME)

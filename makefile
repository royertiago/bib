# This makefile is responsible for building the bibliography.
# Altough it works standalone, it is designed to be
# included by other makefiles.
#
# The only needed information is the bibliography destination,
# held by the variable BIB. If not set, defaults to this makefile's
# directory, with name 'bibliography.bib'.
#
# This makefile will define the recipe for the target $(BIB).
# Three other targets are defined: bib-all, bib-mostlyclean
# and bib-clean, with semantics of all, mostlyclean and clean,
# respectively.
#
# This makefile might define other variables and targets.
# Mimicking C convention, every variable name is prefixed by BIB
# and every target name is prefixed by bib-.

# The 'dir' function includes the trailing slash.
BIBDIR:=$(dir $(lastword $(MAKEFILE_LIST)))
BIB?=$(BIBDIR)bibliography.bib
BIBSRC:=$(shell find $(BIBDIR)bib/ -name "*.bib")

.PHONY: bib-all bib-mostlyclean bib-clean

# Prefixed standard targets
bib-all: $(BIB)

bib-mostlyclean:

bib-clean:
	rm -f $(BIB)

$(BIB): $(BIBSRC)
	cat $(BIBSRC) > $(BIB)

# This makefile is responsible for building the bibliography.
# It is designed to be included by other makefiles;
# It does not works standalone.
#
# There is one "input variable", the bibliography destination.
# The name of this file is held in variable 'bib',
# which can be set by the main makefile.
# Defaults to 'bibliography.bib', in this directory.
#
# Other variables are defined. Mimicking C convention,
# every variable name is prefixed by bib_
# and every target name is prefixed by bib-.
#
# This makefile "autoregisters" extra targets as prerequisites
# to the default targets all and clean.

# The 'dir' function includes the trailing slash.
bib_dir := $(dir $(lastword $(MAKEFILE_LIST)))
bib ?= $(bib_dir)bibliography.bib
bib_src := $(shell find $(bib_dir)bib/ -name "*.bib")

.PHONY: bib-all bib-clean

# Prefixed standard targets
all : bib-all
bib-all: $(bib)

clean : bib-clean
bib-clean:
	rm -f $(bib)

$(bib): $(bib_src)
	cat $(bib_src) > $(bib)

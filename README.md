References
==========

This repository contains a list of bibliographical references
in BibTeX format.

Each reference has its own .bib file inside the bib/ subfolder.
The name of the .bib file is the reference cite-key.
All .bib files are concatenated to a single bibliography.bib
by the makefile.

The makefile is designed to be included by other makefiles.
Read the [makefile itself](makefile.mk) for details.


URL access date
---------------
All URL access dates are in TeX format
(yyyy/mm/dd),
surrounded by \accessdate{}.
This macro can, then, be defined in the .tex document
to properly format the date according to the chosen bibliographical style.

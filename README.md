References
==========

This repository contains a list of bibliographical references
in BibTeX format.

Each reference has its own `.bib` file in one of the subdirectories
(`books/`, `papers/`, `theses/`).
Papers also have a corresponding `.pdf` file
(stored with git-annex).


Building
========

This repository features a `makefile`
that simply `cat`enates together all `.bib` files of this repository,
to a single file `bibliography.bib`.

The makefile is designed to be included by other makefiles.
Read the [makefile itself](makefile.mk) for details.

URL access date
---------------
All URL access dates are in TeX format
(yyyy/mm/dd),
surrounded by \accessdate{}.
This macro can, then, be defined in the .tex document
to properly format the date according to the chosen bibliographical style.

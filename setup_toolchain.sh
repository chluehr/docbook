#!/bin/bash
#=======================================
# Install neccessary packagages for
# DocBook XML -> HTML/PDF conversion,
# tested w/ Ubuntu 10.4 LTS

sudo apt-get install		\
	xsltproc		\
	docbook-xsl		\
	fop			\
	docbook-xsl-doc-pdf	\
	pandoc

# eof

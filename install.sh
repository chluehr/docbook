#!/bin/bash
#=======================================
# Install neccessary packagages for
# DocBook XML -> HTML/PDF conversion,
# tested w/ Ubuntu 10.4 LTS

echo "==== Installing Ubuntu DEB packages ... ===="

sudo apt-get install		\
	xsltproc		\
	docbook-xsl		\
	fop			\
	docbook-xsl-doc-pdf	\
	pandoc

echo "==== Installing XSL stylesheets ... ===="

sudo mkdir -p /usr/local/share/xml/docbook 2>/dev/null
sudo cp xsl/* /usr/local/share/xml/docbook/

echo "==== Installing x2doc conversion script ... ===="

sudo cp bin/x2doc /usr/local/bin/

# eof

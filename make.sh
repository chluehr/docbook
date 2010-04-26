#!/bin/bash
#=======================================
#
# Converts DocBook XML to PDF and HTML
#
# @see	https://help.ubuntu.com/community/DocBook
# @todo	Cleanup script, add checks ...
#

# check if docbook source file exists:
if test \! -r "$1"
then

	echo "Error: Can not open DocBook source file [$1]"
	exit 1
fi

BASE=`basename $1 .xml`
TMPFO=$BASE.$$.fo

# Stylesheets:
XSL_XHTML=/usr/share/xml/docbook/stylesheet/nwalsh/xhtml/docbook.xsl
# Original XSL:
#XSL_FO=/usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl
XSL_FO=custom-docbook-fo.xsl

# generate HTML:
echo "GENERATING XHTML $base ..."
xsltproc -o $BASE.html $XSL_XHTML $1

# generate PDF:
echo "GENERATING FO $base ..."			&&
xsltproc -o $TMPFO $XSL_FO $1			&&
echo "GENERATING PDF $base ..."			&&
fop -pdf $BASE.pdf -fo $TMPFO && rm $TMPFO	||
rm *.fo 2>&1 >/dev/null

# eof

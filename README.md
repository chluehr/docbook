Docbook Stuff
=============

* Setup script for ubuntu (toolchain)
* XSL modification for german documents
* Sample DocBook XML
* Make script for building HTML and PDF output
* pandoc samples http://johnmacfarlane.net/pandoc/
  (Markdown to DocBook conversion)


DocBook to HTML / PDF conversion
--------------------------------

> ./make.sh docbook_sample.xml


Markdown to DocBook conversion
------------------------------

* Markdown syntax: http://daringfireball.net/projects/markdown/
* using "pandoc" to convert markdown to DocBook

Example:

> pandoc -s -t docbook -o markdown_sample.xml markdown_sample.md
> ./make.sh markdown_sample.xml 



Docbook helper
==============

Summary
-------

* Install script for ubuntu (toolchain installation)
* XSL modification for documents, minor .fo changes (margins, etc)
* DocBook XML samples
* Markdown (pandoc) samples
* Convert script "x2doc" for building HTML and PDF output from
  Markdown and/or DocBook sources

Good to know
------------

* In order to get good images in the pdf output, specify 
  image sizes, e.g. via Gimp: "Image" => "Print Size"
* More Markdown (pandoc) samples are at 
  http://johnmacfarlane.net/pandoc/
  (Markdown to DocBook conversion)


Installation
------------

Just run the provided install script on a supported Ubuntu
distribution (10.04 for now):

> ./install.sh

This installs the neccessary Ubuntu packages and
copies the x2doc conversion script to /usr/local/bin and 
the xsl stylesheets to /usr/local/share/xml/docbook.


Samples, usage
--------------

Convert a Markdown (pandoc) document to DocBook XML:

> x2doc -f markdown-sample.md

Convert a Markdown (pandoc) document to PDF:

> x2doc -t pdf -f markdown-sample.md

Convert a Markdown (pandoc) document to HTML (one page):

> x2doc -t html -f markdown-sample.md

Convert a Markdown (pandoc) document to HTML (multiple pages):

> x2doc -t htmlmulti -f markdown-sample.md

Convert a DocBook XML document to PDF, specifying a new output file:

> x2doc -t pdf -o newdoc.pdf -f docbook-sample.xml

Convert a DocBook XML document to TYPE):

> x2doc -t TYPE -f docbook-sample.xml

Valid TYPEs are:

* pdf
* html
* htmlmulti
* docbook (not available for DocBook input files .. obviously)

Use the "-h" option for additional usage instructions:

> x2doc -h


EOF
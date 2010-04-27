<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- 
	We use the nwalsh xsl as a foundation for our customizations.
	This is the default location on Ubuntu 10.4 LTS.
 -->
<xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl"/>
<!-- Define a custom font ...-->
<xsl:param name="monospace.font.family" select="'Courier,MS Gothic'"/>
<!-- European paper format -->
<xsl:param name="paper.type" select="'A4'"/>
<!-- Prefix sections with numbers -->
<xsl:param name="section.autolabel" select="1"/>
<!-- Prefix sections number w/ chapter number -->
<xsl:param name="section.label.includes.component.label" select="1"/>

<xsl:param name="graphicsize.extension" select="1"/>

<!-- Set inner margin size -->
<xsl:param name="page.margin.inner" select="'3cm'"/>
<!-- Set outer margin size -->
<xsl:param name="page.margin.outer" select="'3cm'"/>
<!-- Top of page to top of header area -->
<xsl:param name="page.margin.top" select="'1cm'"/>
<!-- Bottom of text area to bottom of footer area -->
<xsl:param name="page.margin.bottom" select="'2.5cm'"/>

<!-- Use page number as reference where link would be? -->
<xsl:param name="insert.xref.page.number" select="'1'"/>

<!-- Height of header area-->
<xsl:param name="region.before.extent" select="'1.5cm'"/>
<!-- Height of footer area -->
<xsl:param name="region.after.extent" select="'0.5cm'"/>

<!-- Top of header area to top of main text area -->
<xsl:param name="body.margin.top" select="'1.5cm'"/>
<!-- Bottom of footer to bottom of page -->
<xsl:param name="body.margin.bottom" select="'0.5cm'"/>

<!--
<xsl:param name="admon.graphics" select="'1'"/>
<xsl:param name="admon.graphics.path" select="'images/'"/>
-->

<!-- Do not generate TOCs for sections or figures -->
<!--
<xsl:param name="generate.toc">
 /article  toc
 /book     toc
</xsl:param>
-->
<!-- Adjust the title inner margin -->
<xsl:param name="title.margin.left" select="'0cm'"/>

<!-- Setup our paragraph settings -->
<xsl:attribute-set name="normal.para.spacing">
   <!-- set paragraph spacings -->
   <xsl:attribute name="space-before.optimum">0.1cm</xsl:attribute>
   <xsl:attribute name="space-before.minimum">0.1cm</xsl:attribute>
   <xsl:attribute name="space-before.maximum">0.1cm</xsl:attribute>
   <!-- set paragraph indentation -->
   <xsl:attribute name="text-indent">0cm</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>

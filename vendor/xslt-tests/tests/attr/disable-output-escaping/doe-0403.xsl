<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="3.0">
  <xsl:output method="xhtml" encoding="UTF-8" indent="no"/>

  <!-- Purpose: Test for disabling-output-escaping="true" in xsl:value-of -->

<xsl:template match="/">
  <out>
    <xsl:value-of select="doc/foo" disable-output-escaping="true"/>
  </out>
</xsl:template>


</xsl:stylesheet>

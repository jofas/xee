<?xml version="1.0"?>
<?spec xslt#format-number?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <!-- FileName: NUMBERFORMAT30 -->
  <!-- Document: http://www.w3.org/TR/xslt -->
  <!-- DocVersion: 19991116 -->
  <!-- Section: 12.3 -->
    <!-- Purpose: Test effects of minus-sign in one pattern. -->

<xsl:decimal-format name="myminus" minus-sign='_' />

<xsl:template match="doc">
  <out>All three should have two prefixes...<xsl:text>
</xsl:text><xsl:value-of select="format-number(-26931.4,'-###,###.###')"/><xsl:text>
</xsl:text><xsl:value-of select="format-number(-26931.4,'zzz-###,###.###','myminus')"/><xsl:text>
</xsl:text><xsl:value-of select="format-number(-26931.4,'_###,###.###','myminus')"/>
  </out>
</xsl:template>

</xsl:stylesheet>

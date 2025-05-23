<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- basic tests with xsl:on-empty -->
  
    <xsl:template name="xsl:initial-template">
        <empty>
            <xsl:variable name="comments" as="comment()*">
                <xsl:comment select="''"></xsl:comment>
                <xsl:comment select="''"><!-- empty comment --></xsl:comment>
                <xsl:comment></xsl:comment>
            </xsl:variable>
            <xsl:copy-of select="$comments" />
            <xsl:on-empty select="for $i in 1 to 100 return $i mod 2"/> 
        </empty>
    </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:variable name="cat-key" as="map(*)"
      select="map{'MMP':1, 'P':2, 'H':3}"/>
        
    
    <!-- xsl:merge with two homogenous files and validation="strict" -->
    <xsl:output method="xml" indent="no"/>
    <xsl:import-schema schema-location="books.xsd"/>
    <xsl:template name="main">
        <books>
            <xsl:merge>
                <xsl:merge-source for-each-source="'books1.xml', 'books2.xml'"
                	select="BOOKLIST/BOOKS/ITEM"
                	streamable="yes"
                	validation="strict">
                        <xsl:merge-key select="$cat-key(@CAT)"/>
                </xsl:merge-source>
                <xsl:merge-action>
                   <xsl:choose>
                     <xsl:when test="current-merge-group() instance of schema-element(ITEM)*">
                       <ok/>
                     </xsl:when>
                     <xsl:otherwise>
                       <bad><xsl:copy-of select="current-merge-group()"/></bad>
                     </xsl:otherwise>
                   </xsl:choose>   
                </xsl:merge-action>
            </xsl:merge>
        </books>
        
    </xsl:template>
</xsl:stylesheet>
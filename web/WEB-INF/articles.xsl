<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		  <body>
   			<xsl:apply-templates/>
  			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="articles">
  <table border="1" width="100%">
    <xsl:for-each select="article">
      <tr>
        <td>
          <i><xsl:value-of select="title"/></i>
        </td>
        <td>
          <xsl:value-of select="date"/>
        </td>
      </tr>
    </xsl:for-each>
  </table>
  </xsl:template>
</xsl:stylesheet>

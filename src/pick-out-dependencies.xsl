<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
		"use strict";
		window.links = [
						<xsl:for-each select="packJSStructure/module">
							<xsl:variable name="valueID" select="id"/>
								<xsl:for-each select="dependencies/dependency">
									{source:"<xsl:value-of select="$valueID"/>", target:"<xsl:apply-templates/>"},
									<xsl:if test="position() = last()"> </xsl:if>
								</xsl:for-each>
						</xsl:for-each>
						]	   
	</xsl:template>	
</xsl:stylesheet>
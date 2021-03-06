<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<table align="center" width="500" cellspacing="10" cellpadding="10" border="2">
			<tbody>
				<tr>
					<th>Title</th>
					<th>Artist</th>
					<th>Price</th>
				</tr>
				<xsl:for-each select="//CD">
					<xsl:sort select="PRICE" data-type="number" order="descending"/>
						<xsl:choose>
							<xsl:when test="PRICE &gt; 10">
								<tr bgcolor="Red">
									<td>
										<xsl:value-of select="TITLE"/>
									</td>
									<td>
										<xsl:value-of select="ARTIST"/>
									</td>
									<td>
										<xsl:value-of select="PRICE"/>
									</td>
								</tr>
							</xsl:when>
							<xsl:otherwise>
								<tr bgcolor="Green">
									<td>
										<xsl:value-of select="TITLE"/>
									</td>
									<td>
										<xsl:value-of select="ARTIST"/>
									</td>
									<td>
										<xsl:value-of select="PRICE"/>
									</td>
								</tr>
							</xsl:otherwise>
						</xsl:choose>
					
				</xsl:for-each>
				<tr>
					<th>Number Of CDS = <xsl:value-of select="count(//CD)"/>
					</th>
				</tr>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>

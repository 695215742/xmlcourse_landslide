<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

	<xsl:output method="html"/>
<!--	<xsl:param name="musidid">3</xsl:param>-->
	<xsl:template match="/">
		<html>
			<head>
				<title>Music Group</title>
				<link rel="stylesheet" href="app2.css"></link>
			</head>
			<body>
				<div class="music_group">
					<xsl:apply-templates select="music_group"/>
				</div>					
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="music_group">
		<div class="logo">
			<xsl:element name="img">
				<xsl:attribute name="src">
					image/<xsl:value-of select="logo"/>
				</xsl:attribute>
			</xsl:element>
		</div>
		<div class="members">
			<div class="members">
				<xsl:apply-templates select="members"/>
			</div>
		</div>
		<div class="description">
			<xsl:value-of select="description"/>
		</div>
	</xsl:template>
	
	<xsl:template match="members">
		<ul class="member">
			<xsl:apply-templates select="member"/>
		</ul>
	</xsl:template>
	
	<xsl:template match="member">
		<li class="member">
			<p><xsl:value-of select="stuID"/></p>
			<p><xsl:value-of select="name"/></p>
			<p><xsl:value-of select="email"/></p>
			<!--<xsl:apply-templates select="stuID"/>
			<xsl:apply-templates select="name"/>
			<xsl:apply-templates select="email"/>-->
		</li>
	</xsl:template>


</xsl:stylesheet>

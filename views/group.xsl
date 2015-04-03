<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes'/>

<xsl:template match="/">
  <html>
  <head>
	  <link href="stylesheets/bootstrap.min.css" rel="stylesheet"></link>
	  <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	  <script src="./javascripts/bootstrap.min.js"></script>
  </head>
  <body>
		<xsl:for-each select="group/members">
		<div class="carousel-inner">
			<div class="active item">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="background" />
					</xsl:attribute>
				</img>
				<div class="container">
					<div class="carousel-caption">
						<h1 class="text-muted"><xsl:value-of select="mname"/></h1>
						<h3 class="text-muted"><xsl:value-of select="member1/name"/> and <xsl:value-of select="member2/name"/></h3>
						<h5 class="text-muted"><em><xsl:value-of select="introduction"/></em></h5>
						<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
					</div>
				</div>
			</div>
		</div>
		</xsl:for-each>		
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
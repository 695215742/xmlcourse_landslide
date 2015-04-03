<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method='html' version='1.0' encoding='UTF-8' indent='yes'/>

<xsl:template match="/">
  <html>
  <head>
	  <link href="stylesheets/bootstrap.min.css" rel="stylesheet"></link>
	  <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	  <script src="./javascripts/bootstrap.min.js"></script>
	  <script>
			  $(function () {
				  $('[data-toggle="popover"]').popover()
				});
	  </script>
  </head>
  <body>
		<xsl:for-each select="Animations/Animation">
			  <div class="carousel slide">
					<xsl:attribute name="id">
						<xsl:value-of select="General/Name"/>
					</xsl:attribute>
				  <ol class="carousel-indicators">
					<li data-slide-to="0" class="active">
						<xsl:attribute name="data-target">
							<xsl:value-of select="General/SE_name"/>
						</xsl:attribute>
					</li>
					<li data-slide-to="1">
						<xsl:attribute name="data-target">
							<xsl:value-of select="General/SE_name"/>
						</xsl:attribute>
					</li>
					<li data-slide-to="2">
						<xsl:attribute name="data-target">
							<xsl:value-of select="General/SE_name"/>
						</xsl:attribute>
					</li>
				  </ol>
				  <div class="carousel-inner">
					<div class="active item">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="General/Picture1" />
							</xsl:attribute>
						</img>
						<div class="container">
							<div class="carousel-caption">
								<h1 class="text-muted"><xsl:value-of select="General/Name"/></h1>
								<p class="text-primary"><xsl:value-of select="General/Introduction"/></p>
							</div>
						</div>
					</div>
					<div class="item">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="General/Picture2" />
							</xsl:attribute>
						</img>
						<div class="container">
							<div class="carousel-caption">
								<h1 class="text-muted"><xsl:value-of select="General/Name"/></h1>
								<h2 class="text-primary"><xsl:value-of select="General/Country"/><xsl:value-of select="General/Company"/></h2>
								<h3 class="text-primary"><xsl:value-of select="General/Kind"/></h3>
								<h3 class="text-primary"><xsl:value-of select="General/Original"/></h3>
							</div>
						</div>
					</div>
					<div class="item">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="General/Picture3" />
							</xsl:attribute>
						</img>
						<div class="container">
							<div class="carousel-caption">
								<h1 class="text-muted"><xsl:value-of select="General/Name"/></h1>
								<h4 class="text-primary">Director:<xsl:value-of select="General/Director"/></h4>
								<h4 class="text-primary">Date:<xsl:value-of select="General/Date"/></h4>
								<h5 class="text-primary">Sets:<xsl:value-of select="General/Sets"/></h5>
							</div>
						</div>
					</div>
				  </div>
				  <!-- Carousel nav -->
				  <a class="carousel-control left" data-slide="prev">
						<xsl:attribute name="href">
							<xsl:value-of select="General/SE_name"/>
						</xsl:attribute>
				  </a>
				  <a class="carousel-control right" data-slide="next">
						<xsl:attribute name="data-target">
							<xsl:value-of select="General/SE_name"/>
						</xsl:attribute>
				  </a>
			</div>
			<div class="container">
			<xsl:for-each select="Characters/Character">
					  <div class="col-xs-6 col-md-3">
						<a class="thumbnail"  data-toggle="popover" title="Introduction" data-placement="top">
							<xsl:attribute name="data-content">
								<xsl:value-of select="Ch_introduction" />
							  </xsl:attribute>
						  <img>
							  <xsl:attribute name="src">
								<xsl:value-of select="Ch_picture" />
							  </xsl:attribute>
						  </img>
						</a>
						<h4 class="text-center text-primary"><xsl:value-of select="Ch_name"/></h4>
					  </div>
			</xsl:for-each>
			
			</div>
		</xsl:for-each>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
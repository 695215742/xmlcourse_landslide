<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<head>
				<style type="text/css">
					div#container{height=700px;}
					div#container1{height=430px;background-image:url('./images/container2.jpeg');}
					div#container2{height=285px;background-image:url('./images/container2.jpeg');}
					div#header {height:5px;}
					div#empty {height:420px;width:5%;float:left;}
					div#image {height:420px;width:30%;float:left;}
					div#content  {height:420px;width:65%;float:left;}
					div#introduce {height:100x;}
					div#comment {height:180px;}
				</style>
			</head>
			<body>
			<xsl:for-each select="movielist/movie">
				<div id="container">
					<div id="container1">
					<div id="header">
					<font face="幼圆">
						<h1 align="center"><xsl:value-of select="film_name"/></h1>
					</font>
					</div>	
					<div id="image">
						<a href="{link}">
							<img alt="{film_name}" src="{image}" height="420px" width="100%"/>
						</a>		
					</div>
					<div id="empty">
					</div>
					<div id="content">
						<br/>
						<br/>
						年代：<xsl:value-of select="era"/>
						<br/>
						<br/>
						语言：<xsl:value-of select="language"/>
						<br/>
						<br/>
								类型：<xsl:value-of select="categories"/>
						<br/>
						<br/>
								国家：<xsl:value-of select="country"/>
						<br/>
						<br/>
								上映时间：<xsl:value-of select="online_time"/>
						<br/>
						<br/>
								时长：<xsl:value-of select="duration"/>
						<br/>
						<br/>
								导演：<xsl:value-of select="director"/>
						<br/>
						<br/>
								主演：<xsl:value-of select="main_actor"/>
						<br/>
						<br/>
								得分：<xsl:value-of select="score"/>
						<br/>
					</div>
					<div style="height:5px">
					</div>
					</div>
					<div id="container2">
						<div id="introduce">
						<table>
							<p>
								<b>关键字:</b>
								<xsl:value-of select="introduction/keyword"/>
							</p>
							<p>
								<b>简介:</b>
								<xsl:value-of select="introduction/content"/>
							</p>
						</table>	
					</div>
					<div style="height:5px">
					</div>
					<div id="comment">
						<b>评论：</b>
						<table frame="below">
							<xsl:for-each select="comment_list/comment">
								<tr align="left">
									<td>
										<p align="left">
											<xsl:value-of select="c_content"/>
										</p>
										<p align="right">
											<xsl:value-of select="user_name"/> <xsl:value-of select="c_date"/>
										</p>
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</div>
					</div>	
				</div>
			</xsl:for-each>	
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

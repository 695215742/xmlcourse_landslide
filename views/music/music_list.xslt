<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

	<xsl:output method="html"/>
<!--	<xsl:param name="musidid">3</xsl:param>-->
	<xsl:template match="/">
		<html>
			<head>
				<title>Music List</title>
				<link rel="stylesheet" href="./stylesheets/app.css"></link>
			</head>
			<body>
			<div class="music_list_info">
				<xsl:apply-templates select="music_list/music_list_info"/>
				
			</div>
			
			
			<div class="music_list">
			<div class="album_mlist_tt">
				<img alt="" src="images/music_list.png"/>
			</div>
				<xsl:apply-templates select="music_list"/>
			</div>
					
			</body>
		</html>
	</xsl:template>

	<xsl:template match="music_list_info">
		<xsl:element name="img">
			<xsl:attribute name="src">
				images/<xsl:value-of select="music_list_booklet"/>
			</xsl:attribute>
			<xsl:attribute name="class">
				album_cover
			</xsl:attribute>
		</xsl:element>
		<div class="album_text">
		<h2><xsl:value-of select="music_list_name"/></h2>
		<p>创建人：<xsl:value-of select="creator"/></p>
		<p>创建时间：<xsl:value-of select="create_date"/></p>
		<p>标签：<xsl:value-of select="tag"/></p>
		</div>
		<div class="album_detail">
			<h4>歌单简介：</h4>
		<p><xsl:value-of select="description"/></p></div>
		
	</xsl:template>
	
	<xsl:template match="music_list">
		<xsl:apply-templates select="/music_list/music"/>
	</xsl:template>
	
	<xsl:template match="music">
	<div class="music">
		<div class="metadata"><xsl:apply-templates select="metadata"/></div>
		<div class="general"><xsl:apply-templates select="general"/></div>
		<div class="comment"><xsl:apply-templates select="metadata/comment"/></div>		
	</div>
	</xsl:template>
	
	<xsl:template match="metadata">
		<xsl:apply-templates select="artist_name"/>
		<xsl:apply-templates select="track_title"/>
		<xsl:apply-templates select="date"/>
		<xsl:apply-templates select="genre"/>
		<xsl:apply-templates select="composer"/>
		<xsl:apply-templates select="track_number"/>
		<xsl:apply-templates select="total_tracks"/>

	</xsl:template>
	
	<xsl:template match="artist_name">
		<div class="artist_name"><span class="green">艺术家：</span><xsl:value-of select="."/></div>
	</xsl:template>
	
	<xsl:template match="track_title">
<!--				<div class="track_title">标题<xsl:value-of select="."/></div>-->
	</xsl:template>
	
	<xsl:template match="date">
			<div class="date"><span class="green">发行日期：</span><xsl:value-of select="."/></div>
	</xsl:template>
	
	<xsl:template match="genre">
			<div class="genre"><span class="green"> 流派：</span><xsl:value-of select="."/></div>
	</xsl:template>
	
	<xsl:template match="composer">
		<div class="composer"><span class="green">作曲：</span><xsl:value-of select="."/></div>
	</xsl:template>
	
	<xsl:template match="track_number">
<!--			<div class="track_number">音轨号：<xsl:value-of select="."/></div>-->
	</xsl:template>
	<xsl:template match="comment">
			<p>评论：</p><xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="total_tracks">
<!--			<div class="total_tracks">合计音轨：<xsl:value-of select="."/></div>-->
	</xsl:template>	
	<xsl:template match="booklet">
			<div class="booklet">
					<xsl:element name="img">
							<xsl:attribute name="src">
								images/<xsl:value-of select="."/>
							</xsl:attribute>
							<xsl:attribute name="width">
								70px
							</xsl:attribute>
					</xsl:element>
			</div>
	</xsl:template>
	
	<xsl:template match="general">
		<xsl:apply-templates select="../metadata/booklet"/>
		
		<xsl:apply-templates select="file_name"/>
		<img alt="" src="images/play.png" style="float:left;display:block;height:50px;clear:both;cursor:pointer"></img>
		<div class="file_info">
		<xsl:apply-templates select="file_size"/>
		<xsl:apply-templates select="duration"/>
		<xsl:apply-templates select="sample_rate"/>
		<xsl:apply-templates select="channels"/>
		<xsl:apply-templates select="bitraterate"/>
		</div>
	</xsl:template>
	
	<xsl:template match="file_name">
		<div class="file_name"><xsl:value-of select="."/></div>
	</xsl:template>
	
	<xsl:template match="file_size">
		<div class="file_size">文件大小：<xsl:value-of select="."/></div>
	</xsl:template>
	
	<xsl:template match="duration">
		<div class="duration">时长：<xsl:value-of select="."/></div>
	</xsl:template>
	
	
	<xsl:template match="sample_rate">
		<div class="sample_rate">采样率：<xsl:value-of select="."/></div>
	</xsl:template>
	
	
	<xsl:template match="channels">
		<div class="channels">声道数:<xsl:value-of select="."/></div>
	</xsl:template>
	
	
	<xsl:template match="bitrate">
		<div class="bitraterate">比特率:<xsl:value-of select="."/></div>
	</xsl:template>

</xsl:stylesheet>

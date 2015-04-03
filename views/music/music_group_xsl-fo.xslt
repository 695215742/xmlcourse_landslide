<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="xml"/>
	<xsl:template match="/">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="master" page-width="210mm" page-height="297mm" margin-top="0" margin-bottom="0" margin-left="0" margin-right="0">
					<fo:region-body margin="0"/>
					<fo:region-before extent="0"/>
					<fo:region-after extent="0"/>
					<fo:region-start extent="0"/>
					<fo:region-end extent="0"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="master">
				<fo:flow flow-name="xsl-region-body">
					<fo:block-container>
						<xsl:apply-templates select="music_group"/>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template match="music_group">
		<fo:block>
			<fo:external-graphic src="src">
				<xsl:attribute name="src">image/<xsl:value-of select="logo"/></xsl:attribute>
			</fo:external-graphic>
		</fo:block>
		<fo:block-container>
			<xsl:apply-templates select="members"/>
		</fo:block-container>
		<fo:block>
			<xsl:value-of select="description"/>
		</fo:block>
	</xsl:template>
	<xsl:template match="members">
		<xsl:apply-templates select="member"/>
	</xsl:template>
	<xsl:template match="member">
		<fo:block>
			<xsl:value-of select="stuID"/>
		</fo:block>
		<fo:block>
			<xsl:value-of select="name"/>
		</fo:block>
		<fo:block>
			<xsl:value-of select="email"/>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>

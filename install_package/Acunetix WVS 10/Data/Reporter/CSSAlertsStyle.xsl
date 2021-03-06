<!-- Acunetix WVS Alerts style  -->
<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
<xsl:template match="/">
 <html>

  <head>
  	<link rel="stylesheet" type="text/css" href="..\Templates\ScanInfo\SIStyle.css"/>
  	<link rel="stylesheet" type="text/css" href="..\Templates\ScanInfo\SITextStyle.css"/>
  </head> 

  <body>

 	<!-- TopBar -->    
	<div style="height: 29px; margin-top:3px; margin-bottom:8px; margin-left:4px; margin-right:4px;border-bottom:#CCCCCC 1px solid">
		<img src="../Graphics/acuheader-left.png" width="113" height="24" style="float:left;"/>
		<img src="../Graphics/acuheader-right.png" width="186" height="24" style="float:right;"/>
	</div>
	
	<div style="padding: 10px; word-wrap: break-word;">
 	<!-- End TopBar -->
 
      <div style="height:36px; overflow: hidden">
        <div class="sectionheadgrey" style="height:36px;">
          <img src="../Graphics/ScanInfo/grey-u-l.gif" width="12" height="36" style="float:left"/>		
        </div>
        <div class="sectionheadtext" style="height:36px; width:100%; position:relative; top:-33px; white-space:nowrap; overflow: hidden">
          <img src="../Graphics/transparent-dot.gif" width="16" height="1"/>Alerts summary</div>
        
        <div style="height:36px; position:relative; top:-72px;">
          <img src="../Graphics/ScanInfo/grey-u-r.gif" width="12" height="36" style="float:right"/>
          <!--<img src="../Graphics/sev-grey.png" style="float:right"/>	-->
        </div>
      </div>
      
 	<!-- AlertGroups -->
	<xsl:if test="count(Alerts/AlertGroup) > 0">
      
	  <xsl:for-each select="Alerts/AlertGroup">  
	  <!-- AlertGroup -->	  

	   <div class="infotext bgrey">
	   
	   <!-- Affected -->	
	   <xsl:if test="count(Affected) > 0">
		   <div class="infotexttitle bgrey"><img src="../Graphics/vuln-{@color}.png" width="16" height="16" hspace="6" vspace="2" align="absmiddle" /><xsl:value-of select="@name"/></div>

	    <ul style="padding-left: 30px">
		   <xsl:for-each select="Affected/File">
				<li><xsl:value-of select="@name"/>
				
				<!--   <xsl:if test="count(Affected/Name/Params/Name) > 0">	-->
				   <ul style="padding-left: 20px">	
					   <xsl:for-each select="Params/Param">
							<li><font color="navy"><xsl:value-of select="@name"/></font></li>
					   </xsl:for-each>
				   </ul>
				 <!--   </xsl:if> -->
				   
				</li>				
		   </xsl:for-each>			   
	    </ul>		
	    
	   </xsl:if>	
	   
	   </div>
	  <!-- End AlertGroup -->  
	  
	  </xsl:for-each>  
	 
    </xsl:if>

	<!-- No report items are available -->
	<xsl:if test="count(Alerts/AlertGroup) = 0">
		<div class="infotext bgrey">
		No report items are available.
		</div>
    </xsl:if>

	   <div class="sectionfootgrey" style="margin-bottom:10px;">
		   <img src="../Graphics/ScanInfo/grey-l-l.gif" width="12" height="18" style="float:left"/>
		   <img src="../Graphics/ScanInfo/grey-l-r.gif" width="12" height="18" style="float:right"/>
	   </div>       	  
  
  
    </div>    	 
        	 
 	<!-- Copyright 	-->

	<div style=" height:20px; font-family:verdana, arial,  serif; font-size:7pt; color:#787878; margin: 0px;background-color:#e6e6e6;vertical-align:middle;border-top: 0px solid #CCCCCC;padding-top: 3px;">
	<div style="float:left; height:17px"><img src="../Graphics/logo_bw.png" width="18" height="13" style="vertical-align:middle; margin-left:4px;"/> <div style="margin-left:4px; display:inline; vertical-align:middle;" id="replace_Copyright"></div></div><div style="float:right; margin-right: 4px; height:17px" id="replace_LongVersionInfo"></div>
	</div> 
  
 	<!-- End Copyright -->
  
  </body>
  
 </html>
  
</xsl:template>
</xsl:stylesheet>  
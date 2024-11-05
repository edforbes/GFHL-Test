<?xml version="1.0" encoding="utf-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="html" version="4.0" /> 
<xsl:template match="/">    
<html lang="en">
<head>
<title>GFHL - Rosters</title>

<style>
body
{
	background-color:#000000; 
        color:#FFFFFF; 	
        font-family: Verdana, sans-serif;
        font-size:24px;
}
table 
{	border-width:2px;	
        font-size:18px; 	
        border-color:#ffffff; 	
        border-style:ridge;  
        border-collapse:collapse;
}      

td 
{	border-width:1px;
	border-color:#FFFFFF;
        border-style:ridge;   
        padding:3px; 
        color:#FFFFFF;
}

/* Tables  */
    table.noborder {border-width: 0px;
                    font-size: 18px;
                    font-family: Verdana, sans-serif; 
                    border-style: ridge;
                    border-collapse: collapse;} 

    td.no  {border-width: 0px;
            border-style: ridge; 
            padding: 3px;}


    tr.colourgoalie    td {color:#FF0000;}
    tr.colourdefman    td {color:#7CFC00;}
    tr.colourfreeagent td {color:#800080;}
    tr.colourheader    td {color:#FFFF00;font-size: 24px;}

a, a:link, a:visited {
	text-decoration: none; 
	font-family: Verdana, sans-serif; 
	}
a:hover, a:active {
	text-decoration: underline;
	}

a.colorgoalie	 {color:#FF0000;}
a.colordefman	 {color:#7CFC00;}
a.colorfreeagent {color:#800080;}
a.colorforward	 {color:#FFFFFF;}

</style>
</head>

<body>

<center>

<b>Rosters</b>
<p />
</center>
<p />

<p />
<table class="noborder">
	<tr>
		<td><center><b>Anaheim Ducks</b></center></td>
	</tr>
	<tr>
		<td><center><b>GM: Tim </b></center></td>
	</tr>
	<xsl:for-each select="GFHL/DB/Player[TEAM='ANA']">
      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
	<tr>
		<td class="no">
		<center>
                    	<xsl:value-of select="POS"/>
                </center>
		</td>
		
		<td class="no">
		<center>
			<xsl:value-of select="NAME"/>
		</center>
		</td>
	</tr>
	</xsl:for-each>
</table>
</center>

</body>
</html>
</xsl:template> 
</xsl:stylesheet> 


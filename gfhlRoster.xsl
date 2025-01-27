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
        font-size:14px; 	
        border-color:#ffffff; 	
        border-style:ridge;  
        border-collapse:collapse;
}      

td 
{	border-width:1px;
	border-color:#FFFFFF;
        border-style:ridge;   
        padding:3px; 

}

/* Tables  */
table.noborder {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif; 
	border-style: ridge;
	border-collapse: collapse;} 

table.team {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px}

table.TeamTitleANA {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 300px;
	background: #CF4520;
	color: #010101;}

table.TeamRosterANA {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 300px;
	background: #000000;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Anaheim(Edited).png');
	background-size: 285px 520px;
	background-blend-mode: difference;
	color: #FFFFFF;}

table.TeamTitleCGY {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #C8102E;
	color: #010101;}

table.TeamRosterCGY {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Calgary(Edited).png');
	background-size: 285px 520px;
	background-blend-mode: multiply;
	color: #C8102E;}
	
table.TeamTitleCHI {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #C8102E;
	color: #010101;}

table.TeamRosterCHI {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #C8102E;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Chicago');
	background-size: 285px 520px;
	background-blend-mode: multiply;
	color: #FFFFFF;}
	
table.TeamTitleCOL {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #6F263D;
	color: #236192;}

table.TeamRosterCOL {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Colorado');
	background-size: 285px 520px;
	background-blend-mode: multiply;
	color: #010101;}

table.TeamTitleDAL {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #00843D;
	color: #010101;}

table.TeamRosterDAL {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	font-weight: bold;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Dallas');
	background-size: 285px 520px;
	opacity: 0.3;
	color: #00843D;}

table.TeamTitleEDM {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #00205B;
	color: #CF4520;}

table.TeamRosterEDM {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Edmonton');
	background-size: 285px 520px;
	opacity: 0.35;
	color: #00205B;}
	
table.TeamTitleLA {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #A2AAAD;
	color: #010101;}

table.TeamRosterLA {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/LosAngeles');
	background-size: 285px 520px;
	opacity: 0.4;
	color: #010101;}
	
table.TeamTitleMIN {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #154734;
	color: #EAAA00;}

table.TeamRosterMIN {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Minnesota');
	background-size: 285px 520px;
	opacity: 0.45;
	color: #154734;}

table.TeamTitleNSH {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #041E42;
	color: #FFB81C;}

table.TeamRosterNSH {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Nashville');
	background-size: 285px 520px;
	opacity: 0.5;
	color: #041E42;}

table.TeamTitleSJ {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #006271;
	color: #010101;}

table.TeamRosterSJ {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/SanJose');
	background-size: 285px 520px;
	opacity: 0.55;
	color: #006271;}
	
table.TeamTitleSEA {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #051C2C;
	color: #6BA4B8;}

table.TeamRosterSEA {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Seattle');
	background-size: 285px 520px;
	opacity: 0.60;
	color: #051C2C;}
	
table.TeamTitleSTL {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #003087;
	color: #FFB81C;}

table.TeamRosterSTL {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/StLouis');
	background-size: 285px 520px;
	opacity: 0.65;
	color: #003087;}

table.TeamTitleUTA {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #69B3E7;
	color: #010101;}

table.TeamRosterUTA {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Utah');
	background-size: 285px 520px;
	opacity: 0.7;
	color: #010101;}

table.TeamTitleVAN {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #00205B;
	color: #00843D;}

table.TeamRosterVAN {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Vancouver');
	background-size: 285px 520px;
	opacity: 0.75;
	color: #00205B;}
	
table.TeamTitleVGK {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #B9975B;
	color: #333F48;}

table.TeamRosterVGK {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Vegas');
	background-size: 285px 520px;
	opacity: 0.8;
	color: #333F48;}
	
table.TeamTitleWPG {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #041E42;
	color: #A2AAAD;}

table.TeamRosterWPG {border-width: 0px;
	font-size: 14px;
	font-family: Verdana, sans-serif;
	border-style: ridge;
	border-collapse: collapse;
	width: 285px;
	background: #FFFFFF;
	background-repeat: no-repeat;
	background-image: url('image/Rosters/Winnipeg');
	background-size: 285px 520px;
	opacity: 0.85;
	color: #041E42;}


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
	text-decoration: none;
	}

a.ANA		 {color:#010101;}
a.CGY		 {color:#010101;}
a.CHI		 {color:#010101;}
a.COL		 {color:#236192;}
a.DAL		 {color:#010101;}
a.EDM		 {color:#CF4520;}
a.LA		 {color:#010101;}
a.MIN		 {color:#EAAA00;}
a.NSH		 {color:#FFB81C;}
a.SJ		 {color:#010101;}
a.SEA		 {color:#6BA4B8;}
a.STL		 {color:#FFB81C;}
a.UTA		 {color:#010101;}
a.VAN		 {color:#00843D;}
a.VGK		 {color:#333F48;}
a.WPG		 {color:#A2AAAD;}
a.colorgoalie	 {color:#FF0000;}
a.colordefman	 {color:#7CFC00;}
a.colorfreeagent {color:#800080;}
a.colorforward	 {color:#FFFFFF;}

</style>
</head>

<body>
	<center> <h2> Western Rosters </h2> </center>
	<p />
	<p />
	<p />
	<center>
	<table class="noborder">
		<tr>
			<td class="no" >
				<table class="TeamTitleANA">
					<tr>	<td class="no" /><td class="no"> <center> ANAHEIM DUCKS </center> </td>								</tr>
					<tr> 	<td class="no" /><td class="no"> <center> GM: <a href="mailto:timjhamilton@hotmail.com" class="ANA"> TIM </a> </center></td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br/> </td>											</tr>
				</table>
				<table class="TeamRosterANA">
					<xsl:for-each select="GFHL/DB/Player[TEAM='ANA']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleCGY">
					<tr>	<td class="no" /><td class="no"> <center> CALGARY FLAMES </center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:jachan87@gmail.com" class="CGY"> JAY </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>										</tr>
				</table>
				<table class="TeamRosterCGY">
					<xsl:for-each select="GFHL/DB/Player[TEAM='CGY']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleCHI">
					<tr>	<td class="no" /><td class="no"> <center> CHICAGO BLACKHAWKS </center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:jdfitz12@yahoo.com" class="CHI"> JOHN </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>											</tr>
				</table>	
				<table class="TeamRosterCHI">
					<xsl:for-each select="GFHL/DB/Player[TEAM='CHI']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleCOL">
					<tr>	<td class="no" /><td class="no"> <center> COLORADO AVALANCHE </center> </td>								</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:hektormcdonnell@gmail.com" class="COL"> SHANNON </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>												</tr>
				</table>
				<table class="TeamRosterCOL">
					<xsl:for-each select="GFHL/DB/Player[TEAM='COL']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
		
		</tr>
	</table>
	<p />
	<table class="noborder">
		<tr>
			<td class="no" >
				<table class="TeamTitleDAL">
					<tr>	<td class="no" /><td class="no"> <center> DALLAS STARS </center> </td>									</tr>
					<tr> 	<td class="no" /><td class="no"> <center> GM: <a href="mailto:mailto:simonyu84@gmail.com" class="DAL"> SIMON </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>												</tr>
				</table>
				<table class="TeamRosterDAL">
					<xsl:for-each select="GFHL/DB/Player[TEAM='DAL']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleEDM">
					<tr>	<td class="no" /><td class="no"> <center> EDMONTON OILERS </center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:mjohns05@outlook.com" class="EDM"> MIKEY </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center> HC: WAYNE GRETZKY </center> </td>							</tr>
				</table>
				<table class="TeamRosterEDM">
					<xsl:for-each select="GFHL/DB/Player[TEAM='EDM']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleLA">
					<tr>	<td class="no" /><td class="no"> <center> LOS ANGELES KINGS</center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:tblain1@gmail.com" class="LA"> TOM </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>										</tr>
				</table>
				<table class="TeamRosterLA">
					<xsl:for-each select="GFHL/DB/Player[TEAM='LA']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleMIN">
					<tr>	<td class="no" /><td class="no"> <center> MINNESOTA WILD </center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:leduc_paul@hotmail.com" class="MIN"> PAUL </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center> HC: MARIAN GABORIK ​</center> </td>							</tr>
				</table>
				<table class="TeamRosterMIN">
					<xsl:for-each select="GFHL/DB/Player[TEAM='MIN']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
		
		</tr>
	</table>
	<p />
	<table class="noborder">
		<tr>
			<td class="no" >
				<table class="TeamTitleNSH">
					<tr>	<td class="no" /><td class="no"> <center> NASHVILLE PREDATORS </center> </td>							</tr>
					<tr> 	<td class="no" /><td class="no"> <center> GM: <a href="mailto:bharwood84@hotmail.com" class="NSH"> BRETT </a> </center></td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center>  HC: MIKE FISHER​ </center> </td>							</tr>
				</table>
				<table class="TeamRosterNSH">
					<xsl:for-each select="GFHL/DB/Player[TEAM='NSH']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleSJ">
					<tr>	<td class="no" /><td class="no"> <center> SAN JOSE SHARKS </center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:bealls77corvette@gmail.com" class="SJ"> PHIL </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center> HC: MIKE RICCI​ </center> </td>							</tr>
				</table>
				<table class="TeamRosterSJ">
					<xsl:for-each select="GFHL/DB/Player[TEAM='SJ']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>

			</td>
			<td class="no" >
				<table class="TeamTitleSEA">
					<tr>	<td class="no" /><td class="no"> <center> SEATTLE KRAKEN </center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:nspaeth@hotmail.com" class="SEA"> NEIL </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>											</tr>
				</table>
				<table class="TeamRosterSEA">
					<xsl:for-each select="GFHL/DB/Player[TEAM='SEA']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleSTL">
					<tr>	<td class="no" /><td class="no"> <center> ST. LOUIS BLUES </center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:cultsuperhero@gmail.com" class="STL"> MIKE </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>											</tr>
				</table>
				<table class="TeamRosterSTL">
					<xsl:for-each select="GFHL/DB/Player[TEAM='STL']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
		
		</tr>
	</table>
	<p />
	<table class="noborder">
		<tr>
			<td class="no" >
				<table class="TeamTitleUTA">
					<tr>	<td class="no" /><td class="no"> <center> UTAH HOCKEY CLUB </center> </td>							</tr>
					<tr> 	<td class="no" /><td class="no"> <center> GM: <a href="mailto:mailto:gbunn19@gmail.com" class="UTA"> GARY </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center> HC: JEREMY ROENICK </center> </td>							</tr>
				</table>
				<table class="TeamRosterUTA">
					<xsl:for-each select="GFHL/DB/Player[TEAM='UTA']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleVAN">
					<tr>	<td class="no" /><td class="no"> <center> VANCOUVER CANUCKS </center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:mcgrawtalen@gmail.com" class="VAN"> TALEN </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>											</tr>
				</table>
				<table class="TeamRosterVAN">
					<xsl:for-each select="GFHL/DB/Player[TEAM='VAN']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleVGK">
					<tr>	<td class="no" /><td class="no"> <center> VEGAS GOLDEN KNIGHTS</center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:martybaroni@gmail.com" class="VGK"> MARTY </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>											</tr>
				</table>
				<table class="TeamRosterVGK">
					<xsl:for-each select="GFHL/DB/Player[TEAM='VGK']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="TeamTitleWPG">
					<tr>	<td class="no" /><td class="no"> <center> WINNIPEG JETS </center> </td>								</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:kyle.gartner@gmail.com" class="WPG"> KYLE </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>											</tr>
				</table>
				<table class="TeamRosterWPG">
					<xsl:for-each select="GFHL/DB/Player[TEAM='WPG']">
					      	<xsl:sort select="SLOT" data-type="number" order="ascending"/>
						<xsl:sort select="NAME" data-type="number" order="ascending"/>
						<tr>
							<td class="no">
								<xsl:choose>
  									<xsl:when test="SLOT = 17">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT = 18">
								   		ENF
								  	</xsl:when>
  									<xsl:when test="SLOT > 20">
								   		RES
								  	</xsl:when>
								  	<xsl:otherwise>
								    		<xsl:value-of select="POS"/>
								  	</xsl:otherwise>
								</xsl:choose>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
		
		</tr>
	</table>
	</center>
</body>
</html>
</xsl:template> 
</xsl:stylesheet> 

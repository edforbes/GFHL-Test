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
        color:#FFFFFF;
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
                    border-style: ridge;
                    border-collapse: collapse;
		    width: 285px}
	
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

	<center> <b> Western Rosters </b> </center>
	<p />
	<p />
	<p />
	<table class="noborder">
		<tr>
			<td class="no" >
				<table class="team"; background-image: URL('image\Rosters\Anaheim'); width:285px; height:485px >
					<tr>	<td class="no" /><td class="no"> <center> ANAHEIM DUCKS </center> </td>						</tr>
					<tr> 	<td class="no" /><td class="no"> <center> GM: <a href="mailto:timjhamilton@hotmail.com"> TIM </a> </center></td></tr>
					<tr>	<td class="no" /><td class="no"> <br/> </td>									</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='ANA']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> CALGARY FLAMES </center> </td>					</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:jachan87@gmail.com"> JAY </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>									</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='CGY']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> CHICAGO BLACKHAWKS </center> </td>					</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:jdfitz12@yahoo.com"> JOHN </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>									</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='CHI']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> COLORADO AVALANCHE </center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:hektormcdonnell@gmail.com"> SHANNON </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>										</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='COL']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
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
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> DALLAS STARS </center> </td>							</tr>
					<tr> 	<td class="no" /><td class="no"> <center> GM: <a href="mailto:mailto:simonyu84@gmail.com"> SIMON </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>										</tr>

					<xsl:for-each select="GFHL/DB/Player[TEAM='DAL']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> EDMONTON OILERS </center> </td>					</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:mjohns05@outlook.com"> MIKEY </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center> HC: WAYNE GRETZKY </center> </td>					</tr>

					<xsl:for-each select="GFHL/DB/Player[TEAM='EDM']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> LOS ANGELES KINGS</center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:tblain1@gmail.com"> TOM </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>									</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='LA']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> MINNESOTA WILD </center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:leduc_paul@hotmail.com"> PAUL </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center> HC: MARIAN GABORIK ​</center> </td>						</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='MIN']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
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
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> NASHVILLE PREDATORS </center> </td>						</tr>
					<tr> 	<td class="no" /><td class="no"> <center> GM: <a href="mailto:bharwood84@hotmail.com"> BRETT </a> </center></td></tr>
					<tr>	<td class="no" /><td class="no"> <center>  HC: MIKE FISHER​ </center> </td>									</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='NSH']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> SAN JOSE SHARKS </center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:bealls77corvette@gmail.com"> PHIL </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center> HC: MIKE RICCI​ </center> </td>						</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='SJ']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> SEATTLE KRAKEN </center> </td>					</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:nspaeth@hotmail.com"> NEIL </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>									</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='SEA']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> ST. LOUIS BLUES </center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:cultsuperhero@gmail.com"> MIKE </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>										</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='STL']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
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
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> UTAH HOCKEY CLUB </center> </td>						</tr>
					<tr> 	<td class="no" /><td class="no"> <center> GM: <a href="mailto:mailto:gbunn19@gmail.com"> GARY </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <center> HC: JEREMY ROENICK </center> </td>						</tr>

					<xsl:for-each select="GFHL/DB/Player[TEAM='UTA']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> VANCOUVER CANUCKS </center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:mcgrawtalen@gmail.com"> TALEN </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>										</tr>

					<xsl:for-each select="GFHL/DB/Player[TEAM='VAN']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> VEGAS GOLDEN KNIGHTS</center> </td>						</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:martybaroni@gmail.com"> MARTY </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>										</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='VGK']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
							</td>
					                <td class="no">
								<xsl:value-of select="NAME"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</td>
			<td class="no" >
				<table class="team">
					<tr>	<td class="no" /><td class="no"> <center> WINNIPEG JETS </center> </td>							</tr>
					<tr>	<td class="no" /><td class="no"> <center> GM: <a href="mailto:kyle.gartner@gmail.com"> KYLE </a> </center> </td>	</tr>
					<tr>	<td class="no" /><td class="no"> <br /> </td>										</tr>
					
					<xsl:for-each select="GFHL/DB/Player[TEAM='WPG']">
					      	<xsl:sort select="NAME" data-type="text" order="ascending"/>
						<tr>
							<td class="no">
								<center> <xsl:value-of select="POS"/> </center>
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


	
</body>
</html>
</xsl:template> 
</xsl:stylesheet> 

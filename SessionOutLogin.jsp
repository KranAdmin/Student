<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<title>Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="resources/style/kranstyle.css" rel="stylesheet"	type="text/css">
<script src="resources/js/jquery.min.js"></script>
<script	src="resources/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"></script>
<script	src="resources/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<link href="resources/style/jquery-ui.css" rel="stylesheet" type="text/css">	
<script src="resources/js/jquery-ui.js"></script>
<script>

$(function() {  

	document.getElementById('bdy').style.backgroundSize = ""+($(window).width()+50)+"px "+($(window).height()+50)+"px"; 
	$('#marquee').height($(window).height()-230);  
	$('#headband').width($(window).width()-450); 
	$('#headband').height(85);
	$('#not').width(575); 
	$('#not').height($(window).height()-180);   
	var w=$(window).width()-($('#not').width()*1.75); 
	if(w>450){ w=450+(w-450)/3;	}
	if(w<350){ w=350;}
	document.getElementById('logo').style.width = w ; 
	document.getElementById('logo').style.height = document.getElementById('logo').style.width-1750; 
	document.getElementById('logo1').style.width = w ; 
	document.getElementById('logo1').style.height = document.getElementById('logo1').style.width-1750;
	$('#im').width($(window).width()-$('#not').width()); 
$( "#radioset" ).buttonset();
}); 
$(document).ready(function() {
$( document ).tooltip();
	
document.getElementById("radioset").style.display="block";

});
function adjust(){
	document.getElementById('bdy').style.backgroundSize = ""+($(window).width()+50)+"px "+($(window).height()+50)+"px"; 
	$('#marquee').height($(window).height()-230);  
	$('#headband').width($(window).width()-450); 
	$('#headband').height(85);
	$('#not').width(575); 
	$('#not').height($(window).height()-180);   
	var w=$(window).width()-($('#not').width()*1.75); 
	if(w>450){ w=450+(w-450)/3;	}
	if(w<350){ w=350;}
	document.getElementById('logo').style.width = w ; 
	document.getElementById('logo').style.height = document.getElementById('logo').style.width-1750; 
	document.getElementById('logo1').style.width = w ; 
	document.getElementById('logo1').style.height = document.getElementById('logo1').style.width-1750; 
	$('#im').width($(window).width()-$('#not').width()); 
	$( "#radioset" ).buttonset();
	}
setInterval(adjust, 1);

function change()
{
	document.getElementById('logo1').style.display="block";
	document.getElementById('logo').style.display="none";
}
function back()
{
	document.getElementById('logo').style.display="block";
	document.getElementById('logo1').style.display="none";
}
</script>

<STYLE type="text/css">



     .waterMark{font-family:Trebuchet MS,Tahoma,Verdana,Arial,sans-serif;
            color : #aaaaaa;
           padding: 1px;
	border: 1px solid #DDDDDD;
	/*Applying CSS3 gradient*/
	background: -moz-linear-gradient(center top, #FFFFFF, #EEEEEE 1px, #FFFFFF 20px)
		;
	background: -webkit-gradient(linear, left top, left 20, from(#FFFFFF),
		color-stop(5%, #EEEEEE) to(#FFFFFF) );
	filter: progid : DXImageTransform.Microsoft.gradient ( startColorstr =
		'#FBFBFB', endColorstr = '#FFFFFF' );
	/*Applying CSS3 box shadow*/
	-moz-box-shadow: 0 0 2px #DDDDDD;
	-webkit-box-shadow: 0 0 2px #DDDDDD;
	box-shadow: 0 0 2px #DDDDDD;
	height: 21px;
                         }
.tabbed_box h4 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 23px;
	color: #ffffff;
	letter-spacing: -1px;
	margin-bottom: 10px;
}

.tabbed_box h4 small {
	color: #e3e9ec;
	font-weight: normal;
	font-size: 9px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	text-transform: uppercase;
	position: relative;
	top: -4px;
	left: 6px;
	letter-spacing: 0px;
}

.tabbed_area {
	background-color: none;
	padding: 10px 8px 8px 8px;
}

ul.tabs {
	padding: 0px 0px 0px 1px;
	text-align: left;
}

ul.tabs li {
	list-style: none;
	display: inline;
}

ul.tabs li a {
	background-color: #bbbbbb;
	color: #000000;
	padding: 5px 14px 7px 14px;
	text-decoration: none;
	font-size: 9px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	text-transform: uppercase;
	border: 1px solid #ffffff;
	border-bottom: none;
}

ul.tabs li a:hover {
	background-color: #f8f8f8;
	color: #000000;
	padding: 5px 14px 7px 14px;
	text-decoration: none;
	font-size: 9px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	text-transform: uppercase;
	border: 1px solid #ffffff;
	border-bottom: none;
}

ul.tabs li a.active {
	background-color: #ffffff;
	color: #000000;
	padding: 8px 14px 8px 14px;
	border: 1px solid #464c54;
	border-bottom: none;
	outline: none;
}

.content {
	background-color: #ffffff;
	padding: 2px;
	border: 1px solid #464c54;
}

#content_2,#content_3,#content_4 {
	display: none;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	margin-top: 5px;
	margin-bottom: 6px;
}

.content ul {
	margin: 0px;
	padding: 0px 10px 0px 10px;
}

.content ul li {
	list-style: none;
	border-bottom: 1px solid #d6dde0;
	padding-top: 15px;
	padding-bottom: 15px;
	font-size: 13px;
}

.content ul li a {
	text-decoration: none;
	color: #3e4346;
}

.content ul li a small {
	color: #8b959c;
	font-size: 9px;
	text-transform: uppercase;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	position: relative;
	left: 4px;
	top: 0px;
}

.content ul li:last-child {
	border-bottom: none;
}
</STYLE>
<STYLE type="text/css">
div.tooltip span {
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	-moz-box-shadow: 5px 5px 8px #CCC;
	-webkit-box-shadow: 5px 5px 8px #CCC;
	box-shadow: 5px 5px 8px #CCC;
	z-index: 10;
	padding: 14px 30px;
	margin-top: -15px;
	margin-left: 5px;
	width: 280px;
	line-height: 10px;
	display: inline;
	position: absolute;
	color: #111;
	border: 1px solid #DCA;
	background: #E0E6F8;
}
</STYLE>
</head>
<s:fielderror></s:fielderror>
<body  id="bdy"
 style="background-image: url('resources/images/121.jpg'); background-repeat: no-repeat;">

<s:form theme="simple" action="authenticateUser">


<s:hidden name="usertype"/>
	<table>

		<tr style="padding-top: 10px">
			<td id="headband" class="headerband"
				style="background-image: url('resources/images/bg.png'); background-repeat: no-repeat; border: none; vertical-align: middle; margin: 10px 10px 10px 10px">
			</td>
			<td class="headerband" style="text-align: right">


			<div style="margin-top: 0px; padding: 20px 20px 0px 3px;">


			<table class="curvelogin">

				<tr>
					<td></td>
					<td width="223"><font
						style="font-size: 13px; font-family: Trebuchet MS, Tahoma, Verdana, Arial, sans-serif;">User
					Name</font></td>
					<td width="223"><font
						style="font-size: 13px; font-family: Trebuchet MS, Tahoma, Verdana, Arial, sans-serif;">Password</font></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<!--
					<td><s:textfield name="username" title="Username" cssClass="logintextbox" cssStyle="width:98%" id="un"></s:textfield></td>
					<td><s:password name="password" title="Password" cssClass="logintextbox" cssStyle="width:98%" id="txtPassword"></s:password></td>
					-->
					<td><s:textfield name="username" cssClass="logintextbox"
						maxLength="25" cssStyle="width:98%" id="un"></s:textfield></td>
					<td><s:password name="password" cssClass="logintextbox"
						maxLength="25" cssStyle="width:98%" id="txtPassword"></s:password></td>
					<td width="20px"><s:submit value="Login" align="center"
						action="authenticateUser" method="authenticateUser"
						cssClass="styled-button" /></td>
					<td><s:reset value="Reset" cssClass="styled-button"></s:reset></td>
				</tr>
				<tr>
					<td></td>
					<td colspan="4"
						style="padding-left: 15px; text-align: left; height: 10px; font-weight: bold"><font
						color="red"> <s:actionerror /> <s:fielderror /> </font></td>
				</tr>
			</table>
			</div>
			</td>

		</tr>
		<tr>
			<td colspan="2">
			<div style="background-color: #f8f8f8; height: 5px"></div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="tooltip" align="center"><span>Your session has timed out. Please login again.</span></div>
			</td>
		</tr>
		<tr>
			<td colspan="2" height="20px" style="background-color: #f8c301">
			 &nbsp;
			</td>
		</tr>
		 <tr><td colspan="2" >
		 <table>
		<tr>
			<td style="margin: 100px 100px 100px 100px;vertical-align: middle" >
			    <div align="center" id="im">
			        <img onmouseover="change()" style="opacity:.4;"  id="logo" src="resources/images/kathakali(2).png">
				    <img onmouseout="back()" style="display: none;"  id="logo1" src="resources/images/kathakali(1).png"> 
<!--			      <img alt="" id="logo" src="resources/images/kranLogo.png">-->
			     </div>
			
			</td>
			<td style="padding-top: 17px;padding-bottom: 10px" >
			<div align="right" id="not">
			<s:if test="notifications.size>0">
				<div class="curve" 
					style="margin-right: 20px; padding: 10px 10px 10px 10px;   opacity: 0.8;">
				<div
					style="padding: 0px 0px 0px 0px; vertical-align: middle; background-color: #f7f7f7; border: 1px solid #cccccc;">
				<table>
					<tr>
						<td
							style="background-color: #d4e8ff; font-size: 13px; height: 25px; color: black; vertical-align: middle; padding-left: 5px;font-family:Trebuchet MS,Tahoma,Verdana,Arial,sans-serif;">Notifications</td>
					</tr>
					<tr>
						<td >
						<div align="left" 
							style="margin: 10px 0px 0px 0px;   color: black;" >
						<marquee id="marquee"
							style="padding: 0px 0px 0px 8px;" direction="up"
							scrolldelay="150" truespeed="truespeed" behavior="scroll"
							onmouseout="this.start();" onmouseover="this.stop();">
						<s:iterator value="notifications" status="row">
							<img align="top" height="9px" width="9px"
								src="resources/images/dot.jpg" style="vertical-align: middle" />
							<font style="font-size: 13px; line-height: 25px;font-family:Trebuchet MS,Tahoma,Verdana,Arial,sans-serif;"
								color="<s:property value="color"/>"> <s:property
								value="notification" /></font>
							<s:if test="currentDate.after(newLastDate)"></s:if>
							<s:else>
								<img align="top" height="25px" width="30px"
									src="resources/images/new.gif" style="vertical-align: top;" />
							</s:else>
							<br>
						</s:iterator> </marquee></div>
						</td>
					</tr>
				</table>
				</div>
				</div>
			</s:if> <s:else>
				<div align="center"  id="not"
					style="opacity: 0;">

				</div>
			</s:else></div>
			</td>
		</tr>
		 
<tr>
    <td height="25"  style=" padding: 10px 10px 0px 10px; "  >Ver 1.0 </td>
 
    <td height="25" style=" padding: 10px 20px 0px 10px; text-align: right; "><a href="http://www.kran.co.in" target="_blank"> <img alt="" src="resources/images/kranitlogo1.png"> </a></td>
  </tr>
</table></td></tr>


	</table>

</s:form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="<%=basePath%>">
	<title>在线商品拍卖网</title>
	<link href="style/mycss.css" rel="stylesheet" type="text/css" />
	<link href="style/texts.css" rel="stylesheet" type="text/css" />
	<link href="style/btn.css" rel="stylesheet" type="text/css" />
	<style>
		.table_title{
			border:solid 1px #aaa;
			border-width:0 0 1px 0;
		}
	</style>
</head>
<body BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0 valign="top">
	<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
		 <tr>
   			<td colspan="5"><img src="images/top.jpg" width="780" height="213"></td>
		  </tr>
		  <tr>
		    <td colspan="5"><img src="images/middle1.jpg" width="780" height="47"></td>
		  </tr>
		  <tr>
		    <td width="38" background="images/middle2.jpg">&nbsp;</td>
		    <td width="172" valign="top"><%@ include file="user.jsp"%></td>
		    <td width="35" background="images/layout_24.gif">&nbsp;</td>
		    <td width="495">
			<table width="479" height="287" style="height: 287px;">
				<tr>
					<td width="3%">&nbsp;</td>
					<td width="97%">
						<script>
							function SwitchDisplay(oid){
								var o = document.getElementById(oid);
								if (o){
									if (o.style.display == "none"){ o.style.display = "block"; } else {o.style.display = "none";}
								}
							}
						</script>
						<div id="middle">
					  		<div class="m_title"></div>
				  			<div class="bar"></div>		  	 
				  			<div class="m_content" style="height:369px;width:440px;overflow-y:scroll;">					
							<s:action name="toOnSaleGoodsList" namespace="/goods" executeResult="true"  />
				  			</div>
		  				</div>
					</td>
				</tr>
				<tr>
					<td colspan="2"></td>
				</tr>
			</table>
			</td>
    		<td width="40" background="images/middle4.jpg">&nbsp;</td>
  		</tr>
  		<tr>
    		<td colspan="5"><img src="images/bottom.jpg" width="780" height="82"></td>
  		</tr>
	</table>
	<P align="center">zifangsky 版权所有</P>
	<br/>
</body>
</html>
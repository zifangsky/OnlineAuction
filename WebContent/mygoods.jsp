<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线商品拍卖网-我的在拍商品</title>
<link href="/OnlineAuction/style/mycss.css" rel="stylesheet" type="text/css" />
<link href="/OnlineAuction/style/texts.css" rel="stylesheet" type="text/css" />
<link href="/OnlineAuction/style/btn.css" rel="stylesheet" type="text/css" />
<style>
.table_title {
	border: solid 1px #aaa;
	border-width: 0 0 1px 0;
}
</style>
</head>
<body BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0
	MARGINHEIGHT=0 valign="top">
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="5"><img src="/OnlineAuction/images/top.jpg" width="780" height="213"></td>
  </tr>
  <tr>
    <td colspan="5"><img src="/OnlineAuction/images/middle1.jpg" width="780" height="47"></td>
  </tr>
  <tr>
    <td width="38" background="/OnlineAuction/images/middle2.jpg">&nbsp;</td>
    <td width="172" valign="top"><%@ include file="user.jsp"%></td>
    <td width="35" background="/OnlineAuction/images/layout_24.gif">&nbsp;</td>
    <td width="495">
	<table width="479" height="287" style="height: 287px;">
		<tr>
			<td width="3%">&nbsp;</td>
			<td width="97%">
<script>
function fswitch(id){
	var o = document.getElementById(id);
	if (o){
		if (o.style.display == "none"){ o.style.display = "block"; } else {o.style.display = "none";}
	}
}

function setGoodsPic(url){
	var oImg = document.getElementById("goodsUrl");
	oImg.src = url;
	oImg.style.width = "100px";
	oImg.style.height = "80";
}
</script>
   <table border="0">
    <s:iterator id="goods" value="#request.mygoodslist">	
	  <tr><td>
	    <!-- 显示我的在拍商品信息 -->
		<div class="goods_pic"><img src="/OnlineAuction/uploadImages/${goods.goodsPic}" title="${goods.goodsDesc}" style="width:100px;border:dashed 1px green;"></img></div></td>
		<td valign="top"><div class="goods_info" style="border:solid 0px blue;">
			<span class="info_title">商品名称</span>&nbsp;<strong>${goods.goodsName}</strong><br />
			<span class="info_title">卖  &nbsp;&nbsp;   家</span>&nbsp;<em>${goods.saler.userName}</em> <br />
			<span class="info_title">起 拍 价</span>&nbsp;<span style="color:green;">${goods.goodsPrice}</span><br />				
		</div>
		</td>	
	  </tr>	
	 <!-- 在每个商品下显示出价记录 -->
	 <c:if test="${!empty goods.bids }">
	  <tr valign="top"><td>出价记录：<br>
	        <s:iterator id="b" value="#goods.bids">
				<em>${b.buyer.userName}</em>
				<s:date name="#b.bidTime" format="yyyy-MM-dd hh:mm"/>				
				<span style="color:green;font-weight:bold;">${b.bidPrice}</span>			
				<c:if test="${b.bidStatus != 1}">
				<a class="a_button" href="/OnlineAuction/bid/doDeal.action?bidId=${b.bidId}">
				<font color="red">成交</font></a>
				</c:if><br />
			</s:iterator>
		</td>
	  </tr>	  
	 </c:if>
	</s:iterator>
   </table>	
  		<c:if test="${empty requestScope.mygoodslist }">
  			您目前没有拍卖商品！
  		</c:if>
			</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
	</table>
	</td>
    <td width="40" background="/OnlineAuction/images/middle4.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="5"><img src="/OnlineAuction/images/bottom.jpg" width="780" height="82"></td>
  </tr>
</table>
	<P align="center">zifangsky 版权所有</P>
	<br />
</body>
</html>
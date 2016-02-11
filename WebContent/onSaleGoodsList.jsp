<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link href="/OnlineAuction/style/mycss.css" rel="stylesheet" type="text/css" />
<link href="/OnlineAuction/style/texts.css" rel="stylesheet" type="text/css" />
<link href="/OnlineAuction/style/btn.css" rel="stylesheet" type="text/css" />
<style>
.table_title {
	border: solid 1px #aaa;
	border-width: 0 0 1px 0;
}
</style>


<script>
	function SwitchDisplay(oid) {
		var o = document.getElementById(oid);
		if (o) {
			if (o.style.display == "none") {
				o.style.display = "block";
			} else {
				o.style.display = "none";
			}
		}
	}
</script>
	<table border="0">
		<s:iterator var="goods" value="#request.onSaleGoodsList">
			<tr>
				<td>
					<!-- 显示在拍商品信息 -->
					<div class="goods_pic">
						<img src="/OnlineAuction/uploadImages/${goods.goodsPic}" title="${goods.goodsDesc}"
							style="width: 100px; border: dashed 1px green;"></img>
					</div>
				</td>
				<td valign="top"><div class="goods_info"
						style="border: solid 0px blue;">
						<span class="info_title">商品名称</span>&nbsp;<strong>${goods.goodsName}</strong><br />
						<span class="info_title">卖 &nbsp;&nbsp; 家</span>&nbsp;<em>${goods.saler.userName}</em>
						<br /> <span class="info_title">起 拍 价</span>&nbsp;<span
							style="color: green;">${goods.goodsPrice}</span><br />
						<!-- 如果用户已经登录，且不是该商品的卖家，则在该商品旁显示“出价”按钮 -->
						<c:if test="${!empty sessionScope.user and goods.saler.userId != sessionScope.user.userId }">
							<a class="a_button"
									href="/OnlineAuction/goods/doBid.action?goods.goodsId=${goods.goodsId}"><font
									color="red">我要出价</font></a>
						</c:if>
	
					</div></td>
			</tr>
			<!-- 如果出价记录不为空，在每个商品下显示出价记录 -->
			<c:if test="${!empty goods.bids }">
				<tr valign="top">
					<td>出价记录：<br> <s:iterator var="b" value="#goods.bids">
							<em><s:property value="#b.buyer.userName" /> </em>
							<s:date name="#b.bidTime" format="yyyy-MM-dd hh:mm" />
							<span style="color: green; font-weight: bold;"><s:property
									value="#b.bidPrice" /></span>
							<br />
						</s:iterator>
					</td>
				</tr>
			</c:if>		
			
		</s:iterator>
	</table>


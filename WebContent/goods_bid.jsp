<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线商品拍卖网-出价</title>
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
	<table width="780" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td colspan="5"><img src="/OnlineAuction/images/top.jpg" width="780"
				height="213"></td>
		</tr>
		<tr>
			<td colspan="5"><img src="/OnlineAuction/images/middle1.jpg" width="780"
				height="47"></td>
		</tr>
		<tr>
			<td width="38" background="/OnlineAuction/images/middle2.jpg">&nbsp;</td>
			<td width="172" valign="top"><%@ include file="user.jsp"%></td>
			<td width="35" background="/OnlineAuction/images/layout_24.gif">&nbsp;</td>
			<td width="495">
				<table width="479" height="287" style="height: 287px;">
					<tr>
						<td width="3%">&nbsp;</td>
						<td width="97%"><script>
							function fswitch(id) {
								var o = document.getElementById(id);
								if (o) {
									if (o.style.display == "none") {
										o.style.display = "block";
									} else {
										o.style.display = "none";
									}
								}
							}
						</script> <s:form action="doSubmitBid" method="post" namespace="/bid">
								<!-- 通过隐藏表单域传递商品编号 -->
								<s:hidden name="goods.goodsId" />
								<table id="advEdit" width="480" height="66">
									<tr>
										<td width="15%">商品名称:</td>
										<td><s:property value="#request.g.goodsName" /></td>
									</tr>
									<tr>
										<td>商品描述：</td>
										<td><s:property value="#request.g.goodsDesc" /></td>
									</tr>
									<tr>
										<td>起拍价格：</td>
										<td><s:property value="#request.g.goodsPrice" /></td>
									</tr>
									<tr>
										<td><s:textfield label="我的出价" name="myBidPrice" /></td>
									</tr>
								</table>
								<s:submit cssClass="btn" value="提交" align="center" />
							</s:form></td>
					</tr>
					<tr>
						<td colspan="2"></td>
					</tr>
				</table>
			</td>
			<td width="40" background="/OnlineAuction/images/middle4.jpg">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="5"><img src="/OnlineAuction/images/bottom.jpg" width="780"
				height="82"></td>
		</tr>
	</table>
	<P align="center">zifangsky 版权所有</P>
	<br />
</body>
</html>
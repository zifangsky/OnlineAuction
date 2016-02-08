<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>   	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线商品拍卖网-注册</title>
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
				<table width="488" height="287">
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
						</script>
							<s:form action="addUser" method="post" namespace="/user">
								<table id="advSearch" width="380" height="66">
									<tr>
										<td><s:textfield name="users.userName" label="用户名" /></td>
									</tr>
									<tr>
										<td><s:password name="users.password" label="密码" /></td>
									</tr>
									<tr>
										<td><s:textfield name="users.telephone" label="联系电话" /></td>
									</tr>
									<tr>
										<td><s:textfield name="users.address" label="通讯地址" /></td>
									</tr>
									<tr>
										<td><s:submit align="left" value="注册" /></td>
									</tr>
								</table>
							</s:form></td>
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
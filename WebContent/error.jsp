<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出现异常啦</title>
<style type="text/css">
body {
	background-image: url('/OnlineAuction/images/404.jpg');
	background-repeat: no-repeat;
	background-position: 50% 55px;
	background-attachment: fixed;
}
</style>
</head>
<body>
	<div align="center"
		style="color: red; font-size: 24px; font-weight: bold; position: relative; top: 10px;">
		<s:if test="#request.errorMsg !=null">   
   			 ${requestScope.errorMsg}
		</s:if>
		<s:else>   
   			 系统发生未知异常，请联系管理员或稍后再试！
		</s:else>
	</div>

</body>
</html>
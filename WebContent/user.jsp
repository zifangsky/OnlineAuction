<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.zxpm.entity.Users;" %>    
<script language="javascript">
	function login(){
		if( document.f1.userName.value =="" ){
			alert("用户名不能为空");
			return false;
		}else if(document.f1.password.value == ""){
			alert("密码不能为空");
			return false;
		} else {
			return true;
		}
	}
</script>

<%
if (session.getAttribute("user") != null) {
%>
	<table align="center">
	<tr>
		<td width=''><font color='red'>当前用户：
<%
			Users user = (Users) session.getAttribute("user");
%>
			<%=user.getUserName()%></font>
		</td>
	</tr>
	
	<tr>
		<td width='100'><a href="/OnlineAuction/addgoods.jsp">添加商品</a></td>
	</tr>
	<tr>
		<td width='100'><a href="/OnlineAuction/goods/toMyGoods.action">我的在拍商品</a></td>
	</tr>
	<tr>
		<td width='100'><a href="/OnlineAuction/edit_pwd.jsp">[修改密码]</a></td>
	</tr>
	<tr>
		<td width='100'><a href="/OnlineAuction/user/loginout.action">[注销]</a></td>
	</tr>
	</table>
<%
} else {
%>
	<form name="f1" action="/OnlineAuction/user/doLogin.action" method="post" onsubmit="return login();">
	  <table align="center">
		<tr>
			<td colspan="2">用户名：</td>
		</tr>
		<tr>
		  <td colspan="2"><input type="text" name="users.userName" size=10" class="editbox"></td>
		</tr>
		<tr>
			<td colspan="2">密&nbsp;&nbsp;码：</td>
		</tr>
		<tr>
		  <td colspan="2"><input type="password" name="users.password" size=10"  class='editbox'></td>
		</tr>
		<tr>
			<td>				
				<input type="submit" value="登录" class='btn'>
				<input type="reset" value="重置" class='btn'>
			</td>
		</tr>
		<tr>
		  <td><a href="register.jsp">用户注册</a></td>
		</tr>
		<tr>
			<td width='100'><a href="/OnlineAuction/index.jsp">返回首页</a></td>
		</tr>
	  </table>
   </form>
<%
}
%>
<%@ page language="java" import="com.yanbo.model.userTable" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@page import="com.yanbo.service.userService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<jsp:useBean id="user" scope="page" class="com.yanbo.model.userTable"></jsp:useBean>
	<jsp:useBean id="userService" class="com.yanbo.service.userService"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	
	<%
	/* userTable user = new userTable();
	user.setUsername("admin");
	user.setPassword("000000"); */
	out.print(user.getUsername());
	out.print(user.getPassword());
	if (userService.valiUser(user)) { 
		session.setAttribute("user", user);
		session.setAttribute("username", user.getUsername());
	%>
		<script>
		 	alert("登录成功！");
		 	window.open("main.jsp","_self");
		</script>
		
	<% } 
	else {  %>
		<script>
		 	alert("用户名或密码错误，请重新输入");
		 	window.open("index.jsp","_self");
		</script>
	<% }%>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.yanbo.model.userTable" %>
<%@page import="com.yanbo.service.userService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" scope="page" class="com.yanbo.model.userTable"></jsp:useBean>
	<jsp:useBean id="userService" class="com.yanbo.service.userService"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<%
	if (userService.valiUser(user)){
		%>
		<script>
		 	alert("用户已存在，请重新注册");
		 	window.open("sign_threeStep.jsp","_self");
		</script>
		<%
	} else {
		userService.addUser(user);
		%>
		<script>
		 	alert("注册成功，请从主页进行登录");
		 	window.open("index.jsp","_self");
		</script>
		<%}%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>exit system</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
exit system
<%
	session.removeAttribute("user");
	
%>
<script>
 	alert("注销成功，将返回主页");
 	window.open("index.jsp","_self");
</script>
</body>
</html>
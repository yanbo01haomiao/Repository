<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
	<a href="inputstuinfo.jsp" target="main_right">录入学生信息</a> <br/>
	<a href="student/queryAllStuServlet?osid=query" target="main_right">查看学生信息</a> <br/>
	<a href="student/queryAllStuServlet?osid=modify" target="main_right">修改学生信息</a> <br/>
	<a href="student/queryAllStuServlet?osid=delete" target="main_right">删除学生信息</a> <br/>
	<a href="user/exitServlet" target="_top">退出系统</a> <br/>
</body>
</html>
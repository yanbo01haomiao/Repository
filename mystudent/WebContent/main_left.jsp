<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
	<link href="css/display.css" type="text/css" rel="stylesheet">
</head>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>

<div class="sidebar" id="sidebar">
    <h2>基本功能</h2>
    <ul>
        <li><a href="inputstuinfo.jsp" target="main_right">录入学生信息</a></li>
        <li><a href="displaystuinfo.jsp" target="main_right">展示全部学生信息</a></li>
        <li><a href="modifystuinfo.jsp" target="main_right">修改学生信息</a></li>
        <li><a href="deletestuinfo.jsp" target="main_right">删除学生信息</a></li>
        <li><a href="sign.jsp" target="main_right">注册页面1</a></li>
        <li><a href="sign2.jsp" target="main_right">注册页面2</a></li>
        <li><a href="exit.jsp" target="_top">退出系统</a></li>
        <li><a href="#">更多功能，敬请期待</a></li>
    </ul>

    <h2>项目信息</h2>
    <div class="sidebar_section_text">
        8000115014张袁<br/>
        8000115104李道鑫<br/>
        version：1.0 <br/>
        date：2017-12-21<br/>
    </div>
</html>
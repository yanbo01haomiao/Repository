<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.yanbo.service.stuInfoService"%>
<%@page import="com.yanbo.model.stuInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="stu" class="com.yanbo.model.stuInfo"></jsp:useBean>
	<jsp:useBean id="stuSer" class="com.yanbo.service.stuInfoService"></jsp:useBean>
	<jsp:setProperty property="*" name="stu"/>
	<%if (stuSer.updateStu(stu)) {%>
		<script type="text/javascript">
			alert("修改学生信息成功！");
			window.open("modifystuinfo.jsp","_self");
		</script>
	<%} else {%>
		<script type="text/javascript">
			alert("很抱歉，修改学生信息失败，请检查");
			window.open("modifystuinfo.jsp","_self");
		</script>
	<%}%>
</body>
</html>
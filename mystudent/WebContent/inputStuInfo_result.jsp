<%@ page language="java" import="com.yanbo.model.stuInfo" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.yanbo.service.stuInfoService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="stuInfo" class="com.yanbo.model.stuInfo"></jsp:useBean>
	<jsp:useBean id="stuInfoService" class="com.yanbo.service.stuInfoService"></jsp:useBean>
	<jsp:setProperty property="*" name="stuInfo"/>
	<%
	if (stuInfoService.addStu(stuInfo)) {%>
		<script type="text/javascript">
			alert("添加学生信息成功！");
			window.open("inputstuinfo.jsp","_self");
		</script>
	 <%} else {%>
		<script type="text/javascript">
			alert("很抱歉，添加学生信息失败，请检查");
			window.open("inputstuinfo.jsp","_self");
		</script>
	 <%}%>
</body>
</html>
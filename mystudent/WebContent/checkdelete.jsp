<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.yanbo.service.stuInfoService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="stuSer" class="com.yanbo.service.stuInfoService"></jsp:useBean>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	if (stuSer.deleteStu(id)) { %>
		<script type="text/javascript">
			alert("删除成功");
			window.open("deletestuinfo.jsp","_self");
		</script>
	<%
	} else {%> 
		<script type="text/javascript">
			alert("删除失败，将返回删除页面");
			window.open("deletestuinfo.jsp","_self");
		</script>
	<%}%>
</body>
</html>
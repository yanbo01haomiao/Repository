<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.yanbo.service.stuInfoService"%>
<%@page import="com.yanbo.model.stuInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除确认</title>
<link href="css/display.css" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:useBean id="stuSer" class="com.yanbo.service.stuInfoService"></jsp:useBean>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	stuInfo stu = stuSer.queryStubyID(id);
	%>
	<table id="rounded-corner">
	    <thead>
	    <tr>
	        <th>ID</th><th>昵称</th><th>真实姓名</th><th>性别</th><th>出生日期</th><th>专业</th><th>课程</th><th>兴趣爱好</th><th>备注</th>
	    </tr>
	    </thead>
	    <tbody>
		    <tr  class="odd" >
		        <td><%=stu.getId() %></td>
				<td><%=stu.getNickname() %></td>
				<td><%=stu.getTruename() %></td>
				<td><%if(stu.getSex()==1) out.print("男"); else out.print("女"); %></td>
				<td><%=stu.getBirthday() %></td>
				<td><%=stu.getSpecialty() %></td>
				<td><%=stu.getCourses() %></td>
				<td><%=stu.getIntersts() %></td>
				<td><%=stu.getRemark() %></td>
		    </tr>
	    </tbody>
	    <tfoot>
	    <tr>
	        <td colspan="12" style="font-size: 15px">
	            	已显示该学生的全部信息
	        </td>
	    </tr>
	    </tfoot>	
	<div class="form_sub_buttons">
		<a href="checkdelete.jsp?id=<%=stu.getId()%>" class="button red">删除此名学生信息</a>
		<a href="modifyOneStu.jsp?id=<%=stu.getId()%>" class="button green">修改此名学生信息</a>
		<a href="deletestuinfo.jsp" class="button bule">返回</a>
	</div>
</body>
</html>
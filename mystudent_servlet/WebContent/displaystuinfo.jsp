<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.yanbo.service.stuInfoService"%>
<%@page import="com.yanbo.model.stuInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
	<%
	List stus = (List) session.getAttribute("stus");
	out.print("在数据库中共查询到" + stus.size() + "条数据。");
	Iterator iter = stus.iterator();
	%>
	<table id="stuInfo">
		<tr></a>
			<td>ID</td>
			<td>昵称</td>
			<td>真实姓名</td>
			<td>性别</td>
			<td>出生日期</td>
			<td>专业</td>
			<td>课程</td>
			<td>兴趣爱好</td>
			<td>备注</td>
			<%
			int i = 0;
			while (iter.hasNext()) {
				stuInfo student = (stuInfo)iter.next();
			%>
			<tr <%if(i%2==0) {%> bgcolor="#f0f8ff" <%} %>>
				<td><%=student.getId() %></td>
				<td><%=student.getNickname() %></td>
				<td><%=student.getTruename() %></td>
				<td><%if(student.getSex()==1) out.print("男"); else out.print("女"); %></td>
				<td><%=student.getBirthday() %></td>
				<td><%=student.getSpecialty() %></td>
				<td><%=student.getCourses() %></td>
				<td><%=student.getIntersts() %></td>
				<td><%=student.getRemark() %></td>
			</tr>
			<%
				i++;
			}
			%>
		</tr>
	</table>
</body>
</html>
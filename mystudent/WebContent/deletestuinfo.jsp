<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.yanbo.service.stuInfoService"%>
<%@page import="com.yanbo.model.stuInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="css/display.css" type="text/css" rel="stylesheet">
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<jsp:useBean id="stuSer" class="com.yanbo.service.stuInfoService"></jsp:useBean>
	<%
	List stus = stuSer.queryAllStu();
	Iterator iter = stus.iterator();
	%>
	<table id="rounded-corner">
	    <thead>
		    <tr>
		        <th>ID</th><th>昵称</th><th>真实姓名</th><th>性别</th><th>出生日期</th>
		        <th>专业</th><th>课程</th><th>兴趣爱好</th><th>备注</th><th>删除</th>
		    </tr>
	    </thead>
	    <tbody>
	    <%  int i = 0;
			while (iter.hasNext()) {
				stuInfo student = (stuInfo)iter.next();
			%>
			<tr <%if(i%2==0) {%> class="odd" <%} else{%> class="even" <% }%>>
				<td><%=student.getId() %></td>
				<td><%=student.getNickname() %></td>
				<td><%=student.getTruename() %></td>
				<td><%if(student.getSex()==1) out.print("男"); else out.print("女"); %></td>
				<td><%=student.getBirthday() %></td>
				<td><%=student.getSpecialty() %></td>
				<td><%=student.getCourses() %></td>
				<td><%=student.getIntersts() %></td>
				<td><%=student.getRemark() %></td>
				<td><a href="deleteOneStu.jsp?id=<%=student.getId()%>">
					<img src="images/trash.gif" alt="删除" title="删除" border="0"/></a></td>
			</tr>
			<%
				i++;
			}
			%>
		</tbody>
		<tfoot>
		    <tr>
		        <td colspan="12" style="font-size: 15px">在数据库中共查询到<%=stus.size() %>条数据.</td>
		    </tr>
    	</tfoot>
	</table>
</body>
</html>
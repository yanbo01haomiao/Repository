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
	<%
	stuInfo stu = (stuInfo)session.getAttribute("stu");
	%>
	<form action="student/modifyOneStuInfoServlet" method="post">
		<table bgcolor="#c0c0c0">
			<tr><td align="center" bgcolor="green" colspan="2">录入学生信息</td></tr>
			<tr>
				<td>昵称：</td>
				<td><input type="text" size="20" name="nickname" value="<%=stu.getNickname()%>"/></td>
			</tr>
			<tr>
				<td>真实姓名：</td>
				<td><input type="text" size="20" name="truename" value="<%=stu.getTruename()%>"/></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>
					<label><input type="radio" name="sex" 
					<%if(stu.getSex()==1){ %>
					checked="checked" 
					<%} %>
					value="1"/>男</label>
					<label><input type="radio" name="sex" 
					<%if(stu.getSex()==0){ %>
					checked="checked" 
					<%} %>
					value="0"/>女</label>
				</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td><input type="text" size="20" name="birthday" value="<%=stu.getBirthday()%>"/></td>
			</tr>
			<tr>
				<td>所学专业：</td>
				<td>
					<select name="specialty">
						<option
							<%if(stu.getSpecialty().equals("计算机科学与技术")){ %>
								selected="selected"
							<%} %>
						>计算机科学与技术</option>
						<option 
							<%if(stu.getSpecialty().equals("软件工程")){ %>
								selected="selected"
							<%} %>
						>软件工程</option>
						<option
							<%if(stu.getSpecialty().equals("信息安全")){ %>
								selected="selected"
							<%} %>
						>信息安全</option>
						<option
							<%if(stu.getSpecialty().equals("电气工程")){ %>
								selected="selected"
							<%} %>
						>电气工程</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>所学课程：</td>
				<td>
					<select name="course" size="4" multiple="multiple">
						<option
							<%String kc[] = stu.getCourse();
							for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("计算机组成原理")) {%>
											selected="selected"
											<%break;
								}
							}%>
						>计算机组成原理</option>
						<option
							<%for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("数据结构")) {%>
											selected="selected"
											<%break;
								}
							}%>
						>数据结构</option>
						<option
							<%for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("大学物理")) {%>
											selected="selected"
											<%break;
								}
							}%>
						>大学物理</option>
						<option
							<%for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("数据库原理")) {%>
											selected="selected"
											<%break;
								}
							}%>
						>数据库原理</option>
						<option
							<%for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("网络通讯管理")) {%>
											selected="selected"
											<%break;
								}
							}%>
						>网络通讯管理</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>兴趣爱好：</td>
				<td>
					<label><input type="checkbox" name="interst" value="music" 
						<%	String xq[] = stu.getInterst();
							for (int i = 0; i < xq.length; i++) {
								if (xq[i].equals("music")) {%>
											checked="checked"
											<%break;
								}
							}%>
					/>听音乐</label>
					<label><input type="checkbox" name="interst" value="book"
						<%	for (int i = 0; i < xq.length; i++) {
								if (xq[i].equals("book")) {%>
											checked="checked"
											<%break;
								}
							}%>
					/>阅读</label>
					<label><input type="checkbox" name="interst" value="web"
						<%	for (int i = 0; i < xq.length; i++) {
								if (xq[i].equals("web")) {%>
											checked="checked"
											<%break;
								}
							}%>
					/>上网</label>
				</td>
			</tr>
			<tr valign="top">
				<td>备注：</td>
				<td><textarea rows="4" cols="20" name="remark"><%=stu.getRemark()%></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="hidden" name="id" value="<%=stu.getId() %>"/>
					<input type="submit" value="保存"/>
					<input type="reset" value="清空"/>
					<a href="student/queryAllStuServlet?osid=modify">返回</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
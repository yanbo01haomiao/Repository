<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>input student information</title>
<jsp:include page="islogin.jsp"></jsp:include>
</head>

<!-- id int(11) AI PK 
nickname char(20) 
truename char(20) 
sex bit(1) 
birthday date 
specialty varchar(20) 
course varchar(100) 
interst varchar(20) 
remark varchar(500) -->

<body>
<center>
	<form action="student/inputStuInfoServlet" method="post">
		<table bgcolor="#c0c0c0">
			<tr><td align="center" bgcolor="green" colspan="2">录入学生信息</td></tr>
			<tr>
				<td>昵称：</td>
				<td><input type="text" size="20" name="nickname"/></td>
			</tr>
			<tr>
				<td>真实姓名：</td>
				<td><input type="text" size="20" name="truename"/></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td>
					<label><input type="radio" name="sex" checked="checked" value="1"/>男</label>
					<label><input type="radio" name="sex" value="0"/>女</label>
				</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td><input type="text" size="20" name="birthday" placeholder="1900-01-01"/></td>
			</tr>
			<tr>
				<td>所学专业：</td>
				<td>
					<select name="specialty">
						<option>计算机科学与技术</option>
						<option selected="selected">软件工程</option>
						<option>信息安全</option>
						<option>电气工程</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>所学课程：</td>
				<td>
					<select name="course" size="4" multiple="multiple">
						<option>计算机组成原理</option>
						<option>数据结构</option>
						<option>大学物理</option>
						<option>数据库原理</option>
						<option>网络通讯管理</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>兴趣爱好：</td>
				<td>
					<label><input type="checkbox" name="interst" value="music"/>听音乐</label>
					<label><input type="checkbox" name="interst" value="book"/>阅读</label>
					<label><input type="checkbox" name="interst" value="web"/>上网</label>
				</td>
			</tr>
			<tr valign="top">
				<td>备注：</td>
				<td><textarea rows="4" cols="20" name="remark"></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="保存"/>
					<input type="reset" value="清空"/>
				</td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>
<%@ page import="com.yanbo.model.userTable" %>
<%@ page import="com.yanbo.service.userService" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
userTable user = (userTable)session.getAttribute("user");
if (user == null) {
%>
	<jsp:forward page="index.jsp"></jsp:forward>
<%	
}  
%>
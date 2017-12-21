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
<link href="css/display.css" type="text/css" rel="stylesheet">
<script src="js/jquery-2.1.0.min.js"></script>
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    var $ = jQuery.noConflict();
    $(function () {
        $('#tabsmenu').tabify();
        $(".toggle_container").hide();
        $(".trigger").click(function () {
            $(this).toggleClass("active").next().slideToggle("slow");
            return false;
        });
    });
</script>
</head>
<body>
	<jsp:useBean id="stuSer" class="com.yanbo.service.stuInfoService"></jsp:useBean>
	<%
	int id =Integer.parseInt(request.getParameter("id"));
	stuInfo stu = new stuInfo();
	stu = (stuInfo)stuSer.queryStubyID(id);
	%>
<ul id="tabsmenu" class="tabsmenu">
   <li class="active"><a href="#tab1">修改学生信息</a></li>
</ul>
<div id="tab1" class="tabcontent">
    <h3>基本信息</h3>
    <div class="form">
        <form action="modifyOneStu_result.jsp" method="post">
        <div class="form_row">
            <label>昵称</label>
            <input type="text" class="form_input" name="nickname" value="<%=stu.getNickname()%>"/>
        </div>

        <div class="form_row">
            <label>真实姓名</label>
            <input type="text" class="form_input" name="truename" value="<%=stu.getTruename()%>"/>
        </div>

        <div class="form_row">
            <label>性别</label>
            <label><input type="radio" name="sex" 
            <%if(stu.getSex()==1){ %>
					checked="checked" 
			<%} %> value="1"/>男</label>
            <label><input type="radio" name="sex" 
            <%if(stu.getSex()==0){ %>
					checked="checked" 
			<%} %>value="0"/>女</label>
        </div>

        <div class="form_row">
            <label>出生日期</label>
            <input type="text" class="form_input" size="20" name="birthday" value="<%=stu.getBirthday()%>"/>
        </div>

        <div class="form_row">
            <label>所学专业</label>
            <select class="form_select" name="specialty">
                <option <%if(stu.getSpecialty().equals("软件工程")){ %>
								selected="selected"
							<%}%> >软件工程</option>
                <option <%if(stu.getSpecialty().equals("外国语")){ %>
								selected="selected"
							<%} %>>外国语</option>
                <option <%if(stu.getSpecialty().equals("信息安全")){ %>
								selected="selected"
							<%} %>>信息安全</option>
                <option <%if(stu.getSpecialty().equals("电气工程")){ %>
								selected="selected"
							<%} %>>电气工程</option>
            </select>
        </div>

        <div class="form_row">
            <label>所学课程</label>
            <select name="course" class="form_select_many" name="specialty" size="5" multiple="multiple">
                <option <%String kc[] = stu.getCourse();
							for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("计算机组成原理")) {%>
											selected="selected"
											<%break;
								}
							}%>>计算机组成原理</option>
                <option <%for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("数据结构")) {%>
											selected="selected"
											<%break;
								}
							}%>>数据结构</option>
                <option <%for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("大学物理")) {%>
											selected="selected"
											<%break;
								}
							}%>>大学物理</option>
                <option <%for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("数据库原理")) {%>
											selected="selected"
											<%break;
								}
							}%>>数据库原理</option>
                <option <%for (int i = 0; i < kc.length; i++) {
								if (kc[i].equals("网络通讯管理")) {%>
											selected="selected"
											<%break;
								}
							}%>>网络通讯管理</option>
            </select>
        </div>

        <dis class="form_row">
            <label>兴趣爱好</label>
            <label><input type="checkbox" name="interst" value="music" <%	String xq[] = stu.getInterst();
							for (int i = 0; i < xq.length; i++) {
								if (xq[i].equals("music")) {%>
											checked="checked"
											<%break;
								}
							}%>/>听音乐</label>
            <label><input type="checkbox" name="interst" value="book" <%	for (int i = 0; i < xq.length; i++) {
								if (xq[i].equals("book")) {%>
											checked="checked"
											<%break;
								}
							}%>/>阅读</label>
            <label><input type="checkbox" name="interst" value="web" <%	for (int i = 0; i < xq.length; i++) {
								if (xq[i].equals("web")) {%>
											checked="checked"
											<%break;
								}
							}%>/>上网</label>
        </dis>

        <div class="form_row">
            <label>备注</label>
            <textarea class="form_textarea" name="remark"><%=stu.getRemark()%></textarea>
        </div>
        <div class="form_row">
        	<input type="hidden" name="id" value="<%=stu.getId() %>"/>
            <input type="submit" class="form_submit" value="保存"/>
        </div>
        </form>
    </div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>input student information</title>
<jsp:include page="islogin.jsp"></jsp:include>
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
<ul id="tabsmenu" class="tabsmenu">
   <li class="active"><a href="#tab1">录入学生信息</a></li>
   <li><a href="#tab2">项目信息</a></li>
</ul>
<div id="tab1" class="tabcontent">
    <h3>基本信息</h3>
    <div class="form">
        <form action="inputStuInfo_result.jsp" method="post">
        <div class="form_row">
            <label>昵称</label>
            <input type="text" class="form_input" name="nickname"/>
        </div>

        <div class="form_row">
            <label>真实姓名</label>
            <input type="text" class="form_input" name="truename"/>
        </div>

        <div class="form_row">
            <label>性别</label>
            <label><input type="radio" name="sex" checked="checked" value="1"/>男</label>
            <label><input type="radio" name="sex" value="0"/>女</label>
        </div>

        <div class="form_row">
            <label>出生日期</label>
            <input type="text" class="form_input" size="20" name="birthday" placeholder="1900-01-01"/>
        </div>

        <div class="form_row">
            <label>所学专业</label>
            <select class="form_select" name="specialty">
                <option selected="selected">软件工程</option>
                <option>外国语</option>
                <option>信息安全</option>
                <option>电气工程</option>
            </select>
        </div>

        <div class="form_row">
            <label>所学课程</label>
            <select name="course" class="form_select_many" name="specialty" size="5" multiple="multiple">
                <option>计算机组成原理</option>
                <option>数据结构</option>
                <option>大学物理</option>
                <option>数据库原理</option>
                <option>网络通讯管理</option>
            </select>
        </div>

        <dis class="form_row">
            <label>兴趣爱好</label>
            <label><input type="checkbox" name="interst" value="music"/>听音乐</label>
            <label><input type="checkbox" name="interst" value="book"/>阅读</label>
            <label><input type="checkbox" name="interst" value="web"/>上网</label>
        </dis>

        <div class="form_row">
            <label>备注</label>
            <textarea class="form_textarea" name="remark"></textarea>
        </div>
        <div class="form_row">
            <input type="submit" class="form_submit" value="保存"/>
        </div>
        <div class="clear"></div>
        </form>
    </div>
</div>
<div id="tab2" class="tabcontent">
    <h3>项目介绍</h3>
    <p>本项目是基于Java，在Eclipse环境下使用MySQL，Tomcat搭建的简单的JavaWeb项目。使用前端库JQuery绘制页面，三层架构搭建后台。</p>
    <p>本项目实现注册登录功能，并有人性化的验证提醒。无效用户名和密码输入时拦截登录并提示用户正确输入。</p>
    <p>系统实现简单的学生管理系统，包括录入学生信息，展示学生信息，修改和删除学生信息。</p>
    <p>响应式布局，与用户交互良好。</p>
    <ul class="lists">
        <li>8000115014张袁</li>
        <li>8000115104李道鑫</li>
        <li>version：1.0 </li>
        <li> date：2017-12-21</li>
    </ul>
</div>
</body>
</html>
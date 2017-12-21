<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎来到学生管理系统</title>
<link rel="stylesheet" type="text/css" href="css/sign.css">
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="js/easyform.js"></script>
</head>
<body>
<form id="msform" action="validate.jsp" method="post">
    <fieldset>
        <h2 class="fs-title">登录</h2>
        <input type="text" name="username" placeholder="用户名/邮箱" id="uid" easyform="length:4-16;char-chinese;real-time;" message="用户名为4-16位" easytip="disappear:lost-focus;theme:blue;"/>
        <input type="password" name="password" placeholder="密码" id="psw1" easyform="length:6-16;char-normal;" message="密码为6—16位" easytip="disappear:lost-focus;theme:blue;"/>
    	<input type="submit" class="action-button" value="登录"/>
    	<input type="button" class="action-button" value="去注册" onclick="jump()"/>
    </fieldset>
</form>
<script type="text/javascript">
$(document).ready(function(){
	$('#msform').easyform();//执行插件即可
});
function jump(){
    window.open("sign_threeStep.jsp","_self");
}
</script>
</body>
</html>
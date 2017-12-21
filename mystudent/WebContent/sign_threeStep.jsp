<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sign</title>
<link rel="stylesheet" href="css/sign.css">
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="js/easyform.js"></script>
</head>
<body>
<form id="msform" action="sign_result.jsp" method="post">
    <fieldset>
        <h2 class="fs-title">创建你的账户</h2>
        <input type="text" name="username" placeholder="用户名/邮箱" id="uid" easyform="length:4-16;char-chinese;real-time;" message="用户名必须为4—16位中文、英文、数字、下划线、中文标点符号" easytip="disappear:lost-focus;theme:blue;"/>
        <input type="password" name="password" placeholder="密码" id="psw1" easyform="length:6-16;char-normal;" message="密码必须为6—16位英文、数字、下划线" easytip="disappear:lost-focus;theme:blue;"/>
        <input type="submit" class="action-button" value="提交"/>
    	<input type="button" class="action-button" value="去登陆" onclick="jump()"/>
    </fieldset>
</form>
<script type="text/javascript">
$(document).ready(function(){
	$('#msform').easyform();//执行插件即可
});
function jump(){
    window.open("index.jsp","_self");
}
</script>
</body>
</html>
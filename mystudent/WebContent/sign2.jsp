<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sign</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="js/easyform.js"></script>
</head>
<body>
<br>
<div class="form-div">
    <form id="reg-form" action="" method="post">
        <table>
            <tr>
                <td>用户名</td>
                <td><input name="username" type="text" id="uid" easyform="length:4-16;char-normal;real-time;" message="用户名必须为4—16位的英文字母或数字" easytip="disappear:lost-focus;theme:red;" ajax-message="用户名已存在!">
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input name="password" type="password" id="psw1" easyform="length:6-16;" message="密码必须为6—16位" easytip="disappear:lost-focus;theme:blue;"></td>
            </tr>
            <tr>
                <td>确认密码</td>
                <td><input name="password2" type="password" id="psw2" easyform="length:6-16;equal:#psw1;" message="两次密码输入要一致" easytip="disappear:lost-focus;theme:red;"></td>
            </tr>
            <tr>
                <td>email</td>
                <td><input name="email" type="text" id="email" easyform="email;real-time;" message="Email格式要正确" easytip="disappear:lost-focus;theme:black;" ajax-message="这个Email地址已经被注册过，请换一个吧!"></td>
            </tr>
            <tr>
                <td>昵称</td>
                <td><input name="nickname" type="text" id="nickname" easyform="length:2-16" message="昵称必须为2—16位" easytip="disappear:lost-focus;theme:white;"></td>
            </tr>            
        </table>

		<div class="buttons">
			<input value="注 册" type="submit" id="sign" style="margin-right:20px; margin-top:20px;">
			<input value="我有账号，我要登录" type="button" id="login" style="margin-right:45px; margin-top:20px;" onclick="jump()">
        </div>
		
        <br class="clear">
    </form>
</div>

<!--1.如果让本页转向新的页面则用：

<input type=button onclick=”window.location.href(‘连接’)“>

2.如果需要打开一个新的页面进行转向，则用：

<input type=button onclick=”window.open(‘连接’)“>-->
<script type="text/javascript">
$(document).ready(function(){
	$('#reg-form').easyform();//执行插件即可
});
function jump(){
    window.open("index.jsp","_self");
}
</script>
</body>
</html>
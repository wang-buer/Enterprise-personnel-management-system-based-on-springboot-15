<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">

<head>
<meta name="save" content="history">
<meta name="renderer" content="webkit">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/favicon.ico" /> 
<title>员工管理系统</title>
<meta name="keywords" content="员工管理系统">
<meta name="description" content="">

<!-- CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/login.css">

<script type="text/javascript" src="js/jquery-1.4.3.js"></script>
<script src="js/supersized.3.2.7.min.js"></script>

<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">

function loadimage(){
	document.getElementById("randImage").src = "image.jsp?"+Math.random();
}

$(function(){
$("#login_form").submit(function(){
		var username = $("#txtUsername").val();
		if (username == "") {
			alert("用户名不能为空");
			return false;
		}
		var password = $("#txtPassword").val();
		if (password == "") {
			alert("密码不能为空");
			return false;
		}
		var number=$("#imageCode").val();
		if(number==""){
			alert("验证码不能为空");
			return false;
		}
		return true;
});
});
</script>
</head>
<body background="images/1.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%; 
background-attachment: fixed;" >

<div class="page-container" style="background-image: image/bg_th.gif;background-repeat: no-repeat;background-size:100% 100%;background-attachment: fixed;" >
	<div class="main_box">
		<div class="login_box">
			<div class="login_logo">
				<img src="images/logo.png" >
			</div>
			
			<div class="login_form">
				<form action="login.action" id="login_form" method="post" name="login">
					<div class="form-group">
						<label for="j_username" class="t">账　号：</label>
						<input value="${username }" name="username" id="txtUsername" " type="text" class="form-control x319 in" 
						autocomplete="off" placeholder="请输入工号">
						&nbsp;<span  id="usernameMsg" style="color:red">${username_error}</span>
					</div>
					<div class="form-group">
						<label for="j_password" class="t">密　码：</label> 
						<input  value="${password}" name="password" id="txtPassword"  type="password" 
						class="password form-control x319 in" placeholder="请输入密码">
						&nbsp;<span id="passwordMsg" style="color:red">${password_error}</span>
					</div>
				
			

					<div class="form-group space">
						<!-- <label class="t"></label>　　　 -->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" value="登  录" class="btn btn-primary btn-lg" id="submit_btn">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<TD>
											验证码：
										</TD>
										<TD style="HEIGHT: 50px"><INPUT  class=yzm size=8
							type=text value="${imageCode }" name="imageCode" id="imageCode"> <img
							onclick="javascript:loadimage();" title="换一张试试" name="randImage"
							id="randImage" src="image.jsp" width="60" height="20" border="1"
							align="absmiddle">&nbsp;<span style="color:red">${error}</span></TD>
					</div>
				</form>
			</div>
		</div>
		
		
			
	</div>
</div>
</div>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/a.css">
<script type="text/javascript" src="${path}/css/jquery.js"></script>
<script type="text/javascript">
$(function(){
    /** 按了回车键 */
   $(document).keydown(function(event){
	   if(event.keyCode == 13){
		   $("#login-submit-btn").trigger("click");
	   }
   })

   /** 给登录按钮绑定点击事件  */
   $("#login-submit-btn").on("click",function(){
	   /** 校验登录参数 ctrl+K */
	   var loginname = $("#name").val();
	   var password = $("#pwd").val();
	   
	   var msg = null;
	   
	   if(!/^\w{6,20}$/.test(loginname)){
		     msg = "登录名长度必须是6~20之间";
	   }else if(!/^\w{6,20}$/.test(password)){
		     msg = "密码长度必须是6~20之间";
	   }
	   if (msg!=null) {
		  //alert("115");
		 var b=document.getElementById("sp");
		 b.innerHTML=msg;
			$("#sp").innerHTML=msg;
		}
	   if (msg==null) {
	
		   /** 提交表单 */
		  $("#loginForm").submit();
		   
	   }
	   
   })
   
})


</script>
</head>
<body>
	<form action="login.action" method="post" id="loginForm">
		<span id="sp"></span><br><br>
		账号：<input type="text" placeholder="请输入账号" id="name" name="name"><br><br>
		密码：<input type="password" placeholder="请输入密码" id="pwd" name="pwd"><br><br>
		<input type="checkbox" name="remb">记住密码&nbsp;&nbsp;&nbsp;<input type="checkbox" name="auto">自动登录<br><br>
		<input type="button" value="登录" id="login-submit-btn">&nbsp;&nbsp;&nbsp;<input type="button" value="注册" id="注册">
	</form>
</body>
</html>
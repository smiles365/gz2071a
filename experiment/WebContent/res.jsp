<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<font size="50px">欢迎${requestScope.name}进入</font>
值：<input type="text" value=${requestScope.name}>
</body>
</html>
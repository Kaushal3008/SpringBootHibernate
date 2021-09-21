<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="../update" method="post">
<input type="hidden" name="id" value="${user.id}">
Name:<input type="text" name="name" value="${user.name}">
Email:<input type="email" name="email" value="${user.email}">
Password:<input type="password" name="password" value="${user.password}">
<input type="submit">
</form>
</body>
</html>
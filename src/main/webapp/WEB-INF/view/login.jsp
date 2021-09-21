<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<b id="error" style="color: red">${error}</b>

		<form action="loginUser" method="post">
			Email:<input type="text" name="email"> <br> Password:<input
				type="password" name="password"> <input type="hidden"
				name="${_csrf.parameterName }" value="${_csrf.token}">
			<button type="submit">Submit</button>
		</form>
	</div>
</body>
</html>
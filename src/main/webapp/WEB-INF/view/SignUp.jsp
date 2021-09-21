<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
</head>
<body>


	<div class="container">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<form action="saveuser" method="post">
			
			<div class="form-group">
				Name  <input
						type="text" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email" name="name"> 
				</div>
				<div class="form-group">
				Email  <input
						type="email" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="Enter email" name="email"> 
				</div>
				<div class="form-group">
					Password <input
						type="password" class="form-control"
						placeholder="Password" name="password">
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check
						me out</label>
				</div>
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
<b><a href="login">Already SignUp</a></b>

</body>
</html>
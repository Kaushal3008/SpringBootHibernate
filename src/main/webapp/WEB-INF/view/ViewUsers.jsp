<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
	
<link rel="stylesheet"
	href="//cdn.datatables.net/1.11.2/css/jquery.dataTables.min.css">
	
	
<script type="text/javascript"
	src="//cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js">
</script>


<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"> -->
	
<script type="text/javascript">
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>
</head>
<body class="p-3">
	<div>
		<b>USERS</b>
		<table id="table_id" class="table">
			<thead>
				<tr>
					<th scope="col">id</th>
					<th scope="col">name</th>
					<th scope="col">email</th>
					<th scope="col">password</th>
					<th scope="col">action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${list}">
					<tr>
						<th scope="row">${user.id}</th>
						<td>${user.name}</td>
						<td>${user.email}</td>
						<td>${user.password}</td>
						<td><button onclick="getOneUser(${user.id})">VIEW</button> |
							<a href="delete/${user.id}">DELETE</a> | <a
							href="edit/${user.id}">EDIT</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<hr>
	<div class="detail">

		<h2>USER:</h2>
		<hr>
		<br>
		<h3>NAME</h3>
		:<span id="userName">${user.name}</span> <br>
		<h3>EMAIL</h3>
		:<span id="userEmail">${user.email}</span> <br>
		<h3>PASSWORD</h3>
		:<span id="userPass">${user.password}</span> <br>
	</div>

<!-- 	<script src="https://code.jquery.com/jquery-3.6.0.js" -->
<!-- 		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" -->
<!-- 		crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		function getOneUser(id){

			//1) object
			const xhr=new XMLHttpRequest();

			//2) open object
			xhr.open("GET","getOneUser/"+id,true);

			//3)xhr send
			xhr.send();

			//4) ResponseText
			xhr.onload=function(){
				if(this.status==200)
					var obj=JSON.parse(this.responseText);
				console.log(obj)
				document.getElementById("userName").innerText=obj.name;
				document.getElementById("userEmail").innerText=obj.email;
				document.getElementById("userPass").innerText=obj.password;				
			}
		}
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="css/editStudent.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<title>Edit Student</title>
</head>
<body>
<div class="navbar">
	<form action="/studentLogin"method="post">
		<img src="images/eaclogo.png" class="logo" alt="logo">
		<button type="submit" class="btn-logout" name="logout" formaction="/studentLogin">LOG OUT</button>
	</form>
</div>

<div class="container">
<form action="/updateStudentList" method="post">
	<h1 id = "msg"></h1>
		<table border="1">
			<tr>
				<th>Student ID</th>
				<td><input type="text" name="studID" value="${user.studID}"></td>
			</tr>
			
			<tr>
				<th>Email Address</th>
				<td><input type="text" name="emailAddress" value="${user.emailAddress}"></td>
			</tr>
			
			<tr>	
				<th>Student Name</th>
				<td><input type="text" name="studentName" value="${user.studentName}"></td>
			</tr>
			
			<tr>	
				<th>Course</th>
				<td><input type="text" name="course" value="${user.course}"></td>
			</tr>
			
			<tr>	
				<th>City</th>
				<td><input type="text" name="city" value="${user.city}"></td>
			</tr>
		</table>
		<button type="submit" class="btn-update">Update</button>
		<button type="submit" class="btn-update" onclick="history.back()">Back</button>
	</form>
</div>


</body>
</html>
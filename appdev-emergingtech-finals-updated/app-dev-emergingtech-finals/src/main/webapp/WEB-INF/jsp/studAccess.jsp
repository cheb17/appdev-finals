<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="css/studAccess.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<title>Student Access</title>
</head>
<body>
	<div class="navbar">
	<form action="/studentLogin"method="post">
		<img src="images/eaclogo.png" class="logo" alt="logo">
		<button type="submit" class="btn-logout" name="logout" formaction="/studentLogin">LOG OUT</button>
	</form>
	</div>
	
	<div class="container">
		<form action="/quizPage" method="post">
			<h1 id="msg"></h1>
		<table border="1">
			<tr>
<!-- 				<th>Student ID</th> -->
				<th>Email Address</th>
				<th>Fullname</th>
				<th>Course</th>
				<th>City</th>
				<th>Action</th>
			</tr>	
				<c:forEach var="list" items="${listOfStudents}">
<%-- 				<c:forEach var="list" items="${findByStudID}"> --%>
					<tr>
<%-- 						<td>${list.studID}</td> --%>
						<td>${list.emailAddress}</td>
						<td>${list.studentName}</td>
						<td>${list.course}</td>
						<td>${list.city}</td>
						<td>
						<a href="/editStudentList?studID=${list.studID}" class="btn-edit"><span class="material-symbols-outlined">edit</span></a>
						<a href="/deleteStudentList?studID=${list.studID}" class="btn-update"><span class="material-symbols-outlined">delete</span></a></td>
					</tr>
				</c:forEach>
		</table>
		<button type="submit" class="btn-start" name="btn-start" formaction="/quizPage">START QUIZ</button>
		</form>
	</div>
</body>
</html>
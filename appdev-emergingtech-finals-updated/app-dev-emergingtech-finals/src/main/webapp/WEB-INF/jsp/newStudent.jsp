<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="css/newStudent.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<script type = "text/javascript" src ="/js/newUser.js"></script>
</head>
<body>

	<div class="container">
		<h2 id="msg"></h2>
		<h1>REGISTRATION</h1><br><br>
			<form action="/saveStudent" onsubmit="return required()" method="post">
				<b>Email Address: </b><br>
				<input type = "text" id="emailAddress" name="emailAddress" placeholder="Enter Email Address"><br><br>
				<b>Student Name:</b><br>
				<input type = "text" id="studentName" name="studentName" placeholder="Enter Student Name"><br><br>
				<b>Course:</b><br>
				<input type = "text" id="course" name="course" placeholder="Enter Course"><br><br>
				<b>City:</b><br>
				<input type = "text" id="city" name="city" placeholder="Enter City"><br><br>
				<b>Password:</b><br>
				<input type = "password" id="password" name="password" placeholder="Enter Password"><br><br>
				<b>Confirm Password:</b><br>
				<input type = "password" id="confirmPW" name="confirmPW" placeholder="Confirm Password"><br><br>
				<button type="submit" class="submit">Submit</button>
				<button type="submit" class="cancel" formaction="/studentLogin">Cancel</button>
			</form>
	</div>

</body>
</html>
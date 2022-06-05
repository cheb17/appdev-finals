<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="css/studLogin.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Student Login</title>
</head>
<body>

<div class ="container">
	<div class="left">
	<img src="images/eaclogo.png" class="eaclogo">
	</div>
	
	<div class="right">
		<form action="/validateStudent" method="post">
		<h1>Log In</h1>
			<!-- <input type="text" id="studID" name="studID" placeholder="Student ID"> -->
			<input type="text" id="emailAddress" name="emailAddress" placeholder="Email Address">
			<input type="password" id="password" name="password" placeholder="Password">
			<button type="submit" class="login">Enter</button>
			<button type="submit" formaction="/newStudent" class="profBtn">Create an Account</button>
			<button type="submit" formaction="/forgotPassword" class="btn btn-link">Forgot Password?</button>
		</form>
	</div>
</div>

</body>
</html>
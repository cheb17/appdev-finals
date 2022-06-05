<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="css/forgotPassword.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Forgot Password?</title>
</head>
<body>
<div class= "container">
	<div class="forgot">
	<h2>Forgot Your Password?</h2>
	<p>Follow these three simple steps. This will help you renew your password!</p>
	<ol class="list-unstyled">
		<li><span class="text-primary text-medium">1. </span>Enter your email account</li>
		<li><span class="text-primary text-medium">2. </span>Our system will send you a link to you email</li>
		<li><span class="text-primary text-medium">3. </span>Enter your new password</li>	
	</ol>
	</div>
	
	<form action="/resetPassword">
		<div>
			<input type="text" name="recipient" placeholder="Enter Email Address">
		</div>
		
		<div class="footer">
			<button type="submit" class="btn btn-outline-success">Reset Password</button>
			<button type="submit" onclick="history.back()" class="btn btn-outline-danger">Back to Login Page</button>
		</div>
	</form>
</div>
</body>
</html>
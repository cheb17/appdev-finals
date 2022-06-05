<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="css/reset.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Reset Password</title>
</head>
<body>
<div class="container">
	<div class="pw">
		<h1>Reset Password</h1>
	</div>
	<br>
	<div class="container-md">
		<form class="form-horizontal" action="/newSave" method="post">
			<input type="hidden" name="recipient" value="${recipient}">
			<div>
				<input type="password" name="password" placeholder="Enter New Password">
			</div>
					<br>	
			<div class="footer">
				<button type="submit" class="btn btn-outline-success">Save</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>
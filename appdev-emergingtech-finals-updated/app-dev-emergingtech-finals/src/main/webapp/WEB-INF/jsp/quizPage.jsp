<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link rel="stylesheet" href="css/quiz.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
<script type = "text/javascript" src ="/js/quiz.js"></script>

<title>Quiz</title>
</head>
<body>
	<div class="navbar">
	<form action="/studentLogin"method="post">
		<img src="images/eaclogo.png" class="logo" alt="logo">
		<button type="submit" class="btn-logout" name="logout" formaction="/studentLogin">LOG OUT</button>
	</form>
	</div>
<div class="container">
		<h1 id="score"></h1>
<!-- 		<form method="post"> -->
			<section id="q0">
				<h3>Which of the following is not a database management software?</h3>
				<label>
					<input type="radio" value="1" name="q0" onclick="answer(0, this)"> MySQL
				</label>
				<label>
					<input type="radio" value="2" name="q0" onclick="answer(0, this)"> Oracle
				</label>
				<label>
					<input type="radio" value="3" name="q0" onclick="answer(0, this)"> Sybase
				</label>
				<label>
					<input type="radio" value="4" name="q0" onclick="answer(0, this)"> COBOL
				</label>	
			</section>
			<section id="q1">
				<h3>In computer world, Trojan refer to:</h3>
				<label>
					<input type="radio" value="1" name="q1" onclick="answer(1, this)"> Virus
				</label>
				<label>
					<input type="radio" value="2" name="q1" onclick="answer(1, this)" > Malware
				</label>
				<label>
					<input type="radio" value="3" name="q1" onclick="answer(1, this)"> Worm
				</label>
				<label>
					<input type="radio" value="4" name="q1" onclick="answer(1, this)"> Spyware
				</label>
			</section>
			<section id="q2">
				<h3>Which computer program converts assembly language to machine learning?</h3>
				<label>
					<input type="radio" value="1" name="q2" onclick="answer(2, this)"> Interpreter
				</label>
				<label>
					<input type="radio" value="2" name="q2" onclick="answer(2, this)"> Compiler
				</label>
				<label>
					<input type="radio" value="3" name="q2" onclick="answer(2, this)"> Assembler
				</label>
				<label>
					<input type="radio" value="4" name="q2" onclick="answer(2, this)"> Comparator
				</label>
			</section>
			<section id="q3">
				<h3>'Linux' is an example of:</h3>
				<label>
					<input type="radio" value="1" name="q3" onclick="answer(3, this)"> Software
				</label>
				<label>
					<input type="radio" value="2" name="q3" onclick="answer(3, this)"> Application
				</label>
				<label>
					<input type="radio" value="3" name="q3" onclick="answer(3, this)"> Operating System
				</label>
				<label>
					<input type="radio" value="4" name="q3" onclick="answer(3, this)"> Browser
				</label>
			</section>
			<section id="q4">
				<h3>Which is an input device?</h3>
				<label>
					<input type="radio" value="1" name="q4" onclick="answer(4, this)"> Monitor
				</label>
				<label>
					<input type="radio" value="2" name="q4" onclick="answer(4, this)"> Printer
				</label>
				<label>
					<input type="radio" value="3" name="q4" onclick="answer(4, this)" > Mouse
				</label>
				<label>
					<input type="radio" value="4" name="q4" onclick="answer(4, this)"> None of the above
				</label>
			</section>
			<section id="q5">
				<h3> Which web browser is developed by Google?</h3>
				<label>
					<input type="radio" value="1" name="q5" onclick="answer(5, this)"> Internet Explorer
				</label>
				<label>
					<input type="radio" value="2" name="q5" onclick="answer(5, this)"> Firefox
				</label>
				<label>
					<input type="radio" value="3" name="q5" onclick="answer(5, this)"> Safari
				</label>
				<label>
					<input type="radio" value="4" name="q5" onclick="answer(5, this)" > Chrome
				</label>
			</section>
			<section id="q6">
				<h3>Which web browser is provided default with a Windows machine? </h3>
				<label>
					<input type="radio" value="1" name="q6" onclick="answer(6, this)"> Opera
				</label>
				<label>
					<input type="radio" value="2" name="q6" onclick="answer(6, this)"> Internet Explorer
				</label>
				<label>
					<input type="radio" value="3" name="q6" onclick="answer(6, this)"> Chrome
				</label>
				<label>
					<input type="radio" value="4" name="q6" onclick="answer(6, this)"> Mosaic
				</label>
			</section>
			<section id="q7">
				<h3>Mark Zuckerberg is the owner of?</h3>
				<label>
					<input type="radio" value="1" name="q7" onclick="answer(7, this)"> Facebook
				</label>
				<label>
					<input type="radio" value="2" name="q7" onclick="answer(7, this)"> Google
				</label>
				<label>
					<input type="radio" value="3" name="q7" onclick="answer(7, this)"> Linux
				</label>
				<label>
					<input type="radio" value="4" name="q7" onclick="answer(7, this)"> LinkedIn
				</label>
			</section>
			<section id="q8">
				<h3>The main page of a Web site is known as</h3>
				<label>
					<input type="radio" value="1" name="q8" onclick="answer(8, this)"> Home page
				</label>
				<label>
					<input type="radio" value="2" name="q8" onclick="answer(8, this)"> Book mark page
				</label>
				<label>
					<input type="radio" value="3" name="q8" onclick="answer(8, this)"> Content page
				</label>
				<label>
					<input type="radio" value="4" name="q8" onclick="answer(8, this)"> Navigator page
				</label>
			</section>
			<section id="q9">
				<h3>What is the full form of PDF?</h3>
				<label>
					<input type="radio" value="1" name="q9" onclick="answer(9, this)"> Printed Document Format
				</label>
				<label>
					<input type="radio" value="2" name="q9" onclick="answer(9, this)"> Public Document Format
				</label>
				<label>
					<input type="radio" value="3" name="q9" onclick="answer(9, this)"> Portable Document Format
				</label>
				<label>
					<input type="radio" value="4" name="q9" onclick="answer(9, this)"> Published Document Format
				</label>
			</section>
			<button type="submit" class="btn-submit" onclick="correct()">SUBMIT QUIZ</button>
			<button onclick="history.back()" class="btn-back">Go Back</button>
<!-- 		</form> -->
		<h2>Correct Answers: <span id="results"></span></h2>
	</div>

</body>
</html>
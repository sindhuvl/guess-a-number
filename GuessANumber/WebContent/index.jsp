<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./js/gamer.js"></script>
 <link rel = "stylesheet" type = "text/css"   href = "./css/gamer.css" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Guess a Number</title>
</head>
<body>

	<div class='container'>
		<div class='gameBox'>
			<div class='guessBox'>
				<h1>Guess a Number</h1>
				<p>I am thinking a number from 1 to 10.</p>
				<p>You must guess what it is in three tries.</p>
				Enter a guess <input type='number' name="guess" id="guess"
					placeholder="Enter your guess">
				<button type="submit" id="submit">Guess it</button>
				<div id="statusDiv">
					<span id="status"></span>
				</div>
			</div>

		</div>
	</div>

</body>
</html>





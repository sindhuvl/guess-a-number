<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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


<script type="text/javascript">
	$("#submit").click(function() {
		var guess = $("#guess").val();
		var playerId = $("#playerId").val();
		$.ajax({
			url : 'guessanumber',
			type : 'POST',
			data : {
				guess : guess
			},
			success : function(resp) {
				//alert(resp);
				$('#status').text(resp);
			},
			failure : function(error) {
				alert('Update Failed');
			}
		});
	});
	function generatePlayerId(){
		alert("hi sindhu");
	}
</script>

<style>
.gameBox {
	background: none repeat scroll 0 0 #fff;
	border-radius: 2px;
	box-shadow: 0 1px 5px #8a9ba8;
	margin: 3% auto 0;
	max-width: 360px;
	min-height: 300px !important;
	min-width: 300px;
	padding: 1px 1px 10px;
	position: relative;
	width: 94%;
	margin-top: 130px;
}

.guessBox {
	margin-left: 14px;
	margin-top: 60px;
}

#statusDiv {
	margin-top: 15px;
	color: blue;
}
</style>


</html>





window.onload = function() {
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
				$('#status').text(resp);
			},
			failure : function(error) {
				console.log("error--> "+error);
			}
		});
	});
}
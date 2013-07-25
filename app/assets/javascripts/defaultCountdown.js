$(function () {
	var date = new Date();
	date = new Date(2013, 8 - 1, 10,13,0,0,0);
	$('#defaultCountdown').countdown({until: date});

});
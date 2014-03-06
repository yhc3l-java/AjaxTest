<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html><head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="styles/main.css">
</head><body>
	<div class="container">
		<a class="btn btn-lg btn-success" href="#">
  <i class="fa fa-flag fa-2x pull-left"></i> Welcome to Java EE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><span id="bytes"></span> <span id="loading-indicator"><i class="fa fa-refresh fa-spin"></i></span></a>
	</div>
	<script>
		loadNewValue();
		
		function loadNewValue(){
			setTimeout(function(){
				$.get("GetBytes", function(value){
					hideLoading();
					$("#bytes").html(numberWithCommas(value) + " bytes free");
					setTimeoutAgain();
				});
			}, 500);
			
			showLoading();
		}
		
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ");
		}
		
		function hideLoading(){
			$("#loading-indicator").animate({opacity: 0});
		}
		
		function showLoading(){
			$("#loading-indicator").animate({opacity: 1});
		}
		
		function setTimeoutAgain(){
			setTimeout(loadNewValue, 1000);
		}

	</script>
</body></html>
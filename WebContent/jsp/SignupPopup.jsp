<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Viewport Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->

<link href="../resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="../resources/css/style.css" type="text/css" media="all" />
<!--// css -->
<script src="../resources/js/jquery-1.9.1.min.js"></script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--/fonts-->
<!-- dropdown -->
<script src="../resources/js/jquery.easydropdown.js"></script>
<link href="../resources/css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<script src="../resources/js/scripts.js" type="text/javascript"></script>

	<script type="text/javascript">
    	$(document).ready(function () {
	        /* $('#horizontalTab').easyResponsiveTabs({
	            type: 'default', //Types: default, vertical, accordion           
	            width: 'auto', //auto or any width like 600px
	            fit: true   // 100% fit in a container
        	}); */
    	});
    	
    	function onFormSubmit(){
    		
    	}
    	
    	function validateForm(){
    		
    	}
   </script>

</head>
<body>
	<h3>Sign-Up Form</h3>
	<h5>just fill up a small form to register</h5>
	<div class="col-md-8 signupform">
		<form>
			<label class="right inline">Register as :</label>
			<input type="radio" name="regtype" value="yes"> Trainer
			<input type="radio" name="regtype" value="no" checked="checked"> Trainee
			
			<input type="text" id="signupName" placeholder="Name" required="">
			<input type="text" id="signupEmail" placeholder="Email" required="" >
			<input type="password" id="signupPassword" placeholder="Password" required="">
			<input type="password" id="signupPasswordConfirm" placeholder="Confirm Password" required="">
			<input type="text" id="signupPhone" placeholder="10-digit Contact number" required="">
			
			
			
			<input id="registerButton" class="submitButton" type="button" value="Register">
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Viewport a Magazine Category Flat Bootstarp responsive Website Template| Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Viewport Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="../resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="../resources/css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- JQuery -->
<script src="../resources/js/jquery-1.9.1.min.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--/fonts-->
<!-- dropdown -->
<script src="../resources/js/jquery.easydropdown.js"></script>

<!-- 
<script src="../resources/js/jquery-ui.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script> -->

<link href="../resources/css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<script src="../resources/js/scripts.js" type="text/javascript"></script>
<!--js-->
<!--/js-->
<script src="../resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>	
<!-- start-smoth-scrolling -->
<!-- 		<script type="text/javascript" src="../resources/js/move-top.js"></script>
		<script type="text/javascript" src="../resources/js/easing.js"></script> -->
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
				
			});
		</script>
<!-- slider -->
<script src="../resources/js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
        manualControls: '#slider3-pager',
      });
    });
  </script>
 
<!-- Popup related Style and scripts -->
<style>
    /* body { font-size: 62.5%; }
    label, input { display:block; }
    input.text { margin-bottom:12px; width:95%; padding: .4em; } */
    fieldset { padding:0; border:0; margin-top:25px; }
    h1 { font-size: 1.2em; margin: .6em 0; }
    div#users-contain { width: 350px; margin: 20px 0; }
    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
    .ui-dialog .ui-state-error { padding: .3em; }
    .validateTips { border: 1px solid transparent; padding: 0.3em; }
  </style>
  <script>
  $(function() {

	   
    var dialog, form,
 
      // From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
      emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
      name = $( "#signupName" ),
      email = $( "#signupEmail" ),
      password = $( "#signupPassword" ),
      phone = $("#signupPhone"),
      allFields = $( [] ).add( name ).add( email ).add( password ).add(phone),
      tips = $( ".validateTips" );
 
    $("#signUpSubmit").click(function(event){		
    	var isTrainer = $('input[name=regtype]:checked').val();
		if( !validateEmail($("#signup_email").val())) {
			 alert("Invalid Email address! Please try again.");
		}else{
			$("#signupEmail").val($("#signup_email").val());
			dialog.dialog( "open" );
		}
	});
	function completeSignUp() {	
		
	}
	function validateEmail(email) {
		var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	    return expr.test(email);
	}
	
    function updateTips( t ) {
      tips
        .text( t )
        .addClass( "ui-state-highlight" );
      setTimeout(function() {
        tips.removeClass( "ui-state-highlight", 1500 );
      }, 500 );
    }
 
    function checkLength( o, n, min, max ) {
      if ( o.val().length > max || o.val().length < min ) {
        o.addClass( "ui-state-error" );
        if(min==max){
        	updateTips( "Length of " + n + " must be " + min + "." );
        }else{
        	updateTips( "Length of " + n + " must be between " +
          		min + " and " + max + "." );
        }
        return false;
      } else {
        return true;
      }
    }
 
    function checkRegexp( o, regexp, n ) {
      if ( !( regexp.test( o.val() ) ) ) {
        o.addClass( "ui-state-error" );
        updateTips( n );
        return false;
      } else {
        return true;
      }
    }
 
    function addUser() {
      var valid = true;
      allFields.removeClass( "ui-state-error" );
 
      valid = valid && checkLength( name, "Username", 3, 16 );
      valid = valid && checkLength( email, "Email", 6, 80 );
      valid = valid && checkLength( password, "Password", 5, 16 );
      valid = valid && checkLength( phone, "Contact Number", 10, 10);
 
      valid = valid && checkRegexp( name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter." );
      valid = valid && checkRegexp( email, emailRegex, "eg. ui@jquery.com" );
      valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
      valid = valid && checkRegexp( phone, /^(\+?1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?[2-9]\d{2}-?\d{4}$/, "Please provide valid contact number.");
      /* valid = valid && checkRegexp(phone, /^(?(\d{3}))?[- ]?(\d{3})[- ]?(\d{4})$/, "Please provide valid contact number."); */
      
 
      if ( valid ) {
    	  alert("Registration Successful!")
        /* $( "#users tbody" ).append( "<tr>" +
          "<td>" + name.val() + "</td>" +
          "<td>" + email.val() + "</td>" +
          "<td>" + password.val() + "</td>" +
        "</tr>" );
        dialog.dialog( "close" ); */
      }
      return valid;
    }
 
    dialog = $( "#signupWindow" ).dialog({
      autoOpen: false,
      height: 330,
      width: 450,
      modal: true,
      resizable: false,
      draggable: false,
      buttons: {
        "Create an account": addUser,
        Cancel: function() {
          dialog.dialog( "close" );
        }
      },
      close: function() {
        form[ 0 ].reset();
        allFields.removeClass( "ui-state-error" );
      }
    });
 
    form = dialog.find( "form" ).on( "button", function( event ) {
      event.preventDefault();
      addUser();
    });
 
  });
  </script>
<!-- Popup related Style and scripts End -->
<!-- slider -->
</head>
<body>
	<div id="home" class="header">

		<div class="header-bottom">
			<!-- container -->
			<div class="container">
				<div class="head-logo">
					<a href="home"><img src="../resources/images/logo.png" alt="" /></a>
				</div>
				<div class="logo-right">
					<div class="banner-top">
						<span class="menu">MENU</span>
						<ul class="nav banner-nav">
							<li>06 Dec 2010</li>
							<li class="dropdown1"><a href="explore">Explore<span>search your preferences</span></a>
							<li class="dropdown1"><a href="#signinComponent">Sign up/Sign in<span>get your own account</span></a>
						</ul>
						<script>
							$("span.menu").click(function(){
								$(" ul.nav").slideToggle("slow" , function(){
								});
							});
						</script>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- //container -->
		</div>
	</div>
	<!-- //header -->
	<!-- bg-banner -->
	<div class="bg-banner">
		<div class="banner-bottom-bg">
			<div class="banner-bg">
				<div class="container">
					<!-- banner -->
					<div class="banner">
						<div class="banner-grids">
							<div class="banner-middle">
								<div class="strip"> </div>
								<div class="sliderAndForm">
									<div class="col-md-6 slider">
										<!-- Slideshow 3 -->
										<ul class="rslides" id="slider">
											<li><img src="../resources/images/1.jpg" alt=""></li>
											<li><img src="../resources/images/2.jpg" alt=""></li>
											<li><img src="../resources/images/3.jpg" alt=""></li>
											<li><img src="../resources/images/4.jpg" alt=""></li>
											<li><img src="../resources/images/5.jpg" alt=""></li>
											<li><img src="../resources/images/6.jpg" alt=""></li>
											<li><img src="../resources/images/7.jpg" alt=""></li>
											<li><img src="../resources/images/8.jpg" alt=""></li>
											<li><img src="../resources/images/9.jpg" alt=""></li>
											<li><img src="../resources/images/10.jpg" alt=""></li>
										</ul>
										<!-- Slideshow 3 Pager -->
										<!--<ul id="slider3-pager">
                                            <li><a href="#"><img src="../resources/images/1c.jpg" alt=""></a></li>
                                            <li><a href="#"><img src="../resources/images/2c.jpg" alt=""></a></li>
                                            &lt;!&ndash;<li><a href="#"><img src="../resources/images/3c.jpg" alt=""></a></li>
                                            <li><a href="#"><img src="../resources/images/4c.jpg" alt=""></a></li>
                                            <li><a href="#"><img src="../resources/images/5c.jpg" alt=""></a></li>
                                            <li><a href="#"><img src="../resources/images/6c.jpg" alt=""></a></li>
                                            <li><a href="#"><img src="../resources/images/7c.jpg" alt=""></a></li>
                                            <li><a href="#"><img src="../resources/images/8c.jpg" alt=""></a></li>
                                            <li><a href="#"><img src="../resources/images/9c.jpg" alt=""></a></li>
                                            <li><a href="#"><img src="../resources/images/10c.jpg" alt=""></a></li>&ndash;&gt;
                                        </ul>-->
									</div>
									<div class="signupSigninHome col-md-6">
										<div id="signinComponent" class="banner-bottom-left-grids signinComponent">
											<div class="signinForm">
												<h3>Sign In</h3>
												<div class="advertisement">
													<form name="loginForm" id="loginForm" onsubmit="" action="/php/reg/main/signInAHR.php" method="POST">
														<table>
															<tbody>
															<tr>
																<td><label class="right inline">User Name</label></td>
																<td><input type="text" class="textField" placeholder="Username or Email ID" required="" name="username" id="login_name" tabindex="1" maxlength="50"></td>
															</tr>
															<tr>
																<td><label class="right inline">Password</label></td>
																<td><input type="text" class="textField" placeholder="Password" required="" name="password" id="login_password" tabindex="2" maxlength="50" type="text"></td>
															</tr>
															</tbody>
														</table>
														<input type="submit" value="Log In">
													</form>
												</div>
											</div>
										</div>
										<div id="signupHomeComponent" class="banner-bottom-left-grids signupHomeComponent ">
											<div class="signupHomeForm">
												<h3>Create A Free Account</h3>
												<div class="signupHomeForm">
													<form name="signupHomeForm" id="signupHomeForm">
														<div class="btn-grp block-toggle" data-toggle="buttons">
															<label class="right inline">I am a </label>
															<label class="btn btn-primary" style="margin-left:12px;">
																<input type="radio" name="regtype" value="yes"> Trainer
															</label>
															<label class="btn btn-primary active">
																<input type="radio" name="regtype" value="no" checked="checked"> Trainee
															</label>
														</div>
														<label class="right inline">Email ID</label>
														<input type="text" class="textField" placeholder="Email ID" required="" name="signUpEmail" id="signup_email" tabindex="1" maxlength="50">

														<!--<table>
                                                            <tbody>
                                                            <tr>
                                                                <td><label class="right inline">User Name</label></td>
                                                                <td>&nbsp;&nbsp;</td>
                                                                <td><input type="text" class="textField" placeholder="Username or Email ID" required="" name="username" id="login_name" tabindex="1" maxlength="50"></td>
                                                            </tr>
                                                            <tr>
                                                                <td><label class="right inline">Password</label></td>
                                                                <td>&nbsp;&nbsp;</td>
                                                                <td><input type="text" class="textField" placeholder="Password" required="" name="password" id="login_password" tabindex="2" maxlength="50" type="text"></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>-->
														<input id="signUpSubmit" type="button" value="Continue" class="submitButton">
													</form>
												</div>
											</div>
										</div>
									</div>
									</div>
									
									<div id="signupWindow" title="Registration Form">
										<p class="validateTips">All form fields are required.</p>
									  	<form>
									    	<fieldset>
									    		<table>
									    			<tbody>
									    				<tr>
									    					<td><label for="regtype" class="right inline">Register as</label></td><td>&nbsp;&nbsp;&nbsp;</td>
						    								<td>
						    									<input type="radio" name="regtype" value="yes"> Trainer
																<input type="radio" name="regtype" value="no" checked="checked"> Trainee
						    								</td>
									    				</tr>
									    				<tr>
									    					<td><label for="signupName">Name</label></td><td>&nbsp;&nbsp;&nbsp;</td>
						    								<td><input type="text" name="signupName" id="signupName" placeholder="Ex: Jane Smith" class="text ui-widget-content ui-corner-all"></td>
									    				</tr>
									    				<tr>
									    					<td><label for="signupEmail">Email</label></td><td>&nbsp;&nbsp;&nbsp;</td>
						    								<td><input type="text" name="signupEmail" id="signupEmail" placeholder="Ex: jane@smith.com" class="text ui-widget-content ui-corner-all"></td>
									    				</tr>
									    				<tr>
									    					<td><label for="signupPassword">Password</label></td><td>&nbsp;&nbsp;&nbsp;</td>
						    								<td><input type="password" name="signupPassword" id="signupPassword" placeholder="Ex: 123456789" class="text ui-widget-content ui-corner-all"></td>
									    				</tr>
									    				<tr>
									    					<td><label for="signupPhone">Contact</label></td><td>&nbsp;&nbsp;&nbsp;</td>
						    								<td><input type="text" name="signupPhone" id="signupPhone" placeholder="10-digit Contact number" class="text ui-widget-content ui-corner-all"></td>
									    				</tr>
									    			</tbody>
									    		</table>
										      	<!-- Allow form submission with keyboard without duplicating the dialog button -->
										      	<input type="button" tabindex="-1" style="position:absolute; top:-1000px">
									    	</fieldset>
									  	</form>
									</div>
									
								
								<div class="col-md-4 banner-bottom-right" >

								</div>
								<!-- banner-bottom-grids -->
								<div class="banner-bottom-grids">
									<!-- banner-bottom-left -->
									<div class="col-md-8 banner-bottom-left">
										<div class="banner-bottom-left-grids">
											<div class="col-md-6 banner-left-grid">
												<h3>Technology</h3>
												<a href="single.html"><img src="../resources/images/b1.jpg" alt="" /></a>
												<h4><a href="single.html">Silicon Valley Shows Signs of Dot-Com Frenzy</a></h4>
												<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
												<p class="text">Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur...</p>
												<div class="blog-grids">
													<div class="blog-grid-left">
														<img src="../resources/images/b6.jpg" alt="" />
													</div>
													<div class="blog-grid-right">
														<a href="single.html">Fly Fishers Serving as Transports for Noxious Little Invaders</a>
														<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
													</div>
													<div class="clearfix"> </div>
												</div>
												<div class="blog-grids">
													<div class="blog-grid-left">
														<img src="../resources/images/b5.jpg" alt="" />
													</div>
													<div class="blog-grid-right">
														<a href="single.html">Fly Fishers Serving as Transports for Noxious Little Invaders</a>
														<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
											<div class="col-md-6 banner-left-grid">
												<h3>Entertainment</h3>
												<a href="single.html"><img src="../resources/images/b2.jpg" alt="" /></a>
												<h4><a href="single.html">Silicon Valley Shows Signs of Dot-Com Frenzy</a></h4>
												<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
												<p class="text">Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur...</p>
												<div class="blog-grids">
													<div class="blog-grid-left">
														<img src="../resources/images/b5.jpg" alt="" />
													</div>
													<div class="blog-grid-right">
														<a href="single.html">Fly Fishers Serving as Transports for Noxious Little Invaders</a>
														<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
													</div>
													<div class="clearfix"> </div>
												</div>
												<div class="blog-grids">
													<div class="blog-grid-left">
														<img src="../resources/images/b6.jpg" alt="" />
													</div>
													<div class="blog-grid-right">
														<a href="single.html">Fly Fishers Serving as Transports for Noxious Little Invaders</a>
														<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="banner-bottom-left-grids">
											<div class="col-md-6 banner-left-grid">
												<h3>Technology</h3>
												<a href="single.html"><img src="../resources/images/b3.jpg" alt="" /></a>
												<h4><a href="single.html">Silicon Valley Shows Signs of Dot-Com Frenzy</a></h4>
												<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
												<p class="text">Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur...</p>
												<div class="blog-grids">
													<div class="blog-grid-left">
														<img src="../resources/images/b6.jpg" alt="" />
													</div>
													<div class="blog-grid-right">
														<a href="single.html">Fly Fishers Serving as Transports for Noxious Little Invaders</a>
														<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
													</div>
													<div class="clearfix"> </div>
												</div>
												<div class="blog-grids">
													<div class="blog-grid-left">
														<img src="../resources/images/b5.jpg" alt="" />
													</div>
													<div class="blog-grid-right">
														<a href="single.html">Fly Fishers Serving as Transports for Noxious Little Invaders</a>
														<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
											<div class="col-md-6 banner-left-grid">
												<h3>Entertainment</h3>
												<a href="single.html"><img src="../resources/images/b4.jpg" alt="" /></a>
												<h4><a href="single.html">Silicon Valley Shows Signs of Dot-Com Frenzy</a></h4>
												<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
												<p class="text">Lorem ipsum ex vix illud nonummy, novum tation et his. At vix scripta patrioque scribentur...</p>
												<div class="blog-grids">
													<div class="blog-grid-left">
														<img src="../resources/images/b5.jpg" alt="" />
													</div>
													<div class="blog-grid-right">
														<a href="single.html">Fly Fishers Serving as Transports for Noxious Little Invaders</a>
														<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
													</div>
													<div class="clearfix"> </div>
												</div>
												<div class="blog-grids">
													<div class="blog-grid-left">
														<img src="../resources/images/b6.jpg" alt="" />
													</div>
													<div class="blog-grid-right">
														<a href="single.html">Fly Fishers Serving as Transports for Noxious Little Invaders</a>
														<p class="comments">August 4 2010, <a href="#">8 Comments</a></p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<!-- //banner-bottom-left -->
									<!-- banner-bottom-right -->
									<!--<div class="col-md-4 banner-bottom-right" >
										<div id="signinComponent" class="banner-bottom-left-grids signinComponent">
											<div class="signinForm">
												<h3>Sign In</h3>
												<div class="advertisement">
													<form name="loginForm" id="loginForm" onsubmit="return EOL.login.signin('login-error','spr-sign-in-btn-standard'); return false;" action="/php/reg/main/signInAHR.php" method="POST">
														<table>
															<tbody>
																<tr>
																	<td><label class="right inline">User Name</label></td>
																	<td>&nbsp;&nbsp;&nbsp;</td>
																	<td><input type="text" class="textField" placeholder="Username or Email ID" required="" name="username" id="login_name" tabindex="1" maxlength="50"></td>
																</tr>
																<tr>
																	<td><label class="right inline">Password</label></td>
																	<td>&nbsp;&nbsp;&nbsp;</td>
																	<td><input type="text" class="textField" placeholder="Password" required="" name="password" id="login_password" tabindex="2" maxlength="50" type="text"></td>
																</tr>
															</tbody>
														</table>
														<input type="submit" value="Log In">
													</form>
												</div>
											</div>
											<div class="sponsors">
												<h3>Sponsors</h3>
												<div class="sponsors-grids">
													<div class="sponsors-grid-left">
														<div class="sponsors-grid">
															<p>125 x 125</p>
														</div>
													</div>
													<div class="sponsors-grid-left">
														<div class="sponsors-grid">
															<p>125 x 125</p>
														</div>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
											<div class="video">
												<h3>Featured Video</h3>
													<iframe src="https://player.vimeo.com/video/4717303" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
											</div>
											<div class="twitter">
												<h3>Twitter</h3>
												<div class="twitter-info">
													<p>Genesis Child Themes at Theme Garden – December 5th &ndash;&gt; <a href="#">http://bit.ly/ibXdjY #genesiswp <span>#themegarden</span></a>
													<span class="time"><a href="#">31 minutes ago</a></span></p>
												</div>
												<div class="twitter-info">
													<p>PhotoPro Genesis Child Theme by Creativity Included Launches at <a href="#">http://bit.ly/9fGbq0 - http://eepurl.com/</a>
													<span class="time"><a href="#">31 minutes ago</a></span></p>
												</div>
												<div class="twitter-info">
													<p>Latest: Genesis Child Themes at Theme Garden – December 5th - Many of you are aware that Jason Schuller of Press75 r... <a href="#">http://ht.ly/1akn8s</a>
													<span class="time"><a href="#">31 minutes ago</a></span></p>
												</div>
												<div class="twitter-info">
													<p>The Rockstar Guide to Getting More Traffic, Fame, and Success &ndash;&gt; <a href="#">http://bit.ly/hCzF69</a>
													<span class="time"><a href="#">31 minutes ago</a></span></p>
												</div>
											</div>
											<div class="recent-posts">
												<h3>Recent Posts</h3>
												<ul>
													<li><a href="#">Use Prose to Put the Focus on Your Words</a></li>
													<li><a href="#">Images Add Life to Your Site</a></li>
													<li><a href="#">What’s a Framework and Why Do I Need One?</a></li>
													<li><a href="#">7 Tips for Capturing Short Attention Spans</a></li>
													<li><a href="#">Making Your Blog a Great Place to Hang Out</a></li>
											</div>
										</div>
									</div>-->
									<!-- banner-bottom-right -->
									<div class="clearfix"> </div>
									<div class="up-arrow">
										<a class="scroll" href="#home">Back to Top</a>
									</div>
								</div>
								<!-- //banner-bottom-grids -->
							</div>
						</div>
					</div>
					<!-- //banner -->
				</div>
			</div>
		 </div>
	</div>	
	<!-- //bg-banner -->
	<div class="footer">
		<!-- container -->
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 recent-posts footer-left">
					<h3>Recent Posts</h3>
					<ul>
						<li><a href="#">Use Prose to Put the Focus on Words</a></li>
						<li><a href="#">Images Add Life to Your Site</a></li>
						<li><a href="#">What’s a WordPress theme Framework?</a></li>
						<li><a href="#">7 Tips for Short Attention Spans</a></li>
						<li><a href="#">Make Your Blog a Great Place to Hang</a></li>
					</ul>
				</div>
				<div class="col-md-3 viewport">
					<h3>About Viewport</h3>
					<p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.

						<span>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span> 

						Aenean lacinia bibendum nulla sed consectetur. Cras mattis consectetur purus sit amet fermentum.
						Donec id elit non mi porta gravida at eget metus. 
					</p>
				</div>
				<div class="col-md-3 footer-comments">
					<h3>Comments</h3>
					<ul>
						<li>Orman Clark on <a href="#">Sample Post With Threaded Comments</a></li>
						<li>Orman Clark on <a href="#">Sample Post With Threaded Comments</a></li>
						<li>Orman Clark on <a href="#">Sample Post With Threaded Comments</a></li>
						<li>Orman Clark on <a href="#">Sample Post With Threaded Comments</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-logo">
					<a href="index.html"><img src="../resources/images/f-logo.png" alt="" /></a>
					<p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
				<div class="clearfix"> </div>
				<div class="copyright">
					<p>Template by <a href="http://w3layouts.com/">W3layouts</a></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
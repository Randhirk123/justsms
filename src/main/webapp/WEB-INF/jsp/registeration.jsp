<!-- meta tags and other links -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Register sms.justsms.co.in</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="css/snackbar.css">
<script src="js/sticky.js"></script>
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">

				<form:form class="login100-form validate-form" method="Post"
					action="/Register" modelAttribute="clientForm">


					<p align="center" style="color: silver; font-size: 20px;">
						Register A New Membership</p>
					<br />
					<div class="wrap-input100 validate-input"
						data-validate="Enter username">
						<input class="input100" type="text" name="username"
							placeholder="Username"> <span class="focus-input100"
							data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter mobile number">
						<input class="input100" type="text" name="mobile"
							placeholder="Enter mobile number"> <span
							class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter email">
						<input class="input100" type="text" name="email"
							placeholder="Enter your email"> <span
							class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<input class="input100" type="password" name="password" id="txtNewPassword"
							placeholder="Password"> <span class="focus-input100"
							data-placeholder="&#xf191;"></span>


					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter confirm password">
						<input class="input100" type="password" name="cpassword" id="txtConfirmPassword"
							placeholder="Confirm Password"> <span
							class="focus-input100" data-placeholder="&#xf191;"></span>
							<div class="registrationFormAlert" style="color:red;" id="CheckPasswordMatch">
					</div>

					

					<div class="form-group" class="wrap-input100 validate-input">
						<label style="color: white">Question</label> <select
							name="question" id="question"
							class="form-control selectric">
							<option value="What is the name of your favorite pet?">What
								is the name of your favorite pet?</option>
							<option
								value="What is the name of your favorite childhood friend?">What
								is the name of your favorite childhood friend?</option>
							<option
								value="In what city or town did your mother and father meet?">In
								what city or town did your mother and father meet?</option>
							<option value="What is the middle name of your oldest child?">What
								is the middle name of your oldest child?</option>
							<option
								value="What was the name of the hospital where you were born?">What
								was the name of the hospital where you were born?</option>

						</select>
					</div>
					
					<div class="wrap-input100 validate-input"
						data-validate="Enter confirm password">
						<input class="input100" type="text" name="answer"
							placeholder="Enter your answer"> <span
							class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="terms_condition">
						<label class="label-checkbox100" for="ckb1">
							 I agree to the  <a href="" target="_blank" style="color:blue">Terms & Condition</a>
						</label>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Register</button>
					</div>

					<div class="text-center p-t-10">
						<span style="color:white;" >Already Registered? <a class="txt1" href="/Login" style="color:blue"> Login </a></span>
					</div>
				</form:form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	
	  <script>
    function checkPasswordMatch() {
        var password = $("#txtNewPassword").val();
        var confirmPassword = $("#txtConfirmPassword").val();
        if (password != confirmPassword)
            $("#CheckPasswordMatch").html("Passwords does not match!");
        else
        	 $("#CheckPasswordMatch").html("");
    }
    $(document).ready(function () {
       $("#txtConfirmPassword").keyup(checkPasswordMatch);
    });
    </script>
	<script> myFunction()</script>
</body>
</html>
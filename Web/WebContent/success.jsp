<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Successful</title>
<%@ include file="banner.html"%>
</head>
<body>
	
	
	<div class="container" >
		<img src="css/logo.png" alt="Avatar" class="imgoverlay" >
		<div class="overlay">
			<div class="text">
				REGISTRATION SUCCESSFUL CONGRATULATIONS!!!!!<br> THANK YOU FOR
				CHOOSING OCTAVE BANK<br> <br>REDIRECT TO HOME PAGE FOR
				LOGIN!!!!!
				<center>
					<span><div style="color: black;">YOUR ACCOUNT NUMBER IS: <%= session.getAttribute("userAccount") %></div></span>
				</center>
			</div>
			<br>



		</div>

	</div>
	
	
	<center>
		<a href="Home.jsp" id="dt"><strong>HOME</strong></a>
	</center>


</body>
</html>
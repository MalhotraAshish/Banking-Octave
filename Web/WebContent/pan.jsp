<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<script type="text/javascript">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal details</title>
<%@ include file="banner.html"%>
</head>
<body>


	<div class="vr">
		<form action="doPanRegister.bank" method="post"
			class="table">
			<br>
				<br> <br>
				<br> <br> <br>
			<table class="table table-hover" border="1" align="center" style="width: 600px">
				<tr>
					<td><strong><center style="color: black;">Pan Card Number</center></strong></td>
					<td><input type="text" id="obj" name="panNo" maxlength="10" pattern ="[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}" required /></td>
				</tr>
				<tr>
					<td><strong><center style="color: black;">Email</center></strong></td>
					<td><input type="email" name="email" pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[com,co,in]{2,5}" required /></td>
				</tr>
				<tr>
					<td><strong><center style="color: black;">Password</center></strong></td>
					<td><input type="password" name="password" pattern ="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,12})" required /></td>
				</tr>
				
			</table>
		
			<center>
					<button class="btn" type="submit" value="register">
						<span>REGISTER</span>

					</button>


				</center>
			</form>
			</div>
</body>
</html>
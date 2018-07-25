<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="banner.html"%>
<title>New Password</title>
</head>
<body>
	<div class="bg">

		<form action="newPasssword.bank" method="post">
			<br> <br> <br> <br> <br> <br> <br>
			<br>
			<table class="table table-hover" border="1" align="center"
				style="width: 600px">
				<tr>
					<th colspan="2"><center style="color: white;">CHANGE
							PASSWORD</center></th>
				</tr>
				<tr>
					<td><center style="color: white;">NEW PASSWORD</center></td>
					<td><input type="password" name="password" pattern ="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,12})" required></td>
				</tr>

			</table>
			<center>
				<button class="button" type="submit" value="reset password">
					<span>RESET PASSWORD</span>

				</button>


			</center>

		</form>

	</div>
</body>
</html>
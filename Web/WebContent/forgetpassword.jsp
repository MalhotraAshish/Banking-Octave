<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password</title>
<%@ include file="banner.html"%>
</head>

<body>
	<div class="bg">

		<form action="forget.bank" method="post">
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br>
			<table class="table table-hover" border="1" align="center"
				style="width: 450px">
				<tr>
					<th colspan="2"><center style="color: white">FORGET
							PASSWORD</center></th>
				</tr>
				<tr>
					<td><center style="color: white">Email</center></td>
					<td><input type="email" name="email" required></td>
				</tr>


				<tr>
					<td><center style="color: white">Mobile Number</center></td>
					<td><input type="text" pattern="[0-9]{10}" name="mobileNo"
						minlength="10" maxlength="10" required></td>
				</tr>


			</table>
			<center>
				<button class="btn" type="submit" value="proceed">
					<span>Proceed</span>

				</button>


			</center>
			<center>
				<span><div style="color: white;">${invalidPhone}</div></span>
			</center>
		</form>

	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nominations</title>
<%@ include file="banner.html"%>
</head>
<body>

	
	<br>
	<br>
	<center>
		<form class="table table-bordered">
		<br><br><br>
	
			<table class="table table-hover" style = "width:500px; border:10px">
				<tr>
					<td><strong>Pan Card Number</strong></td>
					<td>${User.panNo }</td>
				</tr>
				<tr>
					<td><strong>Aadhar Card Number</strong></td>
					<td>${userName.aadharNo}</td>
				</tr>
				<tr>
				</tr>
			</table>
		</form>
	</center>
		<center>
		<a href="profile.jsp" id="dt"><strong>BACK</strong></a>
		</center>
	<br><br>
	<br><br>
	<br><br>
	<br><br>
	<br><br>
	
	<%@ include file="footer.html"%>
</body>
</html>
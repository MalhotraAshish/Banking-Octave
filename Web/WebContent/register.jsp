<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="scripts/checkbox_validation.js">
	
</script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
<%@ include file="banner.html"%>
</head>

<body>

	<div class="vr">
		<center>
			<form action="Details.bank" modelAttribute="register" method="post" class="table">
			<br>
			<br>
				<table class="table table-hover" border="1" align="center"
					style="width: 600px">
					<tr>
						<td><strong><center style="color: black;">NAME</center></strong></td>
						<td><b><i>${ Aadhar.name }</i></b></td>
					</tr>
					<tr>
						<td><strong><center style="color: black;">ADDRESS</center></strong></td>
						<td><b><i>${ Aadhar.address }</i></b></td>
					</tr>
					<tr>
						<td><strong><center style="color: black;">GENDER</center></strong></td>
						<td><b><i>${ Aadhar.gender }</i></b></td>
					</tr>
					<tr>
						<td><strong><center style="color: black;">DATE OF BIRTH</center></strong></td>
						<td><b><i>${ Aadhar.dob }</i></b></td>
					</tr>
					
					<tr>
						<td><strong><center style="color: black;">CONTACT NUMBER</center></strong></td>
						<td><b><i>${ Aadhar.mobileNo }</i></b></td>
					</tr>
					<tr>
						<td><strong><center style="color: black;">CITY</center></strong></td>
						<td><b><i>${ Aadhar.city }</i></b></td>
					</tr>

					<tr>
						<td><strong><center style="color: black;">STATE</center></strong></td>
						<td><b><i>${ Aadhar.state }</i></b></td>
					</tr>

					<tr>
						<td><strong><center style="color: black;">COUNTRY</center></strong></td>
						<td><b><i>${ Aadhar.country }</i></b></td>
					</tr>

				</table>
				<p style="color: white"><strong>
					I AGREE TO TERMS AND CONDITIONS <input type="checkbox" id="myCheck"
						onclick="myFunction()" required>
				</strong></p>

				<p id="text" style="color: white"><strong>By selecting this , you agree
					to share your information with Octave Bank</strong></p>
				<br> <br>

				<center>
					<button class="button" type="submit" value="next">
						<span>NEXT</span>

					</button>


				</center>
			</form>
		</center>
	</div>
</body>
</html>
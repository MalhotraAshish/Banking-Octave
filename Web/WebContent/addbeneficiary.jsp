<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Beneficiary</title>
<%@ include file="banner.html"%>
</head>
<body>
	<div class="bg">
	<div class="container-fluid">
		<div class="row" id="nav">

			<div class="col-lg-4 horizon">Welcome: ${ userName.name}</div>
			
			<div class="col-lg-4 horizon" style = "text-align:right;">
				Date:<%
				DateFormat df = new SimpleDateFormat("dd/MM/yy");
				String formattedDate = df.format(new Date());
				out.println(formattedDate);
			%>
			</div>
	
			<div class="col-lg-4 horizon">
				<a class="list_link" href="Signout.bank">Logout</a>
			</div>

	</div>
	</div>
	
		<form action="doCheckBeneficiary.bank" method="post">
			<br> <br> <br> <br>
			<br> <br>
			<br>

			<center>
				<div style="color: white">
					<strong>Beneficary Account Number: <input type="text"
						name="beneficiaryAccNo" pattern="[0-9]{10}" required></strong><br>

				</div>
			</center>
			<br>
			<br>

			<center>
				<button class="button" type="submit" value="ADD">
					<span>ADD</span>

				</button>


			</center>
			<center>
				<button class="button" type="submit" value="back">
					<span><a href="profile.jsp" style = "color:white; ">BACK</a></span>

				</button>
			</center>
			<center>
				<div style="color: red">${fail}${addSuccess}</div>
			</center>

			
		</form>
	</div>
	<div><%@ include file="footer.html"%></div>
</body>
</html>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">

</head>
<body>
<%@ include file="banner.html"%>


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

	<div class="container-fluid">
		<div class="row">

			<div class="col-lg-3" style = "color:white;"   >
				<ul>
					<li><a  href="profile.jsp">Profile</a></li>
					<li><a  href="startpage.jsp">Account
							Statement </a></li>
					<li><a  href="txndetails.bank"> Mini
							Statement </a></li>
					<li><a  href="addbeneficiary.jsp">Add
							Beneficiary </a></li>
					<li><a  href="beneficiary.bank">Intra
							Bank Fund Transfer</a></li>
					<li><a  href="forgetpassword.jsp">Change
							Password</a></li>
				</ul>
			</div>

			<div class="col-lg-9">
				<h1 style="text-align: center; position: relative; top: 60px;">Account
					summary</h1>

				<table class="table table-hover"
					style="position: relative; top: 100px; left: 100px; margin-left: 140px; width: 50%;">
					<tr>
						<td><strong> Account Number </strong></td>
						<td><strong> Name </strong></td>
						<td><strong> Available Balance </strong></td>
					</tr>
					<tr>
						<td>${User.accountNo}</td>
						<td>${userName.name}</td>
						<td>${User.currentBalance}</td>
					</tr>

				</table>

				<div style="text-align: center; position: relative; top: 120px;">
					<a href="nominations.jsp">View Nomination And PAN Details</a>
				</div>

			</div>

		</div>

	</div>
	<center>
		<div style="color: red">${addSuccess}${success}</div>
	</center>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div><%@ include file="footer.html"%></div>
</body>
</html>
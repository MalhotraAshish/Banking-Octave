<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fund Transfer</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<%@ include file="banner.html"%>
</head>
<body>
<% long accountNo = Long.parseLong(session.getAttribute("account").toString()); %>

	<div class="container-fluid">
		<div class="row" id="nav">

			<div class="col-lg-4 horizon">Welcome: ${ userName.name}</div>

			<div class="col-lg-4 horizon" id="date" style = "text-align:right;">Date:
			<%
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

			<div class="col-lg-3">
				<ul>
					<li><a  href="profile.jsp">Profile</a></li>
					<li><a  href="startpage.jsp">Account Statement</a></li>
					<li><a  href="">Add Beneficiary</a></li>
					<li><a  href="interbankfundtransfer.jsp">Inter Bank Fund Transfer</a></li>
					<li><a  href="forgetpassword.jsp">Change Password</a></li>
				</ul>
			</div>

			<div class="col-lg-9">
				<h1 style="text-align: center; position: relative; top: 60px;">Fund Transfer</h1>

				<form action="fundTransfer.bank" method="post">
				<div style= "color:red">${fund} ${accountIncorrect}</div>
				<table style="position: relative; top: 100px; left: 280px;">
				
				<tr>
				   <td>Account From</td>
				   <td>${ userName.name}</td>
				</tr>
				
				<tr>
				   <td>Account To</td>
				   <td><%= accountNo%></td>
				</tr>
				
				<tr>
				   <td>Amount</td>
				   <td><input type="text" name="amount" pattern ="[0-9]+\.[0-9]+\"></td>
				</tr>
				
				</table>
				<br><br>
				<br><br>
				
				<center>
					<button class="button" type="submit" value="Submit">
						<span>Pay</span>

					</button>


				</center>
				
				</form>
				<div style="text-align: center; position: relative; top: 120px;">
					
				</div>

			</div>

		</div>

	</div>
</body>
</html>
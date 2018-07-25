<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Beneficiary</title>

<%@ include file="banner.html"%>
</head>
<body>
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
	<form method="get">
		<center>
			<span><div style="color: black;">${doesNotExist}</div></span>
		</center>
		<table border="1" class="table table-hover" align="center"
			style="width: 600px">
			<tr>
				<td><strong>Beneficiary Account Name:</strong></td>
				<td><strong>Mode of Payment</strong></td>
			</tr>
			<c:forEach items="${beneficiaries}" var="b">
				<tr>
					<td><c:out value="${b.aadhar.name}" /></td>
					<td><a href="account.bank?accountNo=${b.accountNo}"> Pay</a></td>
				</tr>
			</c:forEach>
			<center>
				<a href="addbeneficiary.jsp">Add Beneficiary</a>
			</center>

		</table>
	</form>
	<center>
		<button class="button" type="submit" value="back">
			<span><a href="profile.jsp" style="color: white;">BACK</a></span>

		</button>
	</center>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div><%@ include file="footer.html"%></div>
</body>
</html>
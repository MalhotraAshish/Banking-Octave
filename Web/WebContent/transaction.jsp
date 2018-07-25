<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="lti.octave.bean.TransactionBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="scripts/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="scripts/kendo.all.min.js"></script>
<script type="text/javascript" src="scripts/pdf.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<%@ include file="banner.html"%>
<meta charset="ISO-8859-1">
<title>Mini Statement</title>

</head>
<body>
	<!-- <div class="bg"> -->
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
		<div id="formConfirmation">
			<form method="get">

				<table class="table table-hover" border="1"  style="color: black; padding:5px;">

					<tr>
						
						<td><strong>Transaction Date:</strong></td>
						<td><strong>Transaction Amount:</strong></td>
						<td><strong>Transaction Current Balance:</strong></td>
						<td><strong>Transaction Type:</strong></td>

					</tr>
					<c:forEach items="${Txn}" var="trans">

						<tr>
						
							<td><c:out value="${trans.txnDate}" /></td>
							<td><c:out value="${trans.amount}" /></td>
							<td><c:out value="${trans.currentBalance}" /></td>
							<td><c:out value="${trans.type}" /></td>

						</tr>
					</c:forEach>
				</table>
			</form>
		</div>
		<button class="btn btn-primary" onclick="generatePDF()">
			<i class="fa fa-save"></i> Generate PDF
		</button>
		<button class="btn btn-primary">
			<a href="profile.jsp" style="color: white;"> BACK</a>
		</button>
		
	<!-- </div> -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><br>
	<br><br>
	<br><br>
	
	<%@ include file="footer.html"%>
	
</body>

</html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="height: 12px;">
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	type="text/javascript"></script>
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="Stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>StartPage</title>

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<%@ include file="banner.html"%>
</head>
<body>

	<div class="container-fluid">
		<div class="row" id="nav">

			<div class="col-lg-4 horizon">Welcome: ${ userName.name}</div>

			<div class="col-lg-4 horizon" style = "text-align:right;">
				Date:
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

			<div style="margin-top: -350px; margin-left: 500px">
				<div class="row">
					<div class="col-lg-9">
						<h5 style="text-align: center; position: relative; top: 60px;">Enter
							Date</h5>
						<br> <br> <br>

						<form id="accountStatement" action="accountStatement.bank"
							method="get">

							<table class="table table-hover" align="center" style = "margin-right:50%;">
								<tr>

									<td class="borderright">Start Date-</td>
									<td class="borderleft"><input type="text" name="startDate"
										id="startDate"></td>

									<td class="borderright">End Date-</td>
									<td class="borderleft"><input type="text" name="endDate"
										id="endDate"></td>
								</tr>

							</table>

							<center>
								<button class="button" type="submit" value="Submit">
									<span>SUBMIT</span>

								</button>
							</center>
							
							<script>
								$(function() {
									$("#startDate")
											.datepicker(
													{
														numberOfMonths : 2,
														onSelect : function(
																selected) {
															var dt = new Date(
																	selected);

															$("#endDate")
																	.datepicker(
																			"option",
																			"minDate",
																			dt);
														}
													});
									$("#endDate")
											.datepicker(
													{
														numberOfMonths : 2,
														onSelect : function(
																selected) {
															var dt = new Date(
																	selected);

															$("#startDate")
																	.datepicker(
																			"option",
																			"maxDate",
																			dt);
														}
													});
								});
							</script>


						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
<br><br><br><br><br>
	<%@ include file="footer.html"%>
</body>
</html>
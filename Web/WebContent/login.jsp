<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title> Login Page </title>
<%-- <%@ include file="banner.html"%> --%>
</head>
<body>
<%@ include file="banner.html"%>
	<div class="bg">
		<div>

			<form action="Signin.bank" method="post">
				
				<br>
				<br> <br>
				<br> <br> <br>
				<br> <br>
				<br>
				<table class="table table-hover" align="center" style="width: 600px"
					border="1">
					<%
						if (request.getParameter("invalid") != null) {
					%>
					<tr>
						<th colspan="2">Invalid User Id / Password</th>
					</tr>
					<%
						}
					%>

					<tr>
						<td><center style="color: black;">Email Id</center></td>
						<td><center>
								<input type="email" name="email" style="width: 100%"
									pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}"
									required>
							</center></td>
					</tr>
					<tr>
						<td><center style="color: black;">Password</center></td>
						<td><center>
								<input type="password" name="password" style="width: 100%" pattern ="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,12})" 
									required>
							</center></td>
					</tr>
					</div>
					</div>

					</div>
					</div>




				</table>
				<center>
					<button class="button" type="submit" value="login">
						<span>LOGIN</span>

					</button>


				</center>
			</form>
			<center>
				<form action="forget.bank" method="post">
					<button class="button" type="submit" value="Forget Password">
						<span>FORGET PASSWORD</span>
					</button>
				</form>
			</center>
			<center>
			<span><div style="color:white;">${wrongpass}${invalid}</div></span>
			</center>
			
</div>
		</div>
</body>
</html>
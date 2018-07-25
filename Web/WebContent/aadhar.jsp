<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- making imports for javascript, jquery, bootstrap -->
<script type="text/javascript" src="scripts/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="scripts/aadhar_validation.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OPEN A DIGITAL BANK ACCOUNT</title>
<%@ include file="banner.html"%>
</head>
<body>
	<div class="vr">
		<form action="doAadharRegister.bank" method="post">

			<br>
			<br>
			
			<center style = "color:navy;"> 
			<label id = "lp" class="control-label col-sm-12" style="margin-top:100px; "><strong><div style=" font-size: 30px;"> AADHAR CARD</div>
			<br><br>
				<input type="text" id="adar" maxlength="12" name="aadharNo"  style="width : 30%;"></strong><br>
			</label>
			</center>
			
			
			<br>
			<br>
			<center>
				<button class="btn" type="submit" value="next">
					<span>NEXT</span>

				</button>


			</center>
			<center>
				<span><div style="color: red;">${invalid}${existing}</div></span>
			</center>

		</form>
	</div>
</body>
</html>
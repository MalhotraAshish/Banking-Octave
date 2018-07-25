<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main1.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="css/jquery.js"></script>
<script type="text/javascript" src="scripts/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/w3.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Octave Bank</title>

<style>
.mySlides {
	display: none;
	z-index: -1;
}

.w3-left, .w3-right, .w3-badge {
	cursor: pointer
}

.w3-badge {
	height: 13px;
	width: 13px;
	padding: 0
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	padding: 25px 15px 25px 25px;
	border: 1px solid #888;
	width: 90%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>

</head>
<body>
	<%@ include file="banner.html"%>
	<div class="topnav">
		<a class="active" href="Home.jsp">Home</a>
		<button
			onclick="document.getElementById('id01').style.display='block'"
			style="width: auto;">Contact</button>


		<button
			onclick="document.getElementById('id02').style.display='block'"
			style="width: auto;">About</button>

		<a href="login.jsp" id="log">Login</a> <a href="aadhar.jsp" id="log">Open
			New Digital Account</a>

		<div id="id01" class="modal">

			<div class="modal-content animate">
				<div class="imgcontainer">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="close" title="Close Modal">&times;</span>

				</div>

				<h1>Address</h1>
				<div>Plot No. EL-200, TTC Electronic Zone,</div>
				<div>Shil Phata - Mahape Road,Kopar Khairane,</div>
				<div>MIDC Industrial Area, Mahape,</div>
				<div>Navi Mumbai, Maharashtra 400710</div>

				<h1>Email Address</h1>
				<div>octavebank@gmail.com</div>

				<h1>Contact-Number</h1>
				<div>9973636368</div>

			</div>
		</div>

		<div id="id02" class="modal">

			<div class="modal-content animate">
				<div class="imgcontainer">
					<span
						onclick="document.getElementById('id02').style.display='none'"
						class="close" title="Close Modal">&times;</span>

				</div>

				<h1>About us</h1>
				<div>Octave Bank is India's largest private sector bank with
					total consolidated assets of Rs. 11,242.81 billion(US$ 172.5
					billion) at March 31,2018 and profite after tax of Rs.67.77
					billion(US$ 1.0 billion) for the year ended March 31,2018.Octave
					Bank currently has a network of 4,562 branches and 14,567 ATM
					across India</div>

			</div>
		</div>
	</div>
	<div class="w3-content w3-display-container"
		style="max-height: 1500px; max-width: 100%;">
		<img class="mySlides" src="css/advertise3.jpg"
			style="width: 100%; height: 400px; border-radius: 0;"> <img class="mySlides"
			src="css/advertise2.png" style="width: 100%; height: 400px; border-radius: 0;"> <img
			class="mySlides" src="css/ad7.png"
			style="width: 1500px; height: 400px; border-radius: 0;">
		<div
			class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle"
			style="width: 100%">
			<div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
			<div class="w3-right w3-hover-text-khaki" onclick="plusDivs(-1)">&#10095;</div>
			<span class="w3-badge demo w3-border w3-transparent w3-hover-white"
				onclick="currentDiv(1)" style="margin-left: 20px;"></span> <span
				class="w3-badge demo w3-border w3-transparent w3-hover-white"
				onclick="currentDiv(2)" style="margin-left: 20px;"></span> <span
				class="w3-badge demo w3-border w3-transparent w3-hover-white"
				onclick="currentDiv(3)" style = "margin-left:20px;"></span>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-4" style="height:340px; padding:35px; margin:40px 20px 20px 130px; border:1px solid black;">
				<h3>Open Digital Bank Account</h3>
				<br>
				<img src="css/digi_account.jpeg" width="350" height="150">
			</div>
			

			<div class="col-lg-4" style="height:340px; padding:35px; margin:40px 20px 20px 90px; border:1px solid black;">
				<h3>Easy Fund Transfer</h3>
				<br>
				<img src="css/fundtransfer.jpeg" width="350" height="150">
			</div>
		</div>
	</div>
	
	<script>
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-white", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-white";
		}

		// Get the modal
		var modal = document.getElementById('id01');
		var modal1 = document.getElementById('id02');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}

			if (event.target == modal1) {
				modal1.style.display = "none";

			}
		}
	</script>
	<%@ include file="footer.html"%>
</body>
</html>
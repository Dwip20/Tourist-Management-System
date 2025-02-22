<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>booked.jsp</title>
<style>
	body{
			margin: 0;
			padding: 0;
			font-family: montserrat;
			background: linear-gradient(to top, rgba(0,0,0,0.5) 50%, rgba(0,0,0,0.5) 50%), url(cover3.jpg);
			height: 100vh;
			overflow: hidden;
			background-size: cover;
			width: 100%;
	}
	h2{
			position: absloute;
			top: 50%;
			left: 50%;
			transform: translate(25%, 80%);
			font-family: 'Allura', cursive;
			transition: 0.4s ease-in-out;
			color:#ff7200;
			font-size: 35px;
		}
	
		
	.center{
			position: absloute;
			top: 50%;
			left: 50%;
			transform: translate(70%, 80%);
			}
	.center a{
			color: #ffffff;
    		font-size: 25px;
    		text-decoration: none;
    		font-weight: bold;
    		transition: 0.2s ease-in-out;
        	}
	a:hover{
    		color: #3498DB;
    		}
</style>
</head>
<body>
	<h2>You have Successfully Booked Your Slot!</h2>
	<br><br><br>
	<div class="center">
		<a href="firstpage.jsp">Home</a>
	</div>
</body>
</html>

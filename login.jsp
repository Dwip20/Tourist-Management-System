<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN-PAGE</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
<%
String user="pqr";
session.setAttribute("userid",user); %>

	<div class="main">
        <div class="navbar">
            <div class="icon">
               <img src="TOCLOGO.png" alt="Icon" style="width:120%; ">
            </div>
        </div> 
        <div class="content">
            <h1 style= "color: #ff9900;"><br><br>Travel & <br><span style="color: #ffffff; font-family: cursive;"><i>Xplore</i></span> <br><span style="color: #006600;">India</span></h1>
            
                 <div class="form">
                    <h2>Login Here</h2>
                    <form action="fetch.jsp" method="post">
                    <input type="email" name="email" placeholder="Enter Email Here">
                    <input type="password" name="password" placeholder="Enter Password Here">
                    <button class="btnn" type="submit">Login</button>
                    </form>
                    <p class="link">Don't have an account?<br>
                    <a href="signup_user.jsp">Sign up </a>here</p>
                    <p class="liw">Log in with</p>
                    <div class="icons">
                        <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-twitter"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-google"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-skype"></ion-icon></a>
                    </div>
                </div>
                
                    </div>
                </div>
                <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>
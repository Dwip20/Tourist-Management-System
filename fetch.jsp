<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%
    String mail=request.getParameter("email");
    String pass=request.getParameter("password");   
    try{
      Connection connection = null;
            Class.forName("oracle.jdbc.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "password");
            Statement statement = connection.createStatement();
            //String sql ="SELECT * FROM signup WHERE email= '"+mail+"' and password= '"+pass+"'";
      		//ResultSet resultSet = statement.executeQuery(sql);
      		String sql="Select * from touristinfo";
      		ResultSet resultSet = statement.executeQuery(sql);
      		int a=0;
      		while(resultSet.next()){
      			String s1=resultSet.getString(3);
      			String s2=resultSet.getString(4);
      			if(s1.equals(mail) && s2.equals(pass)){
      				session.setAttribute("userid", mail);
      				//out.println("You have successfully logges in!");
      	    		response.sendRedirect("firstpage.jsp");
      	    		a=1;
      			}
      		}
      		if(a==0){
      			%>
      			<!DOCTYPE html>
				<html>
				<style>
					body{
						margin: 0;
						padding: 0;
						font-family: montserrat;
						background: linear-gradient(90deg, #3498DB, #1ABC9C);
						height: 100vh;
						overflow: hidden;
					}
					.link{
						position: absloute;
						top: 50%;
						left: 50%;
						transform: translate(35%, 80%);
					}
					h2{
						top: 50%;
						left: 50%;
						transform: translate(10%, 50%);
					}
					a{
						text-decoration: none;
						color: 5b2c6f;
   						transition: 0.4s ease-in-out;
					}
					a:hover{
						color: white;
					}
				</style>
				<body>
				<div class="link">
				<h1>Invalid Email ID or Password</h1>
				<span></span>
				<h2><a href="login.jsp">Try Again!</a></h2>
				</div>
				</body>
      			<%
    			//response.sendRedirect("login.jsp");
      		}
     /*if(resultSet.next()){
			//if the user is valid, then this block executes and WE ARE KEEPING THE USER IN A SESSION
			//session.setAttribute("user", username);//THIS IS HOW WE DECLARE THE USER IN A SESSION
			//response.sendRedirect("Logged.jsp"); //AND WE REDIRECTED TO LOGIN PAGE
			session.setAttribute("userid", mail);
			out.println("You have successfully logges in!");
    		response.sendRedirect("loggedin.jsp");
			
		}else{
			
			//IF THE USER IS NOT AUTHORISED THEN AGAIN HE WILL BE REDIRECTED TO THE SAME LOGIN PAGE
			out.println("Invalid Email ID or Password");
			response.sendRedirect("regs.jsp");
		}*/
    connection.close();
    } catch (Exception e) {
    e.printStackTrace();
    }
    %>
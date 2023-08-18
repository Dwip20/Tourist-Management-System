<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<%
String s1=request.getParameter("name");
String s2=request.getParameter("dob");
String s3=request.getParameter("email");
String s4=request.getParameter("pass");
String s5=request.getParameter("confrm");
if(s4.equals(s5)){
	try
	{
		Connection connection = null;
	    Class.forName("oracle.jdbc.OracleDriver");
	    connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "password");
	    Statement statement = connection.createStatement();
	    String command = "INSERT into touristinfo (name, dob, email, pass) values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"')";
	    statement.executeUpdate(command);
	    %>
	    <!DOCTYPE html>
		<html>
		<head>
			<meta charset="ISO-8859-1">
			<title></title>
			<link rel="stylesheet" href="firstpage.css">
		</head>
		<body>
			<h1>You Have Successfully Signed In</h1>
			<br><br>
			<a href="firstpage.jsp">Home Page</a>
		
	<%
	}
	catch(Exception e)
	{
		System.out.print(e);
		e.printStackTrace();
	}
}
else{
	out.println("Password Mismatch!");
	%>
	<a href="signup_user.jsp">Try Again</a>
	</body>
	</html>
	<%
}
%>
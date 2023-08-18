<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Facilities</title>
<link rel="stylesheet" href="facilites.css">

<script>
function demo(){
alert ( "Booking Successful" );
//window.location="logout.jsp";
return true;
}
</script>
</head>
<body style="background: linear-gradient(to top, rgba(0,0,0,0.5) 50%, rgba(0,0,0,0.5) 50%), url(cover2.jpg);
			background-position: absloute;
			background-size: cover;
			width: 100%;
			height: 100vh;">
<%
String uid = (String)session.getAttribute("userid");
				if (uid.equals("pqr"))
				{
		%>
		<!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
					 <h1 style="font-family: 'Allura', cursive;">Oops!</h1>
					 <h2 style="font-family: 'Allura', cursive;">You are not Loggedin</h2>
					 <button class="btnn"><a href="login.jsp">Login</a></button>
					 <div class="space">
					 </div>
					 <button class="btnn"><a href="signup_user.jsp">Signup</a></button>		 
		<%	
				}
				else
				{
					%>
					<div class="center" style="position: absloute;top: 50%;left: 50%;transform: translate(10%, 10%);">
					<h1>Welcome to Travel & Xplore</h1><%out.println(" "+uid);%> 
					<h1 style= "font-family: 'Allura', cursive;">Fill The Below Details</h1>
					    </div>
					<form onsubmit="return demo();">
					
					<div clss="container">
				          <input type="text" name="name" placeholder="Enter Your Name"><br><br>
				          <input type="number" name="cont" placeholder="Enter Your Phone Number"><br><br>
				          <input type="text" name="country" placeholder="Enter Your Country"><br><br>
				          <input type="text" name="place" placeholder="Enter Place to be Visited"><br><br>
				          <input type="text" name="spot" placeholder="Enter Places of Interests"><br><br>
				          <select style="color: #455A64" name="room" required="required">
				          
                    		<option>Select Room Type</option>
                    		<option>AC</option>
				          	<option>Non-AC</option>
				          	
						  </select>
				          <br><br>
				          <select style="color: #455A64" name="food" required="required">
				          
				          <option>Food Preference</option>
				          <option>Non-Veg</option>
				          <option>Veg</option>
				          
				          </select>
				          <br><br>
				          <input type="number" name="nod" placeholder="How Many Days You want to Stay">
				          <br><br>
				          <button class="btn" type="submit">Confirm</button>
				          <div class="space">
 	 						</div>
				          <button class="btn" type="reset">Reset</button>
				          <br>
				          <button class="btnn"><a href="logout.jsp">Logout</a></button> 
				       </div>
				    </form>
				
				   

				<%
				String s1=request.getParameter("name");
				String s2=request.getParameter("cont");
				String s3=request.getParameter("country");
				String s4=request.getParameter("place");
				String s5=request.getParameter("spot");
				String s6=request.getParameter("room");
				String s7=request.getParameter("food");
				String s8=request.getParameter("nod");
					try
					{
						Connection connection = null;
					    Class.forName("oracle.jdbc.OracleDriver");
					    connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "password");
					    Statement statement = connection.createStatement();
					    String command = "INSERT into user_details (name,cont,country,place,spot,room,food,nod,email) values ('"+s1+"',"+s2+",'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"', "+s8+",'"+uid+"')";
					    statement.executeUpdate(command);
					    response.sendRedirect("booked.jsp");
					}
					catch(Exception e)
					{
						System.out.print(e);
						e.printStackTrace();
					}
			
				}
				%>
				</body>
				</html>

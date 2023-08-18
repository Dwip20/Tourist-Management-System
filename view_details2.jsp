<%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.*"%>
    <%
          
    %>
    <!DOCTYPE html>
    <html>
    <head>
    	<title>Show My Tour</title>
    	<link rel="stylesheet" href="view_details.css">
    </head>
    
    <body style="position:relative;
	min-height: 100vh;
	padding: 50px 100px;
	display: flex;
	justify-content: center;
	height: 400px;
	width: 626px; 
	align-items:center;
	flex-direction:column;
	background:url(tajmahal.jpg);
	background-size:cover;">
	
	 <div class="table">
   <center><h1>Your Booking Details</h1></center>
    <table border="5">
    <tr>
    <td>Name</td>
    <td>Contact Number</td>
    <td>Country</td>
    <td>Place</td>
    <td>Preference</td>
    <td>Room Type</td>
    <td>Food Type</td>
    <td>No. Of Room</td>
    <td>Email ID</td>
    </tr>
  </div>
    <%
    String uid = (String)session.getAttribute("userid");
    try{
      Connection connection = null;
            Class.forName("oracle.jdbc.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "password");
            Statement statement = connection.createStatement();
            String sql ="SELECT * FROM user_details where email= '"+uid+"' ";
           // String sql ="SELECT * FROM signup WHERE email= '"+mail+"' and password= '"+pass+"'";
      		//ResultSet resultSet = statement.executeQuery(sql);
      ResultSet resultSet = statement.executeQuery(sql);
    while(resultSet.next()){
    %>
    <tr>

    <td><%=resultSet.getString("name") %></td>
    <td><%=resultSet.getString("cont") %></td>
    <td><%=resultSet.getString("country") %></td>
    <td><%=resultSet.getString("place") %></td>
    <td><%=resultSet.getString("spot") %></td>
    <td><%=resultSet.getString("room") %></td>
    <td><%=resultSet.getString("food") %></td>
    <td><%=resultSet.getString("nod") %></td>
    <td><%=resultSet.getString("email") %></td>
      </tr>
    <%
    }
    connection.close();
    } catch (Exception e) {
    e.printStackTrace();
    }
    %>
    </table>
    </body>
    </html>
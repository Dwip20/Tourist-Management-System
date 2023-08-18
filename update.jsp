<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String mail=(String)session.getAttribute("userid");
try{
    Connection connection = null;
          Class.forName("oracle.jdbc.OracleDriver");
          connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "password");
          Statement statement = connection.createStatement();
          String sql ="SELECT * FROM user_details where email='"+mail+"' ";
    ResultSet resultSet = statement.executeQuery(sql);
  while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
	<title>Update My Tour</title>
</head>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update_process.jsp">

<br>
Name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
Contact Number:<br>
<input type="text" name="cont" value="<%=resultSet.getString("cont") %>">
<br>
Country:<br>
<input type="text" name="country" value="<%=resultSet.getString("country") %>">
<br>
Place of Interest:<br>
<input type="text" name="place" value="<%=resultSet.getString("place") %>">
<br>
Desired Location:<br>
<input type="text" name="spot" value="<%=resultSet.getString("spot") %>">
<br>
Type Of Room:<br>
<input type="text" name="room" value="<%=resultSet.getString("room") %>">
<br>
Type Of Food:<br>
<input type="text" name="food" value="<%=resultSet.getString("food") %>">
<br>
No. Of Days:<br>
<input type="text" name="nod" value="<%=resultSet.getString("nod") %>">
<br>
Email ID:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
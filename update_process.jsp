<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("cont");
String s3=request.getParameter("country");
String s4=request.getParameter("place");
String s5=request.getParameter("spot");
String s6=request.getParameter("room");
String s7=request.getParameter("food");
String s8=request.getParameter("nod");
String s9=request.getParameter("email");
if(s1!= null)
  {
	try
	{
	Connection connection = null;
    Class.forName("oracle.jdbc.OracleDriver");
    connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "password");
    //Statement statement = connection.createStatement();
    //String sql="Update users set id=?,first_name=?,last_name=?,city_name=?,email=? where id="+id;
    String sql ="Update user_details set name=?,cont=?,country=?,place=?,spot=?,room=?,food=?,nod=?,email=? where email='"+s9+"'";
    PreparedStatement ps = connection.prepareStatement(sql);
    ps.setString(1, s1);
    ps.setString(2, s2);
    ps.setString(3, s3);
    ps.setString(4, s4);
    ps.setString(5, s5);
    ps.setString(6, s6);
    ps.setString(7, s7);
    ps.setString(8, s8);
    ps.setString(9, s9);
    int i = ps.executeUpdate();
    if(i > 0)
    {
    out.print("Record Updated Successfully");
    }
    else
    {
    out.print("There is a problem in updating Record.");
    }
    //ResultSet resultSet = statement.executeQuery(sql);
    
   // int personID = Integer.parseInt(id);
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
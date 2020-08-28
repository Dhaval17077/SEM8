 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%

String name=request.getParameter("name");
out.println(name);
String photo=request.getParameter("photo");
out.println(photo);
String rating=request.getParameter("rating");
out.println(rating);
String msg=request.getParameter("msg");
out.println(msg);

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "insert into feedback(name,photo,rating,msg)values('"+name+"','"+photo+"','"+rating+"','"+msg+"')";
out.println(query);
statement.executeUpdate(query);
response.sendRedirect("index.jsp?st2=success");


/*if(rs1.next())
    {
   response.sendRedirect("addbusno.jsp?st1=Already registered");
     out.println("Bus No is already added!!!");
    }
else
    {
    String query1 = "insert into bus(bus_name)values('"+busNumber+"')";
statement.executeUpdate(query1);
response.sendRedirect("addbusno.jsp?st2=success");

}
*/


statement.close();
connection.close();


%>

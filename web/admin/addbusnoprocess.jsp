 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%

 

String busNumber=request.getParameter("bnumber");
out.println(busNumber);

 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from bus where  bus_name='"+busNumber+"'";
out.println(query);
rs1=statement.executeQuery(query);


if(rs1.next())
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



statement.close();
connection.close();


%>

 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String area=request.getParameter("area");
out.println(area);
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from tbl_area where  area_name='"+area+"'";
out.println(query);%><td><img src="images/edit.jpeg" alt="ed" width="50px" height="20px" >edit</td><%
rs1=statement.executeQuery(query);


if(rs1.next())
    {
   // response.sendRedirect("addplace.jsp?st=Already registered");
    response.sendRedirect("addarea.jsp?st1=Already added");
     out.println("Area is already added!!!");
    }
else
    {
    String query1 = "insert into tbl_area(area_name)values('"+area+"')";
statement.executeUpdate(query1);
response.sendRedirect("addarea.jsp?st2=success");

}

statement.close();
connection.close();


%>

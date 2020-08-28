<%@page import=" java.text.SimpleDateFormat"%>
<%@page import=" java.util.Date"%> 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String bgname=request.getParameter("bgname");
String bdes=request.getParameter("bdes");
String file=request.getParameter("file");
String bname=request.getParameter("bname");

Date date = new Date();  
SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");  
String strDate= formatter.format(date);

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from blog where  b_h_name='"+bgname+"'";
out.println(query);
rs1=statement.executeQuery(query);


if(rs1.next())
    {
   // response.sendRedirect("addplace.jsp?st=Already registered");
    response.sendRedirect("addblog.jsp?st1=Already added");
     //out.println("Area is already added!!!");
    }
else
    {
    String query1 = "insert into blog(b_h_name,b_des,b_photo,b_name,b_date)values('"+bgname+"','"+bdes+"','"+file+"','"+bname+"','"+strDate+"')";
statement.executeUpdate(query1);
response.sendRedirect("addblog.jsp?st2=success");

}

statement.close();
connection.close();


%>

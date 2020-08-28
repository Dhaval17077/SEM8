<%@page import=" java.text.SimpleDateFormat"%>
<%@page import=" java.util.Date"%>
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%

Date date = new Date();  
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
String strDate= formatter.format(date); 

 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

//String query12 = "update payment set date=date_add(date,interval 1 year)";
 
String query12 = "update payment set status='Paid', date='"+strDate+"', ex_date= DATE_ADD(CURDATE(),INTERVAL 3 MONTH)";

//String query12 = "update payment set ex_date = DATE_ADD(CURDATE(),INTERVAL 3 MONTH)";
out.print(query12);
statement.executeUpdate(query12);


out.println("Success");


statement.close();
connection.close();




%>

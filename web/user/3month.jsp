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

int passno=(Integer)session.getAttribute("app"); 
int st=(Integer)session.getAttribute("st"); 
String dec="Jay matadi";
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

//int account=(Integer)session.getAttribute("accid"); 


String query = "insert into invoice_tbl(date,amount,pass_no,description) values('"+strDate+"','"+st+"','"+passno+"','"+dec+"')";
statement.executeUpdate(query);
String query12 = "update payment set status='Paid', date='"+strDate+"', ex_date= DATE_ADD(CURDATE(),INTERVAL 3 MONTH) where application_no='"+passno+"'";
statement.executeUpdate(query12);
 

response.sendRedirect("invoice.jsp?st=success");
//out.println("Success");


statement.close();
connection.close();

//pageContext.getOut().println("Record inserted");



%>

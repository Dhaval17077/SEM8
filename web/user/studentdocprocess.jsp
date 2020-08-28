<%@page import="java.sql.Statement"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.Connection"%> 
<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>

 

<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;



Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
 
   
String selectname=request.getParameter("selectname");
String file=request.getParameter("file");
out.println(selectname); 
out.println(file); 
//String passtype=request.getParameter("passtype");
//out.println(passtype); 

int name=(Integer)session.getAttribute("accid"); 
String appno=(String)session.getAttribute("appli"); 
                                //out.println(name);
                                 

String query1 = "insert into tbl_doc(account_id,application_no,doc_name,doc_type,pass_type)values('"+name+"','"+appno+"','"+file+"','"+selectname+"','Studentpass')";
statement.executeUpdate(query1);  
response.sendRedirect("studentdoc.jsp?st='"+appno+"'");

statement.close();
connection.close();
%>
 
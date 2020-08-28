<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String doc=request.getParameter("docid1");
String app=request.getParameter("docid");
   
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "update tbl_doc set app_status='Doc Approve' where doc_id='"+doc+"' and application_no='"+app+"'";
PreparedStatement pst = null;
pst = connection.prepareStatement(query);
 pst.executeUpdate();



response.sendRedirect("viewstupassdoc.jsp?docid='"+app+"'");







%>

<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String doc=request.getParameter("id");
String msg=request.getParameter("reject");
out.println(msg);
out.println(doc);
String app=request.getParameter("app");
out.println(app);

   
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "update tbl_doc set reason='"+msg+"' where doc_id='"+doc+"'";
PreparedStatement pst = null;
pst = connection.prepareStatement(query);
 pst.executeUpdate();



response.sendRedirect("viewservicepassdoc.jsp?docid='"+app+"'");







%>

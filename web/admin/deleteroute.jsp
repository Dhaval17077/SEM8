
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>

<%
String routeid=request.getParameter("routeid");
String query="delete from tbl_route where route_id='"+routeid+"'";
PreparedStatement pst = null;
pst = connection.prepareStatement(query);
 pst.executeUpdate();
response.sendRedirect("viewroute.jsp?delete=1");
%>
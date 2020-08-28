 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String busnamee=request.getParameter("busname");
String routenamee=request.getParameter("routename");
String sname=request.getParameter("sroute");
String dname=request.getParameter("droute");
String routeid=request.getParameter("routeid");
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "update tbl_route set area_id_s='"+sname+"',area_id_d='"+dname+"',bus_id='"+busnamee+"',route_name='"+routenamee+"' where route_id='"+routeid+"'";
PreparedStatement pst = null;
out.println(query);
pst = connection.prepareStatement(query);
 pst.executeUpdate();


response.sendRedirect("viewroute.jsp?st2=Edit success");







%>

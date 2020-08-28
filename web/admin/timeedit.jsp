<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String time=request.getParameter("time");
String times=request.getParameter("times");
String timed=request.getParameter("timed");
String bnumber=request.getParameter("bnumber");
String timeid=request.getParameter("timeid");
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "update tbl_timing set bus_id_t='"+bnumber+"',area_id_st='"+times+"',area_id_dt='"+timed+"',time='"+time+"' where time_id='"+timeid+"'";
PreparedStatement pst = null;
out.println(query);
pst = connection.prepareStatement(query);
 pst.executeUpdate();


response.sendRedirect("viewtime.jsp?st2=Edit success");







%>

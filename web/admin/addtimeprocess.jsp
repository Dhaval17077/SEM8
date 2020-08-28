 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%

 

String bustime=request.getParameter("time");
out.println(bustime);
String areanames=request.getParameter("times");
out.println(areanames);
String areanamed=request.getParameter("timed");
out.println(areanamed);
String busnumber=request.getParameter("bnumber");
out.println(busnumber);

 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from tbl_timing where  time_id='"+bustime+"'";
out.println(query);
rs1=statement.executeQuery(query);


if(rs1.next())
    {
  statement.executeUpdate(query);
response.sendRedirect("addtiming.jsp?st1=success");
   
}
else{
     String query1 = "insert into tbl_timing(bus_id_t,area_id_st,area_id_dt,time)values('"+busnumber+"','"+areanames+"','"+areanamed+"','"+bustime+"')";
statement.executeUpdate(query1);
response.sendRedirect("addtiming.jsp?st2=success");

}


statement.close();
connection.close();


%>

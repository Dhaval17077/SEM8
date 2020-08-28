 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%

String SelectSource=request.getParameter("source");
out.println(SelectSource);

String SelectDestination=request.getParameter("destination");
out.println(SelectDestination);

String busNumber=request.getParameter("bnumber");
out.println(busNumber);

String RouteNumber=request.getParameter("rnumber");
out.println(RouteNumber);

 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "Select * from tbl_route where  route_id='"+RouteNumber+"'";
out.println(query);%><td><img src="images/edit.jpeg" alt="ed" width="50px" height="20px" >edit</td><%
rs1=statement.executeQuery(query);


if(rs1.next())
    {
            String query1 = "insert into tbl_route(area_id_s,area_id_d,bus_id,route_name)values('"+SelectSource+"','"+SelectDestination+"','"+busNumber+"','"+RouteNumber+"')";
statement.executeUpdate(query1);
response.sendRedirect("addroute.jsp?st2=success");

    }
else
    {
   response.sendRedirect("addroute.jsp?st1=Already registered");
     out.println("Route is already added!!!");

}



statement.close();
connection.close();


%>

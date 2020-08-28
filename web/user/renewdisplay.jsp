<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String mno=request.getParameter("mon");


String query = "Select * from passreg where  mnumber='"+mno+"'";
rs=statement.executeQuery(query);
//out.println(query);

if(rs.next())
    {
     String type=rs.getString("pass_type");
     String app=rs.getString("application_no");
     session.setAttribute("appli",app);
     if(type.equals("Studentpass"))
         {
        out.println(type);
response.sendRedirect("renewdisplaystu.jsp?st='"+mno+"'");  
         }
 
     else if (type.equals("Servicepass"))
         {
        out.println(type);
                  
response.sendRedirect("renewdisplayser.jsp?st='"+mno+"'");  
     }
  }
else
{
    response.sendRedirect("renewal.jsp?st='"+mno+"'");
}  

statement.close();
connection.close();
 

 








%>
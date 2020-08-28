<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

String appno=request.getParameter("appn");

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();


String query = "Select * from passreg where  application_no='"+appno+"'";

 
rs=statement.executeQuery(query);
//out.println(query);

if(rs.next())
    {
     String type=rs.getString("pass_type");
     session.setAttribute("appli",appno);
     if(type.equals("Studentpass"))
         {
        out.println(type);
response.sendRedirect("studentdoc.jsp?st='"+appno+"'");  
         }
 
     if (type.equals("Servicepass"))
         {
        out.println(type);
                  
response.sendRedirect("servicedoc.jsp?st='"+appno+"'");  
     }
  }
 


statement.close();
connection.close();
 

//response.sendRedirect("register1.jsp?st=success");









%>
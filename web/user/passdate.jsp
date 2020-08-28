<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

//String app=request.getParameter("appn");
int passno=(Integer)session.getAttribute("app"); 
int st=(Integer)session.getAttribute("st"); 
out.println(st);

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();


String query = "Select * from passreg where  application_no='"+passno+"'";

 
rs=statement.executeQuery(query);
//out.println(query);

if(rs.next())
    {
     int type=rs.getInt("pass_m_a");
     session.setAttribute("appli",passno);
     if(type<1500)
         {
        out.println(type);
response.sendRedirect("3month.jsp?st='"+passno+"'");  
         }
 
     if (type>1500)
         {
        out.println(type);
                  
response.sendRedirect("5month.jsp?st='"+passno+"'");  
     }
  }
 


statement.close();
connection.close();
 

//response.sendRedirect("register1.jsp?st=success");









%>
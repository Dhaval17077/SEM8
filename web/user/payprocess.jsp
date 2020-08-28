 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%
String appno=request.getParameter("appnu");
out.println(appno);    

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
int abc=(Integer)session.getAttribute("accid"); 

String query1 = "Select * from passreg where application_no='"+appno+"' and account_id='"+abc+"'";
out.println(query1);
rs=statement.executeQuery(query1);


if(rs.next())
    {
     String type=rs.getString("pass_type"); 
     
     String uname=rs.getString("name");  
     int pay=rs.getInt("pass_m_a");  
     int acc=rs.getInt("application_no");
     
     session.setAttribute("name",uname);
     session.setAttribute("st",pay);
     session.setAttribute("app",acc); 
     
      if(type.equals("Studentpass"))
         {
        out.println(type);
       response.sendRedirect("pay.jsp?st1=success");  
         }
 
     if (type.equals("Servicepass"))
         {
        
      session.setAttribute("name",uname);
      session.setAttribute("st",pay);
      session.setAttribute("app",acc); 
       out.println(type);
       response.sendRedirect("pay.jsp?st1=success");  
     }
  }
    
else
{
response.sendRedirect("passpayment.jsp?fail=fail");  
}

statement.close();
connection.close();



//response.sendRedirect("pay.jsp");
%>
       
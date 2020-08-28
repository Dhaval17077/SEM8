<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;

String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

 
String query = "Select * from account where account_password='"+password+"' and account_type='admin'";

 
rs=statement.executeQuery(query);
//out.println(query);

if(rs.next())
    {
            response.sendRedirect("index.jsp?st1=welcome Back!!");
            out.println("Password match...");
    }
  
else
{
response.sendRedirect("lockscreen.jsp?st2=failed");
out.println("Password does not matched");
}



statement.close();
connection.close();


%>
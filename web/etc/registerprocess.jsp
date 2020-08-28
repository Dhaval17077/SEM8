 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
String lname=(String)session.getAttribute("lname");
String fname=(String)session.getAttribute("fname");
String email=(String)session.getAttribute("email");
String mnumber=(String)session.getAttribute("mnumber");
String password=(String)session.getAttribute("password");
String cpassword=(String)session.getAttribute("cpassword");
      
String otp=session.getAttribute("otp").toString();
String otpvalue=request.getParameter("otp");
//int enterOtp=Integer.parseInt(otpvalue);
   //out.println(enterOtp);
   out.println(otpvalue);

if(otp.equals(otpvalue))
{
    out.println("OTP matched");

  
 
String query1 = "Select * from account where  account_email='"+email+"' and  account_number='"+mnumber+"'";
out.println(query1);
rs=statement.executeQuery(query1);

if(rs.next())
    {
    response.sendRedirect("signup.jsp?st1=Already registered");
     out.println("Email or Mobile Number Already used.");
    }
else
    {
String query = "insert into account(account_name,account_lname,account_email,account_number,account_password,account_repassword,account_type) values('"+fname+"','"+lname+"','"+email+"','"+mnumber+"','"+password+"','"+cpassword+"','user')";
statement.executeUpdate(query);
response.sendRedirect("signup.jsp?st=success");
     out.println("fresh");

    }
  

}
else
{
response.sendRedirect("otp.jsp?st2=failed");
out.println("OTP not matched");

}
statement.close();
connection.close();
//pageContext.getOut().println("Record inserted");



%>

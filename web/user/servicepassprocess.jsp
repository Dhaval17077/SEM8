 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%
String name=request.getParameter("name");
 

String fname=request.getParameter("fname");
 

String dobname=request.getParameter("dobname");
 

String radio=request.getParameter("radio");
 
String aadharno=request.getParameter("aadharno");

String mnumber=request.getParameter("mnumber");

String email=request.getParameter("email");

 

String raddress=request.getParameter("raddress");

String pincode=request.getParameter("pincode");

 

 
String selectmonth=request.getParameter("selectmonth");
String appno=request.getParameter("appno");

  
 
//session.setAttribute("email",email);
session.setAttribute("appno",appno);
//session.setAttribute("mnumber",mnumber);
 
        

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();



int account=(Integer)session.getAttribute("accid"); 

String query1 = "Select * from passreg where  name='"+name+"' and  mnumber='"+mnumber+"'";
out.println(query1);
rs=statement.executeQuery(query1);

if(rs.next())
    {
        
    response.sendRedirect("userpass.jsp?st1=Already registered");
     out.println("Name or Mobile Already used.");
    }
else
{
    session.setAttribute("appli",appno);
   //  session.setAttribute("appser",email);
    String query = "insert into passreg(account_id,application_no,name,fname,dob,gender,aadharno,mnumber,email,r_address,r_pincode,pass_m_a,pass_type) values('"+account+"','"+appno+"','"+name+"','"+fname+"','"+dobname+"','"+radio+"','"+aadharno+"','"+mnumber+"','"+email+"','"+raddress+"','"+pincode+"','"+selectmonth+"','Servicepass')";
statement.executeUpdate(query);
String query12 = "insert into payment(application_no) values('"+appno+"')";
statement.executeUpdate(query12);
response.sendRedirect("servicedoc.jsp?st='"+appno+"'");
     out.println("Success");

}
statement.close();
connection.close();

//pageContext.getOut().println("Record inserted");



%>

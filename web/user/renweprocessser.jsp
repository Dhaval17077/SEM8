 
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

 
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

 int account=(Integer)session.getAttribute("accid"); 
 String applic=(String)session.getAttribute("appli"); 



    String query = "update passreg set account_id='"+account+"',name='"+name+"',fname='"+fname+"',dob='"+dobname+"',gender='"+radio+"',aadharno='"+aadharno+"',mnumber='"+mnumber+"',email='"+email+"',r_address='"+raddress+"',r_pincode='"+pincode+"',pass_m_a='"+selectmonth+"',pass_type='Studentpass' where application_no='"+applic+"' ";
      out.println();     
statement.executeUpdate(query);
String query12 = "update payment set date=null,status=null where application_no='"+applic+"' ";
      out.println();     

statement.executeUpdate(query12);
String query11 = "DELETE FROM ats.tbl_doc WHERE tbl_doc.application_no='"+applic+"' ";
      out.println(query11);     

statement.executeUpdate(query11);

response.sendRedirect("dashboard.jsp");
  //   out.println("Success");


statement.close();
connection.close();

//pageContext.getOut().println("Record inserted");



%>

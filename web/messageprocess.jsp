 
<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
 <%@ page import="java.util.*,javax.mail.*"%>
 <%@ page import=" java.io.*" %>
 <%@ page import=" java.net.*" %>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.URLConnection"%>
<%@ page import="java.net.URLEncoder"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;



Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
 
   
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String msg=request.getParameter("msg");
                               

String query1 = "insert into message(user_name,user_phone,user_message)values('"+name+"','"+phone+"','"+msg+"')";
statement.executeUpdate(query1); 
/*
String smsg="Thanks";                               
String smsg1="";                               
String smsg2="Thanks";
String requestUrl = "http://amazesms.in/api/pushsms.php?usr=717770&key=010eW3JP40pAAtisyX47VQs3U75OSl&sndr=KRISHN&ph="+phone+"&text="+smsg+""+smsg1+""+smsg2+"&rpt=1";
 		try {                       



                        URL url = new URL(requestUrl);
                        
                        HttpURLConnection uc = (HttpURLConnection)url.openConnection();
                        

                        out.println(uc.getResponseMessage());

                        uc.disconnect();

                } 
catch(Exception ex) 
{
                        out.println(ex.getMessage());

       }
        */
response.sendRedirect("contact.jsp?st=success");

statement.close();
connection.close();
%>
 
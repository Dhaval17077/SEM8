<%@page import=" java.text.SimpleDateFormat"%>
<%@page import=" java.util.Date"%>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

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

String email=request.getParameter("email");
String query1 = "Select * from account where  account_email='"+email+"'";

rs=statement.executeQuery(query1);
//out.println(query1);
//out.println(pass);
if(rs.next())
    {
     String pass1=rs.getString("account_password");  
     out.println(pass1);
     String result;

    final String to = request.getParameter("email");
    final String subject = "Your Account Password";//request.getParameter("sub");

    final String messg = "Your Password for Advance Travelling System Account is : "+pass1+". Please do not share this with anyone.";
    final String from = "99047dhaval@gmail.com";

    final String pass = "Dhaval.@.17077";
    String host = "smtp.gmail.com";
 
    Properties props = new Properties();
 
    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");
 
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

 
        MimeMessage message = new MimeMessage(mailSession);

 
        message.setFrom(new InternetAddress(from));

 
        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

 
        message.setSubject(subject);

 
        message.setText(messg);

 
        Transport.send(message);

        result = "Your mail sent successfully....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }
response.sendRedirect("login.jsp?pass=success");

 }

else
    {
response.sendRedirect("forgotpassword.jsp?fail=notvalid");
out.println("Sorry");

    }

statement.close();
connection.close();
 
%>

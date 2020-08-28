 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.util.*,javax.mail.*" %>
<head>
    <style>  
 .aaa{
     background: red;
 }
    </style>
</head>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
//String a="Social";

String email=request.getParameter("email");
out.println(email);
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "insert into newsletter(email)values('"+email+"')";
out.println(query);
statement.executeUpdate(query);
   
 
statement.close();
connection.close();
String result;

    // Get recipient's email-ID, message & subject-line from index.html page
 
    final String to = request.getParameter("email");
    String pwd = "12345";
    final String subject = "ATS";//request.getParameter("sub");
 
   // final String messg = "<%@ include file = "relative url" >";
    // Sender's email ID and password needs to be mentioned

    final String from = "99047dhaval@gmail.com";

    final String pass = "Dhaval.@.17077";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {
 
        // Create a default MimeMessage object.
 
        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);
 
      message.setContent("<body style=\"background: #f2f3f5; padding: 20px\">"
              + "<div style=\"max-width: 600px; margin: auto;\">"
              + "<div style=\"background: #fff; line-height: 1.5em; font: 14px sans-serif; color: #000; border-top: 4px solid #ec5252; margin-bottom: 20px;\">"
              + "<div style=\"padding: 20px 30px;\">"
              + "<div style=\"font-size: 16px; line-height: 1.5em; border-bottom: 1px solid #f2f3f5; padding-bottom: 10px; margin-bottom: 20px;\">"
              + "<font face=\"Times New Roman\" size=\"2px\" margin-bottom=\"0px\"><center><h2><b>Welcome To Advance Travelling System</b><h2></center></font><hr style=\"margin-top: -10px\">"
              + "<font face=\"Times New Roman\" size=\"2px\">You're now part of community that connects you with some specials services. Discover things to do. Or share Your feedback with us.</center></font>"
              + "<font face=\"Times New Roman\" size=\"1px\"><center><h2><b>Discover Our Services</b></h2></center></font>"
              + "<font face=\"Times New Roman\" size=\"2px\"><b>1) Ticket Booking :</b></font><br>" 
              + "<font face=\"Times New Roman\" size=\"2px\">You can book online ticket and will receive e-ticket through E-mail.</font><br>" 
              + "<font face=\"Times New Roman\" size=\"2px\"><b>2) Pass Registration :</b></font><br>"
              + "<font face=\"Times New Roman\" size=\"2px\">This portal provide online pass registration for both service pass and students pass.</font></div></div></div>"
              + "<div style=\"font:11px sans-serif; color:#686f7a;\">"
              + "<font face=\"Times New Roman\" size=\"2px\"><center>You have any questions or need further assistance? Please write to 99047dhaval@gmail.com</center></font><br>"
              + "<font face=\"Times New Roman\" size=\"2px\"><center>Delivered by : ATS Members.</center></font><br>"
               + "</div></div></body>",        
             // + "<img src=\"img/404.png\">",                
              "text/html" );       
      Transport.send(message); 
 
        result = "Your mail sent successfully....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";
 
    }

//pageContext.getOut().println("Record inserted");

response.sendRedirect("index.jsp?st2=success");


%>
 
 
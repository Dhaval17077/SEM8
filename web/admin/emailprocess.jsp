 
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>

<%
String a="Social";

//String email=request.getParameter("email");
//out.println(email);
String cc=request.getParameter("cc");
out.println(cc);
String bcc=request.getParameter("bcc");
out.println(bcc);
//String subject1=request.getParameter("subject");
//out.println(subject1);
 
String file=request.getParameter("file");
out.println(file);
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
 
statement.close();
connection.close();
String result;

    // Get recipient's email-ID, message & subject-line from index.html page
 
    final String to = request.getParameter("email");
    String pwd = "12345";
    final String subject = request.getParameter("subject");//request.getParameter("sub");

   // final String messg = request.getParameter("msg");
 
  

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

        // Now set the actual message

        message.setText(request.getParameter("msg"));

        // Send message

        Transport.send(message);

        result = "Your mail sent successfully....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

//pageContext.getOut().println("Record inserted");

response.sendRedirect("emailnews.jsp?st2=success");


%>
 
 
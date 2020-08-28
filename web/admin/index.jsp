<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
   
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
  
       
%>
<jsp:include page="header.jsp"/>
<head>
    <style>
        hr {
    margin-top: 8px;
    margin-bottom: 12px;
    border: 0;
    border-top: 1px solid #797979;
}
    </style>
</head>    
<section id="main-content">
      <section class="wrapper">
        <div class="row">
            <div class="col-lg-9 main-chart" style="padding-top: 0px;">
             <div class="row mt">
<%
Statement statement3 =null;
ResultSet rs3 =null;
statement3 = connection.createStatement();

%>              <div class="col-md-4 col-sm-4 mb">
                  <div class="green-panel pn donut-chart" style="height: 200px;">
                  <div class="green-header">
                    <h5>USERS</h5>
                  </div>
                   <center style="font-size: 7rem;"><i class="fa fa-user-circle-o"></i></center>
                   <div class="row" style="margin-top: -20px;">
                       <div class="col-sm-6 col-xs-6" style="width: 100%;">
                           <h2 style="font-weight: 900; color: #696969; font-size: 20px;">Total Users: <% 
 
                                                                                                                                                                             
String query2 = "select * from account"; 
rs3=statement3.executeQuery(query2);
      int count=0; 
while(rs3.next())
    {
    count++;
    }
%>							
<%      out.println(count);
%></h2>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <div class="col-md-4 col-sm-4 mb">
                  <div class="grey-panel pn donut-chart" style="height: 200px;">
                  <div class="grey-header">
                    <h5>PASS APPLICATION</h5>
                  </div>
                   <center style="font-size: 7rem;"><i class="fa fa-file-text-o"></i></center>
                   <div class="row" style="margin-top: -20px;">
                       <div class="col-sm-6 col-xs-6" style="width: 100%;">
                           <h2 style="font-weight: 900; color: #FF6B6B; font-size: 20px;">Total Application: <% 
 
                                                                                                                                                                             
String query3 = "select * from passreg"; 
rs3=statement3.executeQuery(query3);
      int count1=0; 
while(rs3.next())
    {
    count1++;
    }
%>							
<%      out.println(count1);
%></h2>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <div class="col-md-4 col-sm-4 mb">
                  <div class="darkblue-panel pn donut-chart" style="height: 200px;">
                      <div class="darkblue-header" style="background: #00000047;">
                    <h5>TICKET BOOKING</h5>
                  </div>
                   <center style="font-size: 7rem;"><i class="fa fa-ticket"></i></center>
                   <div class="row" style="margin-top: -20px;">
                       <div class="col-sm-6 col-xs-6" style="width: 100%;">
                           <h2 style="font-weight: 900; color: whitesmoke; font-size: 20px;">Total Booking: <% 
 
                                                                                                                                                                             
String query4 = "select * from booking"; 
rs3=statement3.executeQuery(query4);
      int count2=0; 
while(rs3.next())
    {
    count2++;
    }
 %>							
<%      out.println(count2);
%></h2>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <div class="col-md-4 col-sm-4 mb">
                  <div class="green-panel pn donut-chart" style="height: 200px;">
                  <div class="green-header">
                    <h5>TOTAL ROUTES</h5>
                  </div>
                   <center style="font-size: 7rem;"><i class="fa fa-bus"></i></center>
                   <div class="row" style="margin-top: -20px;">
                       <div class="col-sm-6 col-xs-6" style="width: 100%;">
                           <h2 style="font-weight: 900; color: #696969; font-size: 20px;">Routes: <% 
 
                                                                                                                                                                             
String query5 = "select * from  tbl_route"; 
rs3=statement3.executeQuery(query5);
      int count3=0; 
while(rs3.next())
    {
    count3++;
    }
      out.println(count3);
%></h2>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <div class="col-md-4 col-sm-4 mb">
                  <div class="grey-panel pn donut-chart" style="height: 200px;">
                  <div class="grey-header">
                    <h5>PROFITS</h5>
                  </div>
                   <center style="font-size: 7rem;"><i class="fa fa-inr"></i></center>
                   <div class="row" style="margin-top: -20px;">
                       <div class="col-sm-6 col-xs-6" style="width: 100%;">
                           <h2 style="font-weight: 900; color: #FF6B6B; font-size: 20px;">Total Profits: <% 
 
String query6 = "select SUM(pass_m_a) from passreg";
rs3=statement3.executeQuery(query6);
String Countrun="";
while(rs3.next())
    {
        Countrun = rs3.getString(1);
        out.println(""+Countrun);
     }
%></h2>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <div class="col-md-4 col-sm-4 mb">
                  <div class="darkblue-panel pn donut-chart" style="height: 200px;">
                      <div class="darkblue-header" style="background: #00000047;">
                    <h5>MESSAGES</h5>
                  </div>
                   <center style="font-size: 7rem;"><i class="fa fa-comments-o"></i></center>
                   <div class="row" style="margin-top: -20px;">
                       <div class="col-sm-6 col-xs-6" style="width: 100%;">
                           <h2 style="font-weight: 900; color: whitesmoke; font-size: 20px;">User's Messages: <% 
 
                                                                                                                                                                             
String query7 = "select * from message"; 
rs3=statement3.executeQuery(query7);
      int count5=0; 
while(rs3.next())
    {
    count5++;
    }
      out.println(count5);
%></h2>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
                    
<div class="row">
             
    <div class="col-md-8 mb" style="width: 96.666667%; margin-left: 15px;">
        <div class="message-p pn" style="height: 265px;">
                  <div class="message-header">
                    <h5>RECENT ACTIVITY</h5>
                  </div>
                  <div class="row">
                     
                      <div class="col-md-9" style="width: 100%;">
<%
Statement statement5 =null;
ResultSet rs5 =null;
statement5 = connection.createStatement();
String sql3="select * from  account order by account_id desc limit 1";
rs5=statement5.executeQuery(sql3);
while(rs5.next())
    {
        
%>                          
                      <p>
                        <i class="fa fa-user-circle-o"></i><name style="padding-left: 5px;"><%out.println(rs5.getString("account_name"));%></name>
                        just created a new account with your website.
                      </p><hr>
<%}%>                      
                    </div>
                      
                      <div class="col-md-9" style="width: 100%;">
<%
Statement statement6 =null;
ResultSet rs6 =null;
statement6 = connection.createStatement();
String sql4="select * from  passreg order by pass_id desc limit 1";
rs6=statement6.executeQuery(sql4);
while(rs6.next())
    {
        
%>
<p>
                        <i class="fa fa-file-text-o"></i><name style="padding-left: 5px;"><%out.println(rs6.getString("name"));%><%out.println(rs6.getString("fname"));%></name>
                        has submited <%out.println(rs6.getString("pass_type"));%> pass application. So, check their personal information and other details like documents.
                      </p><hr>
<%}%>                       
                    </div>
                      
                      <div class="col-md-9" style="width: 100%;">
<%
Statement statement7 =null;
ResultSet rs7 =null;
statement7 = connection.createStatement();
String sql5="select * from  newsletter order by n_id desc limit 1";
rs7=statement7.executeQuery(sql5);
while(rs7.next())
    {
        
%>
<p>
                        <i class="fa fa-envelope"></i><name style="padding-left: 5px;"><%out.println(rs7.getString("email"));%></name>
                        just subscribe for E-mail newsletter.
                      </p><hr>
<%}%>                       
                    </div>
                    
                    <div class="col-md-9" style="width: 100%;">
<%
Statement statement8 =null;
ResultSet rs8 =null;
statement8 = connection.createStatement();
String sql6="select * from  booking order by b_id desc limit 1";
rs8=statement8.executeQuery(sql6);
while(rs8.next())
    {
        
%>
<p>
                        <i class="fa fa-ticket"></i><name style="padding-left: 5px;"><%out.println(rs8.getString("name"));%></name>
                        booked bus ticket for date <%out.println(rs8.getString("date"));%>.
                      </p><hr>
<%}%>                       
                    </div>
                    
                    <div class="col-md-9" style="width: 100%;">
<%
Statement statement9 =null;
ResultSet rs9 =null;
statement9 = connection.createStatement();
String sql7="select * from  message order by user_id desc limit 1";
rs9=statement9.executeQuery(sql7);
while(rs9.next())
    {
        
%>
<p>
                        <i class="fa fa-comments-o"></i><name style="padding-left: 5px;"><%out.println(rs9.getString("user_name"));%></name>
                        send you a message. Please check it and reply their message by mail.
                      </p><hr>
<%}%>                       
                    </div>
                  </div>
                </div>
                <!-- /Message Panel-->
              </div>
              <!-- /col-md-8  -->
            </div>
                    
            </div>
          </div>
           <div class="col-lg-3 ds">
             
            <h4 class="centered mt">TEAM MEMBERS</h4>
            <!-- First Member -->
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="img/fr-05.jpg" width="35px" height="35px" align="">
              </div>
              <div class="details">
                <p>
                  <a href="#">DHAVAL PATEL</a><br/>
                  <muted>I am Busy</muted>
                </p>
              </div>
            </div>
            <!-- Second Member -->
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="img/fr-05.jpg" width="35px" height="35px" align="">
              </div>
              <div class="details">
                <p>
                  <a href="#">SHIVAM RAJPUT</a><br/>
                  <muted>I am Busy</muted>
                </p>
              </div>
            </div>
            <!-- Third Member -->
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="img/fr-05.jpg" width="35px" height="35px" align="">
              </div>
              <div class="details">
                <p>
                  <a href="#">KETUL RADADIYA</a><br/>
                  <muted>Available</muted>
                </p>
              </div>
            </div>
            <!-- Fourth Member -->
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="img/fr-05.jpg" width="35px" height="35px" align="">
              </div>
              <div class="details">
                <p>
                  <a href="#">KARAN PUNJABI</a><br/>
                  <muted>Available</muted>
                </p>
              </div>
            </div>
            <!-- CALENDAR-->
            <div id="calendar" class="mb">
              <div class="panel green-panel no-margin">
                <div class="panel-body">
                  <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                    <div class="arrow"></div>
                    <h3 class="popover-title" style="disadding: none;"></h3>
                    <div id="date-popover-content" class="popover-content"></div>
                  </div>
                  <div id="my-calendar"></div>
                </div>
              </div>
            </div>
            <!-- / calendar -->
          </div>
          <!-- /col-lg-3 -->
        </div>
        <!-- /row -->
      </section>
    </section>
    
 
  
  
  <jsp:include page="footer.jsp"/>
 <script type="text/javascript">
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'ATS',
        // (string | mandatory) the text inside the notification
        text: 'Welcome Back Admin!!!',
        // (string | optional) the image to display on the left
         // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 5000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>
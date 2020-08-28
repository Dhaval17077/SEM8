<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
 

String user=request.getParameter("user");

  
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
  
       
%><!doctype html>

<html lang="en">
    <head>
        <title src="images/favicon.png">User Account</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
         <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="icon" href="images/favicon.png" type="image/x-icon">
        <!-- Google Fonts -->	
        <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i%7CMerriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        
        <!-- Bootstrap Stylesheet -->	
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <!-- Font Awesome Stylesheet -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
            
        <!-- Custom Stylesheets -->	
        <link rel="stylesheet" href="css/style1.css">
        <link rel="stylesheet" id="cpswitch" href="css/orange1.css">
        <link rel="stylesheet" href="css/responsive.css">
    
        <!-- Owl Carousel Stylesheet -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        
        <!-- Flex Slider Stylesheet -->
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" />
        
        <!--Date-Picker Stylesheet-->
        <link rel="stylesheet" href="css/datepicker.css">
        
        <!-- Magnific Gallery -->
        <link rel="stylesheet" href="css/magnific-popup.css">
         <style>
       #newsletter-1 {
    background: linear-gradient(rgba(0, 0, 0, 0.88),rgba(0, 0, 0, 0.88));
    background-size: 140%;
    color: white;
    padding: 100px 0px 5px 0px;
}
.main-navbar .navbar-header {
    position: relative;
    padding: 10px 0;
 }
 .page-cover.dashboard {
     padding-top: 10px;
    background: #000000;
}
.innerpage-section-padding {
    padding-top: 38px;
    padding-bottom: 70px;
}

 </style> </head>
    
    
    <body id="main-homepage">
    
        <!--====== LOADER =====-->
        <div class="loader"></div>
    
    
    	<!--======== SEARCH-OVERLAY =========-->       
        
        
        
        <!--============= TOP-BAR ===========-->
        <div id="top-bar" class="tb-text-white">
            <div class="container">
                <div class="row">          
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <div id="info">
                            <ul class="list-unstyled list-inline">
                                
                            </ul>
                        </div><!-- end info -->
                    </div><!-- end columns -->
                    
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="width: 50%;">
                        <div id="links">
                            <ul class="list-unstyled list-inline">
                                
                                 <li><a href="logout.jsp"><span><i class="fa fa-sign-out"></i></span>Logout</a></li>
                               
                            </ul>
                        </div><!-- end links -->
                    </div><!-- end columns -->				
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end top-bar -->
		
  
<section class="page-cover dashboard">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                    	<h1 class="page-title">My Account</h1>
                        <ul class="breadcrumb">
                            <li><a href="dashboard.jsp">Home</a></li>
                            <li class="active">My Account</li>
                        </ul>
                    </div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end page-cover -->
               
    <section class="innerpage-wrapper">
        	<div id="dashboard" class="innerpage-section-padding">
                <div class="container">
                    <div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        	<div class="dashboard-heading">
                                <h2>     <img src="images/ats.png" alt="">
                                </h2>
                                <p>Hi 
                                    
                                    <%
                                String name=(String)session.getAttribute("sessname"); 
                                out.println(name);
                                 %>,
                                 
                                 
                                 Welcome to Advance Travelling System!</p>
                                <p>All your trips booked with us will appear here and you'll be able to manage everything!</p>
                            </div><!-- end dashboard-heading -->
                         
                                <div id="dashboard-tabs">
                            	<ul class="nav nav-tabs nav-justified">
                                    		<li class="active"><a href="dashboard.jsp"><span><i class="fa fa-cogs"></i></span>Dashboard</a></li>
                                            <li><a href="userpass.jsp"><span><i class="fa fa-file-text-o"></i></span>Pass Application</a></li>
                                            <li><a href="renewal.jsp"><span><i class="fa fa-file-text-o"></i></span>Pass Renewal</a></li>
                                            <li><a href="booking.jsp"><span><i class="fa fa-ticket"></i></span>Booking</a></li>
                                             </ul>
                                    
                                    
                                    
                      
                                                    
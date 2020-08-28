<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
   
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
  
       
%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="shortcut icon" href="#"/><link href='https://fonts.googleapis.com/css?family=Roboto:400,100|Raleway:100,200,300,400,500,600,700,800,900,300,500,500italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Josefin+Sans:400,700,600' rel='stylesheet' type='text/css'>
	<link href="https://previews.envatousercontent.com/files/259064878/paradise/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" media="all">
	<link href="https://previews.envatousercontent.com/files/259064878/paradise/css/f.css" rel="stylesheet" media="all">
        <!-- Google Fonts -->	
        <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i%7CMerriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        
        <!-- Bootstrap Stylesheet -->	
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <!-- Font Awesome Stylesheet -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
            
        <!-- Custom Stylesheets -->	
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" id="cpswitch" href="css/orange.css">
        <link rel="stylesheet" href="css/responsive.css">
    
        <!-- Owl Carousel Stylesheet -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        
        <!-- Flex Slider Stylesheet -->
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" />
        
        <!--Date-Picker Stylesheet-->
        <link rel="stylesheet" href="css/datepicker.css">
         <link rel="stylesheet" href="css/jquery.colorpanel.css">
         <link rel="stylesheet" id="cpswitch" href="css/contact.css">

        <!-- Magnific Gallery -->
        <link rel="stylesheet" href="css/magnific-popup.css">
        <style>
            
        </style>
 </head>
    
    
    <body id="main-homepage">
    
         <div class="loader"></div>
     
        <div id="top-bar" class="tb-text-white">
            <div class="container">
                <div class="row">          
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <div id="info">
                            <ul class="list-unstyled list-inline">
                                <li><span><i class="fa fa-map-marker"></i></span>352,353 A , Nr. Bhavik Pub., S-G Hwy, Ahmedabad.</li>
                                <li><span><i class="fa fa-phone"></i></span>+91 7874277636</li>
                            </ul>
                        </div><!-- end info -->
                    </div><!-- end columns -->
                    
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6" style="width: 48%;">
                        <div id="links">
                            <ul class="list-unstyled list-inline">
                                <li><a href="login.jsp"><span><i class="fa fa-lock"></i></span>Login</a></li>
                                <li><a href="signup.jsp"><span><i class="fa fa-plus"></i></span>Sign Up</a></li>
   <li><a class="btn btn-orange" style="width: 140px; height: 30px;" href="route.jsp"><span><i class="fa fa-ticket"></i></span>Booking</a></li>
                          
                            </ul>
                        </div><!-- end links -->
                    </div><!-- end columns -->				
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end top-bar -->
		
        <nav class="navbar navbar-default main-navbar navbar-custom navbar-white" id="mynavbar-1">
            <div class="container">
                <div class="navbar-header">
                  
                                                  <img src="images/ats.png" alt="">
  
                 </div><!-- end navbar-header -->
                <div class="collapse navbar-collapse" id="myNavbar1">
                    <ul class="nav navbar-nav navbar-right navbar-search-link">
                        
                        <li class="dropdown active"><a href="index.jsp">Home</a>
                             		
                        </li>
                        <li class="dropdown"><a href="passreg.jsp">pass Registration</a>
                           		
                        </li>
                        <li class="dropdown"><a href="about.jsp">About Us</a>
                           		
                        </li>
                        <li class="dropdown"><a href="contact.jsp">Contact Us</a>
                            		
                        </li>
                               		<li></li>
         
                     </ul>
                </div><!-- end navbar collapse -->
            </div><!-- end container -->
        </nav><!-- end navbar -->        
                
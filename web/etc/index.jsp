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
        <title src="images/favicon.png">Index</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
         
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
        
        <!-- Magnific Gallery -->
        <link rel="stylesheet" href="css/magnific-popup.css">
    <style>
       #newsletter-1 {
    background: linear-gradient(rgba(0, 0, 0, 0.88),rgba(0, 0, 0, 0.88));
    background-size: 140%;
    color: white;
    padding: 100px 0px 5px 0px;
}
 
#slider-1 li .meta h2 {
	font-size: 66px;
	margin: 0;
	font-weight: 400;
	text-transform:uppercase;
	letter-spacing:0.20em;
	margin-bottom:-10px;
}
.spad {
       margin-top: -100px;
    padding-bottom: 100px;
}
@media only screen and (min-width: 1200px)
.container {
    max-width: 1170px;
}
.row {
    display: -ms-flexbox;
     -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}
.about-text {
    text-align: center;
    padding: 0 10px;
}
.section-title {
    text-align: center;
    margin-bottom: 22px;
}
.section-title span {
    font-size: 14px;
    color: #dfa974;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 2px;
}
.section-title h1 {
    font-size: 44px;
    color: #19191a;
    line-height: 58px;
    margin-top: 10px;
}
.about-text p.f-paraa {
    /* margin-bottom: 10px; */
    font-size: 18px;
    padding: 0px 0px 0px 0px;
    text-align: -webkit-auto;
    font-family: -webkit-body;
}
.about-text p {
    color: #595960;
    font-weight: 500;
}
p {
    font-size: 16px;
    font-family: "Cabin", sans-serif;
    color: #6b6b6b;
    font-weight: 400;
    line-height: 26px;
    margin: 0 0 15px 0;
}
.about-text .about-btn {
    color: #19191a;
}
.primary-btn {
    display: inline-block;
    font-size: 13px;
    color: #dfa974;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-weight: 700;
    position: relative;
}
.search-tabs{
	position:absolute;
	bottom:220px;
	left:0px;
	width:100%;
}
.main-navbar .navbar-header {
    position: relative;
    padding: 10px 0;
 }  
 #best-features.black-features{
     background: linear-gradient(rgba(0, 0, 0,0.8),rgba(0, 0, 0,0.8));
    background-size: 145%;
    background-attachment: fixed;
    color: white;
}
#best-features.black-features .b-feature-block p {
     color: white;
    text-align: justify;
}
.faaa {
    padding-left: 33px;
    padding-top: 22px;
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
 .faa {
      padding-left: 33px;
    padding-top: 36px;
    width: 16px;
    display: inline-block;
    font: normal normal normal 60px/1 FontAwesome;
     text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.highlight-box .h-text .numbers {
    padding-left: 120px;
    font-size: 50px;
    font-weight: bold;
    color: #555;
}
.highlight-box .h-text p {
    text-align: -webkit-center;
    color: #555;
}
#highlights {
    background: linear-gradient(rgba(0, 0, 0, 0),rgba(0, 0, 0, 0));
    background-size: 145%;
    color: white;
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
        
       
        
		<!--========================= FLEX SLIDER =====================-->
        <section class="flexslider-container" id="flexslider-container-1">

            <div class="flexslider slider" id="slider-1">
                <ul class="slides">
                    
     
                   <li class="item-1" style="background:			linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(images/aaa.jpg) 50% 0%;
	background-size:cover;
	height:73%;">
                        <div class=" meta">         
                            <div class="container">
                                <h2>Advance Travelling System</h2>
                            </div><!-- end container -->  
                        </div><!-- end meta -->
                    </li><!-- end item-2 -->
                   
                </ul>
            </div><!-- end slider -->
            
            <div class="search-tabs" id="search-tabs-1">
            	<div class="container">
                    <div class="row">
                        <div class="col-sm-12" style="width: 660px; left: 250px;">
                        
                            <ul class="nav nav-tabs center-tabs">
                                <li class="active"><a href="#" data-toggle="tab"><span><i class="fa fa-bus"></i></span><span class="st-text">Ticket Booking</span></a></li>
                                
                            </ul>
        
                            <div class="tab-content">

                                <div id="flights" class="tab-pane in active">
                                    <form action="route.jsp" method="post">
                                        <div class="row">

                                            
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2" style="width: 200px;">
                                                <div class="form-group right-icon">
           <select name="s1" id="s1" class="form-control" placeholder="Keyword search" required>
                      <option value="" class="date-input" id="date-in">-select-</option>
                       <%
Statement statement =null;
ResultSet rs =null;
statement = connection.createStatement();
statement = connection.createStatement();
String query = "Select * from tbl_area";
rs=statement.executeQuery(query);
out.println(query);

while(rs.next())
    {
        
            %>
            <option value="<% out.println(rs.getInt("area_id"));   %>"><% out.println(rs.getString("area_name"));   %></option>
            <%
            }
rs.close();
statement.close();
%>
                    </select>
                                                    <i class="fa fa-angle-down"></i>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2" style="width: 200px;">
                                                <div class="form-group right-icon">
           <select name="d1" id="d1" class="form-control" placeholder="Keyword search" required>
                      <option value="" class="date-input" id="date-in">-select-</option>
                  <%
Statement statement1 =null;
ResultSet rs1 =null;
statement1 = connection.createStatement();
String query1 = "select * from tbl_area";
rs1=statement1.executeQuery(query1);
out.println(query1);

while(rs1.next())
    {
        
           %>
            <option value="<% out.println(rs1.getInt("area_id"));   %>"><% out.println(rs1.getString("area_name"));   %></option>
            <%
            }
out.print(rs1);
rs1.close();
statement1.close();
%>  
                    </select>
                                                    <i class="fa fa-angle-down"></i>
                                                </div>
                                            </div>
                                            <!-- end columns -->
                                            
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 search-btn" style="width: 200px;">
                                                <button class="btn btn-orange" type="submit">Search</button>
                                            </div><!-- end columns -->
                                            
                                        </div><!-- end row -->
                                    </form>
                                </div><!-- end flights -->
                                
                                
                            </div><!-- end tab-content -->
                            
                        </div><!-- end columns -->
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end search-tabs -->
            
        </section><!-- end flexslider-container -->
        
        
 <section class="aboutus-sectionnn spad">
        <div class="container">
            <div class="row">
                     <div class="about-text">
                      <div class="page-heading">
                        	<h2>Why Choose Us?</h2>
                            <hr class="heading-line" />
                        </div>
                      
                        <p class="f-paraa">Advance Travelling System would give information about bus routes with specific timing.</p>
                        <p class="f-paraa">So when it comes to booking, User can not need to go to the ticket window for buying tickets; 
                        instead you can book it through your smart phone or any other devices which are compatible with our product.</p>
                        <p class="f-paraa">E-mail servic will alert the user about bus related events like change in timing, price and route.</p>  
                        <p class="f-paraa">For all product related transactions, EMoney will be used.</p>  
                       <a href="about.jsp" class="primary-btn about-btn">Read More</a>
                    </div>
                 
        </div>
        </div>
    </section>        
        
        <!--======================= BEST FEATURES =====================-->
        <section id="best-features" class="banner-padding black-features">
        	<div class="container">
        		<div class="row">
                            <div class="page-heading white-heading">
                        	<h2>Discover Our Services</h2>
                            <hr class="heading-line" />
                        </div>
        			<div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-address-card"></i></span>
                        	<h3>Pass Registration</h3>
                <p>This portal provide online pass registration for both service pass and students pass.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-heart"></i></span>
                        	<h3>Travellers Love Us</h3>
                <p>Travellers love this portal just because of these online time saving services.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-ticket"></i></span>
                        	<h3>Ticket Booking</h3>
                <p>User can book online ticket and will receive e-ticket through SMS.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                   
                   <div class="col-sm-6 col-md-3">
                    	<div class="b-feature-block">
                    		<span><i class="fa fa-envelope"></i></span>
                        	<h3>Email Service</h3>
                <p>E-mail servic will alert the user about bus related events like change in timing, price and route.</p>
                        </div><!-- end b-feature-block -->
                   </div><!-- end columns -->
                </div><!-- end row -->
        	</div><!-- end container -->
        </section><!-- end best-features -->
                
        
        <!--=============== TOUR OFFERS ===============-->
     <%
Statement statement3 =null;
ResultSet rs3 =null;
statement3 = connection.createStatement();

%>       
        
        <!--==================== HIGHLIGHTS ====================-->
        <section id="highlights" class="section-padding back-size"> 
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="row">
                            <div id="boxes">
                             <div class="page-heading">
                        	<h2>Some Fun Facts</h2>
                            <hr class="heading-line" />
                        </div>
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">  
                                    <div class="highlight-box">
                                        <div class="h-icon">
                                            <span><i class="faaa fa-bus"></i></span>
                                        </div><!-- end h-icon -->
                                        
                                        <div class="h-text">
                                            <span class="numbers"><% 
 
                                                                                                                                                                             
String query2 = "select * from tbl_area"; 
rs3=statement3.executeQuery(query2);
      int count=0; 
while(rs3.next())
    {
    count++;
    }
%>							
<%      out.println(count);
%></span>
                                            <p>Source & Destination</p>
                                        </div><!-- end h-text -->                           
                                    </div><!-- end highlight-box -->                       
                                </div><!-- end columns -->
                                
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">  
                                    <div class="highlight-box">
                                        <div class="h-icon">
                                            <span><i class="faaa fa-road"></i></span>
                                        </div><!-- end h-icon -->
                                        
                                        <div class="h-text cruise">
                                            <span class="numbers"><% 
 
                                                                                                                                                                             
String query3 = "select * from tbl_route"; 
rs3=statement3.executeQuery(query3);
      int count1=0; 
while(rs3.next())
    {
    count1++;
    }
%>							
<%      out.println(count1);
%></span>
                                            <p>Number Of Routes</p> 
                                        </div><!-- end h-text -->                           
                                    </div><!-- end highlight-box -->                       
                                </div><!-- end columns -->
                                
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">  
                                    <div class="highlight-box">
                                        <div class="h-icon">
                                            <span><i class="faaa fa-ticket"></i></span>
                                        </div><!-- end h-icon -->
                                        
                                        <div class="h-text taxi">
                                            <span class="numbers"><% 
 
                                                                                                                                                                             
String query4 = "select * from tbl_area"; 
rs3=statement3.executeQuery(query4);
      int count2=0; 
while(rs3.next())
    {
    count2++;
    }
 %>							
0</span>
                                            <p>Total Booking</p>   
                                        </div><!-- end h-text -->                           
                                    </div><!-- end highlight-box -->                       
                                </div><!-- end columns -->
                                
                            </div><!-- end boxes -->
                    	</div><!-- end row -->
            		</div><!-- end columns -->
                </div><!-- end row -->
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="row">
                            <div id="boxes">
                            
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">  
                                    <div class="highlight-box">
                                        <div class="h-icon">
                                            <span><i class="faa fa-address-card"></i></span>
                                        </div><!-- end h-icon -->
                                        
                                        <div class="h-text">
                                            <span class="numbers"><% 
 
                                                                                                                                                                             
String query5 = "select * from  passreg"; 
rs3=statement3.executeQuery(query5);
      int count3=0; 
while(rs3.next())
    {
    count3++;
    }
      out.println(count3);
%>							
 </span>
                                            <p>Pass Application</p>
                                        </div><!-- end h-text -->                           
                                    </div><!-- end highlight-box -->                       
                                </div><!-- end columns -->
                                
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">  
                                    <div class="highlight-box">
                                        <div class="h-icon">
                                            <span><i class="faaa fa-comments-o"></i></span>
                                        </div><!-- end h-icon -->
                                        
                                        <div class="h-text cruise">
                                            <span class="numbers"><% 
 
                                                                                                                                                                             
String query6 = "select * from message"; 
rs3=statement3.executeQuery(query6);
      int count4=0; 
while(rs3.next())
    {
    count4++;
    }
      out.println(count4);
%>							
 </span>
                                            <p>User's Review</p> 
                                        </div><!-- end h-text -->                           
                                    </div><!-- end highlight-box -->                       
                                </div><!-- end columns -->
                                
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">  
                                    <div class="highlight-box">
                                        <div class="h-icon">
                                            <span><i class="faaa fa-user-circle"></i></span>
                                        </div><!-- end h-icon -->
                                        
                                        <div class="h-text taxi">
                                            <span class="numbers"><% 
 
                                                                                                                                                                             
String query7 = "select * from account"; 
rs3=statement3.executeQuery(query7);
      int count5=0; 
while(rs3.next())
    {
    count5++;
    }
      out.println(count5);
%>							
 </span>
                                            <p>Registered Users</p>   
                                        </div><!-- end h-text -->                           
                                    </div><!-- end highlight-box -->                       
                                </div><!-- end columns -->
                                
                            </div><!-- end boxes -->
                    	</div><!-- end row -->
            		</div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end highlights -->
        
             
      
        
        <!--==================== TESTIMONIALS ====================-->
        <section id="testimonials" class="section-padding back-size">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-12">
                    	<div class="page-heading white-heading">
                        	<h2>Testimonials</h2>
                            <hr class="heading-line" />
                        </div><!-- end page-heading -->

                        <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                            <div class="carousel-inner text-center">
                            
                                <div class="item active">
                                    <blockquote>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</blockquote>
                                    <div class="rating">
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                    </div><!-- end rating -->
                                    <small>Jhon Smith</small>
                                </div><!-- end item -->
                                
                                <div class="item">
                                    <blockquote>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</blockquote>
                                    <div class="rating">
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                    </div><!-- end rating -->
                                            
                                    <small>Jhon Smith</small>
                                </div><!-- end item -->
                                
                                <div class="item">
                                    <blockquote>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</blockquote>
                                    <div class="rating">
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                    </div><!-- end rating -->
                                    
                                    <small>Jhon Smith</small>
                                </div><!-- end item -->
                                
                            </div><!-- end carousel-inner -->
                            
                            <ol class="carousel-indicators">
                                <li data-target="#quote-carousel" data-slide-to="0" class="active"><img src="images/client-1.jpg" class="img-responsive"  alt="client-img">
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="1"><img src="images/client-2.jpg" class="img-responsive"  alt="client-img">
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="2"><img src="images/client-3.jpg" class="img-responsive"  alt="client-img">
                                </li>
                            </ol>
        
                        </div><!-- end quote-carousel -->
                    </div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end testimonials --> 
                
        
        <!--================ LATEST BLOG ==============-->
        <section id="latest-blog" class="section-padding">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-12">
                    	<div class="page-heading">
                        	<h2>Our Latest Blogs</h2>
                            <hr class="heading-line" />
                        </div>
                        
                        <div class="row">
                        	
                             <div class="col-sm-6 col-md-4">
                                <div class="main-block latest-block">
                                    <div class="main-img latest-img">
                                    	<a href="#">
                                        	<img src="images/latest-blog-1.jpg" class="img-responsive" alt="blog-img" />
                                        </a>
                                    </div><!-- end latest-img -->
                                    
                                    <div class="latest-info">
                                    	<ul class="list-unstyled">
                                        	<li><span><i class="fa fa-calendar-minus-o"></i></span>29 April,2017<span class="author">by: <a href="#">Jhon Smith</a></span></li>
                                        </ul>
                                    </div><!-- end latest-info -->
                                    
                                    <div class="main-info latest-desc">
                                    	<div class="row">
                                        	<div class="col-xs-10 col-sm-10 main-title">
                                            	<a href="#">Travel Insuranve Benefits</a>
                                                <p>Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</p>
                                            </div><!-- end columns -->
                                        </div><!-- end row -->
                                        
                                        <span class="arrow"><a href="#"><i class="fa fa-angle-right"></i></a></span>
                                    </div><!-- end latest-desc -->
                                </div><!-- end latest-block -->
                            </div><!-- end columns -->
                        	
                            <div class="col-sm-6 col-md-4">
                                <div class="main-block latest-block">
                                    <div class="main-img latest-img">
                                        <a href="#">
                                        	<img src="images/latest-blog-2.jpg" class="img-responsive" alt="blog-img" />
                                        </a>
                                    </div><!-- end latest-img -->
                                    
                                    <div class="latest-info">
                                    	<ul class="list-unstyled">
                                        	<li><span><i class="fa fa-calendar-minus-o"></i></span>29 April,2017<span class="author">by: <a href="#">Jhon Smith</a></span></li>
                                        </ul>
                                    </div><!-- end latest-info -->
                                    
                                    <div class="main-info latest-desc">
                                    	<div class="row">
                                        	<div class="col-xs-10 col-sm-10 main-title">
                                            	<a href="#">Travel Guideline Agents</a>
                                                <p>Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</p>
                                            </div><!-- end columns -->
                                        </div><!-- end row -->
                                        
                                        <span class="arrow"><a href="#"><i class="fa fa-angle-right"></i></a></span>
                                    </div><!-- end latest-desc -->
                                </div><!-- end latest-block -->
                             </div><!-- end columns -->
                             
                             <div class="col-sm-6 col-md-4">
                                <div class="main-block latest-block">
                                    <div class="main-img latest-img">
                                        <a href="#">
                                        	<img src="images/latest-blog-3.jpg" class="img-responsive" alt="blog-img" />
                                        </a>
                                    </div><!-- end latest-img -->
                                    
                                    <div class="latest-info">
                                    	<ul class="list-unstyled">
                                        	<li><span><i class="fa fa-calendar-minus-o"></i></span>29 April,2017<span class="author">by: <a href="#">Jhon Smith</a></span></li>
                                        </ul>
                                    </div><!-- end latest-info -->
                                    
                                    <div class="main-info latest-desc">
                                    	<div class="row">
                                        	<div class="col-xs-10 col-sm-10 main-title">
                                            	<a href="#">Secure Travel Tips</a>
                                                <p>Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros perpetua ullamcorper.</p>
                                            </div><!-- end columns -->
                                        </div><!-- end row -->
                                        
                                        <span class="arrow"><a href="#"><i class="fa fa-angle-right"></i></a></span>
                                    </div><!-- end latest-desc -->
                                </div><!-- end latest-block -->
                             </div><!-- end columns -->
                             
                        </div><!-- end row -->
                        
                        <div class="view-all text-center">
                        	<a href="#" class="btn btn-orange">View All</a>
                        </div><!-- end view-all -->  
                    </div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end latest-blog -->         
        
        
        <!--========================= NEWSLETTER-1 ==========================-->
        <section id="newsletter-1" class="section-padding back-size newsletter"> 
            <div class="container">
                <div class="row">
                	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                        <h2>Subscribe Our Newsletter</h2>
                        <p>Subscibe to receive our interesting updates</p>	
                        <form>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="email" class="form-control input-lg" placeholder="Enter your email address" required/>
                                    <span class="input-group-btn"><button class="btn btn-lg"><i class="fa fa-envelope"></i></button></span>
                                </div>
                            </div>
                        </form>
                    </div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end newsletter-1 -->
        
        
        <!--======================= FOOTER =======================-->
        <section id="footer" class="ftr-heading-o ftr-heading-mgn-1">
        
            <div id="footer-top" class="banner-padding ftr-top-grey ftr-text-white">
                <div class="container">
                    <div class="row">
						
                        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 footer-widget ftr-contact" style="width:33%">
                            <h3 class="footer-heading">CONTACT US</h3>
                            <ul class="list-unstyled">
                            	<li><span><i class="fa fa-map-marker"></i></span>Silver Oak University, Ahmedabad.</li>
                            	<li><span><i class="fa fa-phone"></i></span>+91 7874277636</li>
                                <li><span><i class="fa fa-envelope"></i></span>99047dhaval@gmail.com</li>
                            </ul>
                        </div><!-- end columns -->
                      
                        
                        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 footer-widget ftr-links ftr-pad-left" style="width:33%">
                        	<h3 class="footer-heading">RESOURCES</h3>
                            <ul class="list-unstyled">
                            	<li><a href="login.jsp">Login</a></li>
                                <li><a href="signup.jsp">Register</a></li>
                            	<li><a href="contact.jsp">Contact Us</a></li>
                                
                               <li><a href="about.jsp">About Us</a></li>
                            </ul>
                        </div><!-- end columns -->

                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 footer-widget ftr-about">
                            <h3 class="footer-heading">ABOUT US</h3>
                            <p>Advance Travelling System would give information about Bus routes with map and timing. Also, this will provide the online registration of pass service and ticket booking.</p>
                            <ul class="social-links list-inline list-unstyled">
                            	<li><a href="#"><span><i class="fa fa-facebook"></i></span></a></li>
                            	<li><a href="#"><span><i class="fa fa-twitter"></i></span></a></li>
                                
                                <li><a href="#"><span><i class="fa fa-instagram"></i></span></a></li>
                                
                            </ul>
                        </div><!-- end columns -->
                        
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end footer-top -->

            <div id="footer-bottom" class="ftr-bot-black">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6" id="copyright">
                            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script><a href="index.jsp"> ATS</a>. All rights reserved.</p>
                        </div><!-- end columns -->
                        
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6" id="terms">
                            <ul class="list-unstyled list-inline">
                            	<li><a href="#">Terms & Condition</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                        </div><!-- end columns -->
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end footer-bottom -->
            
        </section><!-- end footer -->
        
        
        <!-- Page Scripts Starts -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.flexslider.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/custom-navigation.js"></script>
        <script src="js/custom-flex.js"></script>
        <script src="js/custom-owl.js"></script>
        <script src="js/custom-date-picker.js"></script>
        <script src="js/custom-video.js"></script>
        <!-- Page Scripts Ends -->
        
    </body>
</html>
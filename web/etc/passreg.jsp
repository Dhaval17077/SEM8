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
.innerpage-section-padding {
    padding-top: 140px;
    padding-bottom: 140px;
} 
.text-centerr {
    padding: 30px 0px 15px 53px;
    text-align: center;
 } 
 .btn-orange{
     margin: 10px;
    width: 230px;
    height: 55px;
    padding-top: 16px;
 }
 .btn-orange, .btn-orange:focus {
    background: #faa61a;
    color: white;
    font-size: large;
    text-align: -webkit-center;
    background-image: initial;
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
        
        <div id="contact-form-2" class="innerpage-section-padding" style="width: 90%; padding-left: 200px;">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-lg-10 col-lg-offset-1">
                                        <div class="page-heading">
                                            <h2>Pass Application</h2>
                                            <hr class="heading-line" />
                                        </div>
                                        
                                        <div class="row">
                                            
                                            
                                            <div class="col-xs-12 col-sm-6" style="width: 94%">
                                            
                                                <form>
                                                     <div class="text-centerr">
                                                         <a class="btn btn-orange" href="signup.jsp">Fresh Application</a>
                                                         <a class="btn btn-orange" href="login.jsp">Renewal Application</a>
                                                    </div>
                                                </form>
                                            
                                            </div>
                                            
                                        </div>
                                        
                                    </div>      </div>
                                        
                                    </div>  
        
        
        
        
        

        
        
        
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
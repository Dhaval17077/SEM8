<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
 
Statement statement = null;
 
Statement statement12 = null;
 ResultSet rs1 = null;
ResultSet rs21 = null;
ResultSet rs = null;
  
  
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
 statement = connection.createStatement();
 
       
%>

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
 table, td, th {
  border: 1px solid black;
}
table {
     border: #dfa974;
    border-style: outset;
    border-collapse: collapse;
    text-align: -webkit-right;
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
        
        
        
       <br><br><br><br><br>  

       
 
  <h3 style="text-align: center">    
           Result! As Per your choice...
                        </h3>
 
 <table align="center">
                  <thead>
                  <th colspan="2">  
                  <%
String snameid=request.getParameter("s1");
String query = "Select * from tbl_area where  area_id='"+snameid+"'";
rs=statement.executeQuery(query);

while(rs.next())
    {
        out.println("From :");

     String type=rs.getString("area_name");  
    
out.println(type);
    }
%>

<br>

<%
String dnameid=request.getParameter("d1");
String query1 = "Select * from tbl_area where  area_id='"+dnameid+"'";
rs=statement.executeQuery(query1);

while(rs.next())
    {
        out.println("To :");

     String type=rs.getString("area_name");  
    
out.println(type);
    }
 

%>
                    
                   </th>
  </thead><thead>
                  <th>
                      Bus Number
                  </th>
                  <th>
                      Bus Time
                  </th>
                  </thead>
                 
                       
         
  <tbody>
                 <tr>  
    


<% 
String ssid=request.getParameter("s1");
 

String desid=request.getParameter("d1");
 
 
    String sql12="select * from tbl_route inner join tbl_area on tbl_route.area_id_s=tbl_area.area_id "
            + "inner join tbl_timing on tbl_route.route_id=tbl_timing.time_id"
           + " inner join bus on tbl_route.bus_id=bus.bus_id"
            + " where area_id_s='"+ssid+"' and area_id_d <='"+desid+"' order by tbl_route.route_id";
 
    rs21=statement.executeQuery(sql12);
  //  out.println(sql12);
 while(rs21.next())
    {
      %>
     
      <td>
    <% out.println(rs21.getString("bus_name"));%> 
        </td> 
        
      <td> 
          <% out.println(rs21.getString("time"));%>
      </td> 
                 </tr>
 </tbody>
                                              
    
     
     <%
                
    }  
 rs21.close();
          %>
          
          
          <th>In Between Station : </th><td>
<%

String snameiid=request.getParameter("s1");
String dnameiid=request.getParameter("d1");
String query111 = "Select * from tbl_area where area_id >='"+snameiid+"' and area_id <='"+dnameiid+"'";
rs1=statement.executeQuery(query111);
while(rs1.next())
    {
 
     String type=rs1.getString("area_name");  
   
out.println(type);
out.println("--");
      }
rs1.close();
%>
</td>                                        
              
                              </table>
                              
                           
<br>             
<br>             
<br>             
<br>             
<br>             
<br>             
        
        
        
        
        
        
        
        
        
        
        
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
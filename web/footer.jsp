<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
   
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
  
       
%> 
 
<section id="newsletter-1" class="section-padding back-size newsletter"> 
            <div class="container">
                <div class="row">
                	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                        <h2>Subscribe Our Newsletter</h2>
                        <p>Subscibe to receive our interesting updates</p>	
                              <form action="newsletterprocess.jsp" method="post">
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="email" style="color: red;" name="email" class="form-control input-lg" placeholder="Enter your email address" required/>
                                    <span class="input-group-btn"><button class="btn btn-lg" type="submit"><i class="fa fa-envelope"></i></button></span>
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
                            	<li><a href="https://www.facebook.com/Advance-Travelling-System-269088350674805/"><span><i class="fa fa-facebook"></i></span></a></li>
                            	<li><a href="https://twitter.com/AdvanceTravell1"><span><i class="fa fa-twitter"></i></span></a></li>
                                <li><a href="https://www.instagram.com/advancetravellingsystem"><span><i class="fa fa-instagram"></i></span></a></li>
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
        <script src="js/jquery.colorpanel.js"></script>

 <script src="https://previews.envatousercontent.com/files/259064878/paradise/js/a.js"></script>
 <script src="https://previews.envatousercontent.com/files/259064878/paradise/js/b.js"></script>
 <script src="https://previews.envatousercontent.com/files/259064878/paradise/js/c.js"></script>
 <script src="https://previews.envatousercontent.com/files/259064878/paradise/js/d.js"></script>
        <!-- Page Scripts Ends -->
      
    </body>
</html>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
   
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
  
       
%>
<jsp:include page="header.jsp"></jsp:include>

    <head>
        <title>Contact Us</title>
        <link href="css/contactmsg.css" rel='stylesheet' type='text/css' />
    	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script> 
        <script>
        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
    </head>
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
 #contact-form-2 form input, #contact-form-2 textarea {
    border-radius: 0px;
    box-shadow: none;
    background: #f2f2f2;
    border: 0px;
    width: 423px;
}
 
        </style>
  
        <!--===== INNERPAGE-WRAPPER ====-->
        <section class="innerpage-wrapper">
        	<div id="contact-us-2">

                <div class="map">
                    <iframe src= "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3670.178216959222!2d72.53211221444344!3d23.090571019578707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e833af6f39347%3A0xf1db9065daea7008!2sSOCET!5e0!3m2!1sen!2sin!4v1551264130044" allowfullscreen></iframe>
                </div><!-- end map -->
        
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12">
                            
                            <div class="row">
                            	<div class="col-xs-12 col-sm-4"> 
                                	<div class="contact-block-2">  
                                    	<span class="border-shape-top"></span>                       
 						        		<span><i class="fa fa-map-marker"></i></span>
                                        <h4>Find us at</h4>
                                        <p>Silver Oak University, Ahmedabad.</p>
                                        <span class="border-shape-bot"></span>
                                	</div><!-- end contact-block-2 -->
                                </div><!-- end columns -->
                                
                                <div class="col-xs-12 col-sm-4"> 
                                	<div class="contact-block-2">   
                                    	<span class="border-shape-top"></span>                      
 						        		<span><i class="fa fa-envelope"></i></span>
                                        <h4>Email us at</h4>
                                        <p>99047dhaval@gmail.com</p>
                                        <span class="border-shape-bot"></span>
                                	</div><!-- end contact-block-2 -->
                                </div><!-- end columns -->
                                
                                <div class="col-xs-12 col-sm-4"> 
                                	<div class="contact-block-2">          
                                    	<span class="border-shape-top"></span>               
 						        		<span><i class="fa fa-phone"></i></span>
                                        <h4>Call us at</h4>
                                        <p>+91 7874277636</p>
                                        <span class="border-shape-bot"></span>
                                	</div><!-- end contact-block-2 -->
                                </div><!-- end columns -->
                            </div><!-- end row -->
                            
                            <div id="contact-form-2" class="innerpage-section-padding">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-lg-10 col-lg-offset-1" style="margin-bottom: -30px;">
                                        <div class="page-heading">
                                            <h2>Contact Us</h2>
                                            <hr class="heading-line" />
                                        </div>
                                        
                                        <div class="row">
                                           
                                            <div class="col-xs-12 col-sm-6">
                                            
                                                    
                <div class="content-bottom">
                        <form action="messageprocess.jsp" method="post">
				<div class="field name-box">
					<input type="text" name="name" id="name" placeholder="Your Name here" required/>
					<label for="name">Name</label>
				</div>
				<div class="field email-box">
					<input type="text" name="phone" id="name" placeholder="Enter Mobile Number" onkeypress="return isNumber(event)" maxlength="10" required />
					<label for="phone">Phone</label>
				</div>
				<div class="field msg-box">
 					<input type="text" name="msg" id="email" placeholder="Enter Your Message....." required />
					<label for="msg">Msg</label>
				</div>
                                <div class="text-centerr">
                                    <button class="btn btn-orange" type="submit" value="Send" style="margin-top: 0px; width: 100%; height: 48px; padding-top: 8px;">Send</button>
                                  </div>
 			</form>
		</div>
                                                
                                             
                                            </div>
                                            
                                        </div>
                                        
                                    </div>
								</div>
                            </div>
                        </div><!-- end columns -->
                    </div><!-- end row -->
                </div><!-- end container -->   
            </div><!-- end contact-us -->
        </section><!-- end innerpage-wrapper -->
   <%

if(request.getParameter("st")!=null)
   {
    %>
    <script>
    alert("Your Message is successfully Submited.");
    </script>
    
    <%
    
}
 
     %> 	 
		
         
<script src="js/jquery-2.2.3.min.js"></script>
    <jsp:include page="footer.jsp"></jsp:include>

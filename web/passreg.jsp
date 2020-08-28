<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
     
%>
<jsp:include page="header.jsp"></jsp:include>

    <head>
        <title src="images/favicon.png">Index</title>
        
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
 
 .btn-orange, .btn-orange:focus {
   
  }
</style> </head>
     
        
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
                                                         <a class="btn btn-orange" style="margin-top: 15px; width: 300px; height: 55px; padding-top: 17px; font-size: large; text-align: -webkit-center;" href="signup.jsp">Fresh Application</a>
                                                         <a class="btn btn-orange" style="margin-top: 15px; width: 300px; height: 55px; padding-top: 17px; font-size: large; text-align: -webkit-center;" href="login.jsp">Renewal Application</a>
                                                    </div>
                                                </form>
                                            
                                            </div>
                                            
                                        </div>
                                        
                                    </div>      </div>
                                        
                                    </div>  
        
        
        
 <jsp:include page="footer.jsp"></jsp:include>

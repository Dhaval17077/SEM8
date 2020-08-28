 <%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
 
Statement statement = null;
 
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
 
       
%> 

<jsp:include page="header.jsp"></jsp:include>

<html ng-app="plunker">

<head>
        <title src="images/favicon.png">Feedback</title>
   
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
 .thank-you-note:before {
    content: '\f087 ';
    font-family: "FontAwesome";
    position: absolute;
    top: -27px;
    left: 220px;
    font-size: 130px;
    z-index: -1;
}
.rating {
    float:left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:1em;
    padding:0 .1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: '★ ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}
body:not(.modal-open){
  padding-right: 0px !important;
}
 </style> </head>
 
    
      <br><br><br><br><br>  
     <center>   
   <div class="dashboard-content booking-trips" style="padding-top: 12px;">
                                              
                                             <div id="thank-you" class="innerpage-section-padding" style="padding-top: 70px;">
                                                
                                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 content-side" style="padding-left: 50px; width: 97%;">
                        	<div class="space-right">
                                    <div class="thank-you-note" style="border-bottom: 0px solid #e6e6e6;">
                                    <h3>Your Ticket is Successfully Booked. Thank You !!!</h3>
                                    <p>Please! Check Your E-mail.</p>
                                    <button href="#" class="btn btn-orange" data-toggle="modal" data-target="#edit-profile">Give Feedback</button>
                                </div><!-- end thank-you-note -->
                                </div>
                                    </div> 
                    </div>  </div> </center> 
    <br><br><br><br><br><br><br><br><br>      
  
     
 <div id="edit-profile" class="modal custom-modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 class="modal-title">Fill Details</h3>
                    </div><!-- end modal-header -->
                    
                    <div class="modal-body">
                        <form action="feedbackprocess.jsp" method="post">
                        	<div class="form-group">
                        		<label>Your Name</label>
                                        <input type="text" name="name" class="form-control" placeholder="Name" required=""/>
                                </div><!-- end form-group -->
                            
                        	<div class="form-group">
                        		<label>Your Photo (Optional)</label>
                                        <input type="file" name="photo" class="form-control"/>
                                </div><!-- end form-group -->
  
                           <div class="rating">
    <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Rocks!">5 stars</label>
    <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Pretty good">4 stars</label>
    <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="good">3 stars</label>
    <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Kinda bad">2 stars</label>
    Give Rating<input type="radio" id="star1" name="rating" value="1" required=""/><label for="star1" title="Sucks big time">1 star</label>
                                  </div> <br> <br> <br>
                                <div class="form-group">
                        		<label>Message</label>
                                        <input type="msg" name="msg" class="form-control" placeholder="Message" required=""/>
                                </div><!-- end form-group -->
                            
                            <button class="btn btn-orange" type="submit">Send</button>
                        </form>
                    </div><!-- end modal-bpdy -->
                </div><!-- end modal-content -->
            </div><!-- end modal-dialog -->
        </div><!-- end edit-profile -->
                
  <jsp:include page="footer.jsp"></jsp:include>
    
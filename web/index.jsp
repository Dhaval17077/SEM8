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
#x_009_testimonial {
margin-top: 61px;
    position: relative;
    background: #3c3c3c;
    margin-bottom: -61px;
}
 
</style> 
       
        
		<!--========================= FLEX SLIDER =====================-->
        <section class="flexslider-container" id="flexslider-container-1">

            <div class="flexslider slider" id="slider-1">
                <ul class="slides">
                    
     
                    <li class="item-1" style="background:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(img/bg1.jpg) 50% 0%; background-size:cover; height:73%;">
                        <div class=" meta">         
                            <div class="container">
                                <h2>Advance <br> Travelling System</h2>
                            </div><!-- end container -->  
                        </div><!-- end meta -->
                    </li><!-- end item-2 -->
                   <!-- <li class="item-1" style="background:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(images/cover-testimonials.jpg) 50% 0%; background-size:cover; height:73%;">
                        <div class=" meta">         
                            <div class="container">
                                <h2>Advance Travelling System</h2>
                            </div> 
                        </div> 
                    </li> 
                    <li class="item-1" style="background:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(images/error-page-2.jpg) 50% 0%; background-size:cover; height:73%;">
                        <div class=" meta">         
                            <div class="container">
                                <h2>Advance Travelling System</h2>
                            </div> 
                        </div> 
                    </li><!-- end item-2 -->
                   
                </ul>
            </div><!-- end slider -->
            
        </section><!-- end flexslider-container -->
        
        
 <section class="aboutus-sectionnn spad">
        <div class="container">
            <div class="row">
                     <div class="about-text">
                      <div class="page-heading">
                          <h2>Why <span style="color: #faa61a;">Choose</span> Us?</h2>
            <hr style="border-color: #faa61a; border-width: medium; margin-inline-start: 518px; width: 130px;" />
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
        
<section id="best-features" class="banner-padding orange-features">
            <div class="container">
                <div class="row">
                             
                    <div class="col-md-6 col-md-3">
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
                        	<h2>Some <span style="color: #faa61a;">Fun</span> Facts</h2>
            <hr style="border-color: #faa61a; border-width: medium; margin-inline-start: 546px; width: 80px;" />
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
 
                                                                                                                                                                             
String query4 = "select * from booking"; 
rs3=statement3.executeQuery(query4);
      int count2=0; 
while(rs3.next())
    {
    count2++;
    }
 %>							
<%      out.println(count2);
%></span>
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
        
<div id="x_009_testimonial" class="carousel slide x_009_testimonial_control_button three_coloumns swipe_x ps_easeOutInCubic" data-ride="carousel" data-pause="hover" data-interval="8000" data-duration="2000">
 	<div class="x_009_testimonial_header">
             <h1>what<span style="color: #faa61a">Our clients</span>Say</h1> 
            <hr style="border-color: #faa61a; border-width: medium; margin-inline-start: 362px; width: 186px;" />

 	</div>
   	<div class="carousel-inner" role="listbox">
  		<div class="item active"> 
  			<%
Statement statement5 =null;
ResultSet rs5 =null;
statement5 = connection.createStatement();
String sql3="select * from  feedback order by f_id desc limit 3";
rs5=statement5.executeQuery(sql3);
while(rs5.next())
    {
        
%>

<div class="col-xs-12 col-sm-4 col-md-4">
	<div class="x_009_testimonial_wrapper">
		<div class="x_009_testimonial_content x_009_testimonial_content_gold">
			<p>"<%out.println(rs5.getString("msg"));%>"</p>
		</div>
		<div class="x_009_testimonial_image">
<%
      if(rs5.getString("photo")!=null)
        {
            %>                    
			<img src="admin/img/<%out.println(rs5.getString("photo"));%>" alt="bootstrap testimonial box">

<%
        }
    else 
            {
%>
			<img src="admin/img/fr-02.jpg" alt="bootstrap testimonial box">


<%}
String type=rs5.getString("rating");  
      if(type.equals("1"))
        {
            %>
                                     <a href="#"><div class="rating">
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                    </div></a>
<%
        }
    else if(type.equals("2"))
            {
%>                             
                                    <a href="#"><div class="rating">
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                    </div></a>
<%
        }
    else if(type.equals("3"))
            {
%>                             
                                    <a href="#"><div class="rating">
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                    </div></a>                        
<%
        }
    else if(type.equals("4"))
            {
%>                             
                                    <a href="#"><div class="rating">
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star lightgrey"></i></span>
                                    </div></a>   
<%
        }
    else if(type.equals("5"))
            {
%>                             
                                    <a href="#"><div class="rating">
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                        <span><i class="fa fa-star orange"></i></span>
                                    </div></a>   
<%}%>
                        
                        <a href="#"><%out.println(rs5.getString("name"));%></a>
		
                        
                        
                        
                </div>
	</div>
</div>
 <%}%>
</div> 
</div>
</div>             
         
  
        <!--================ LATEST BLOG ==============-->
        <section id="latest-blog" class="section-padding">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-12">
                    	<div class="page-heading">
                        	<h2>Our <span style="color: #faa61a;">Latest</span> Blogs</h2>
            <hr style="border-color: #faa61a; border-width: medium; margin-inline-start: 492px; width: 120px;" />
                        </div>
                        
                        <div class="row">
   			<%
Statement statement6 =null;
ResultSet rs6 =null;
statement6 = connection.createStatement();
String sql4="select * from  blog order by blog_id desc limit 3";
rs6=statement6.executeQuery(sql4);
while(rs6.next())
    {
        
%>                       	
                             <div class="col-sm-6 col-md-4">
                                <div class="main-block latest-block">
                                    <div class="main-img latest-img">
               <img src="admin/img/<%out.println(rs6.getString("b_photo"));%>" style="height: 200px;" class="img-responsive" alt="blog-img" />
                                     </div><!-- end latest-img -->
                                    
                                    <div class="latest-info">
                                    	<ul class="list-unstyled">
                                        	<li><span><i class="fa fa-calendar-minus-o"></i></span><%out.println(rs6.getString("b_date"));%><span class="author">by: <%out.println(rs6.getString("b_name"));%></span></li>
                                        </ul>
                                    </div><!-- end latest-info -->
                                    
                                    <div class="main-info latest-desc">
                                    	<div class="row">
                                        	<div class="col-xs-10 col-sm-10 main-title">
                                                    <a href="#"><%out.println(rs6.getString("b_h_name"));%></a>
                                                <p><%out.println(rs6.getString("b_des"));%></p>
                                            </div><!-- end columns -->
                                        </div><!-- end row -->
                                      </div><!-- end latest-desc -->
                                </div><!-- end latest-block -->
                            </div><!-- end columns -->
<%}%>                       	
                      </div><!-- end row -->
                       
                    </div><!-- end columns -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end latest-blog -->         

        
<jsp:include page="footer.jsp"></jsp:include>
        
       
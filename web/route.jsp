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
<jsp:include page="header.jsp"></jsp:include>
 
    <head>
        <title src="images/favicon.png">Route</title>
 
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
.custom-modal .modal-body .razorpay-payment-button{
    height: 42px;
    width: 170px;
    background: #faa61a;
    font-weight: bolder;
    color: white;
 }
body:not(.modal-open){
  padding-right: 0px !important;
}
 </style> </head>
   
        <section class="flexslider-container" id="flexslider-container-1" style="height: 300px;">

            <div class="flexslider slider" id="slider-1">
                <ul class="slides">
                    
     
                   <li class="item-1" style="background:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(img/bg1.jpg) 50% 0%;
	background-size:cover;
	height:33%;">
                        
                    </li><!-- end item-2 -->
                   
                </ul>
            </div><!-- end slider -->
            
            <div class="search-tabs" id="search-tabs-1">
            	<div class="container">
                    <div class="row">
                        <div class="col-sm-12" style="width: 660px; left: 250px; top: 121px;">
                        
                            <ul class="nav nav-tabs center-tabs">
                                <li class="active"><a href="#" data-toggle="tab"><span><i class="fa fa-bus"></i></span><span class="st-text">Modify Search</span></a></li>
                                
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
Statement statement10 =null;
ResultSet rs10 =null;
 
statement10 = connection.createStatement();
String query10 = "Select * from tbl_area";
rs10=statement10.executeQuery(query10);
out.println(query10);

while(rs10.next())
    {
        
            %>
            <option value="<% out.println(rs10.getInt("area_id"));   %>"><% out.println(rs10.getString("area_name"));   %></option>
            <%
            }
rs10.close();
statement10.close();
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
Statement statement11 =null;
ResultSet rs11 =null;
statement11 = connection.createStatement();
String query11 = "select * from tbl_area";
rs11=statement11.executeQuery(query11);
out.println(query11);

while(rs11.next())
    {
        
           %>
            <option value="<% out.println(rs11.getInt("area_id"));   %>"><% out.println(rs11.getString("area_name"));   %></option>
            <%
            }
//out.print(rs11);
rs11.close();
statement11.close();
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
  
  <h3 style="text-align: center">    
           Result! As Per your choice...
                        </h3>
 
 <table align="center">
                  <thead>
                  <th colspan="3">  
                  <%
String snameid=request.getParameter("s1");
String type1="";
String query = "Select * from tbl_area where  area_id='"+snameid+"'";
rs=statement.executeQuery(query);

while(rs.next())
    {
        %>
        <i class="fa fa-circle" style="color: blue;"></i>
        <%
        out.println("From :");

      type1 =rs.getString("area_name");  
    
out.println(type1);
    }
%>

<br>

<%
String dnameid=request.getParameter("d1");
String type2="";
String query1 = "Select * from tbl_area where  area_id='"+dnameid+"'";

rs=statement.executeQuery(query1);

while(rs.next())
    {
         %>
        <i class="fa fa-circle" style="color: red;"></i>
        <%
        out.println("To :");

      type2=rs.getString("area_name");  
    
out.println(type2);
    }
 

%>
                    
                   </th>
                   <th>
                       
                   </th>
  </thead><thead>
       <th>
                      In Between Station
                  </th>
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
            + " where area_id_s>='"+ssid+"' and area_id_d <='"+desid+"' order by tbl_route.route_id";

    rs21=statement.executeQuery(sql12);
  //  out.println(sql12);
 while(rs21.next())
    {
       
      %>
     
       <td>
          <%out.println(rs21.getString("area_name"));%>
      </td>
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
           %>
          
          
          <th>Ticket Price: </th><td colspan="2">
<%
int count=0;
String snameiid=request.getParameter("s1");
String dnameiid=request.getParameter("d1");
String query111 = "Select * from tbl_area where area_id >'"+snameiid+"' and area_id <='"+dnameiid+"'";

rs1=statement.executeQuery(query111);
while(rs1.next())
    { 
      count=count+3;

      }
 out.println(count);
rs1.close();
        
%>
</td>                                        
            
                              </table>
<br>             
<br>             

    <center> <div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 search-btn" style="width: 200px; margin-left: 580px;">
            <button class="btn btn-orange" data-toggle="modal" data-target="#edit-profile" type="submit"> Book Ticket</button>
             <!--   <a href="route.jsp?am=<%out.println(count);%>&&s=<%out.println(type1);%>&&d=<%out.println(type2);%>">
                </a> -->
        </div><!-- end columns --></center>
 
                
                
          <div id="edit-profile" class="modal custom-modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 class="modal-title">Passenger Details</h3>
                    </div><!-- end modal-header -->
                    
                    <div class="modal-body">
                        <form action="payprocess.jsp" method="POST">
                        	<div class="form-group">
                        		<label>Your Name</label>
                    <input type="text" name="name" class="form-control" placeholder="Enter Your Name" required/>
                                </div><!-- end form-group -->
               
                            <div class="form-group">
                        		<label>Your Phone</label>
                            	<input type="text" name="mon" class="form-control" placeholder="Enter Your Mobile No." required/>
                            </div><!-- end form-group -->
							
                            <div class="form-group">
                        		<label>Your Email</label>
                            	 <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required/>
                            </div><!-- end form-group -->
                            
                            <div class="form-group">
                        		<label>Total Fare</label>
                            	<input type="text" class="form-control" placeholder="<%
 ////String am=request.getParameter("count");
// int pr=Integer.parseInt(am);
out.println(count);%>" readonly="" />
                            </div><!-- end form-group -->

<script
    src="https://checkout.razorpay.com/v1/checkout.js"
    data-key="rzp_test_ws6boXMEJ1eOhd" // Enter the Key ID generated from the Dashboard
    data-amount="<%out.println(count*100);%>" 
    data-currency="INR"
  
    data-buttontext="BOOK NOW"
    data-name="Booking Fare"
    data-description="ebuy online"
    data-image=""
    data-prefill.name="Shivam"
    data-prefill.email="hotmail4vivek@gmail.com"
    data-prefill.contact="8530302099"
    data-theme.color="#F37254"
></script>
<input type="hidden" custom="Hidden Element" name="hidden" value="<%out.println(count);%>">
<input type="hidden" custom="Hidden Element" name="hidden1" value="<%out.println(type1);%>">
<input type="hidden" custom="Hidden Element" name="hidden2" value="<%out.println(type2);%>">
  
  
                         </form>
                    </div><!-- end modal-bpdy -->
                </div><!-- end modal-content -->
            </div><!-- end modal-dialog -->
        </div><!-- end edit-profile -->
        
        
        
        
        
<br><br><br><br><br>        
 <jsp:include page="footer.jsp"></jsp:include>

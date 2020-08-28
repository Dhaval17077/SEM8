<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
%>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
    <script src="https://files.codepedia.info/files/uploads/iScripts/html2canvas.js"></script> 

    <style>
        body {
			background-color: #d7d6d3;
			font-family:'verdana';
		}
		.id-card-holder {
			width: 320px;
		    padding: 4px;
		    margin: 0 auto;
		    background-color: #1f1f1f;
		    border-radius: 5px;
		    position: relative;
		}
		.id-card-holder:after {
		    content: '';
		    width: 7px;
		    display: block;
		    background-color: #0a0a0a;
		    height: 100px;
		    position: absolute;
		    top: 105px;
		    border-radius: 0 5px 5px 0;
		}
		.id-card-holder:before {
		    content: '';
		    width: 7px;
		    display: block;
		    background-color: #0a0a0a;
		    height: 100px;
		    position: absolute;
		    top: 105px;
		    left: 310px;
		    border-radius: 5px 0 0 5px;
		}
		.id-card {
			
			background-color: #fff;
			padding: 10px;
			border-radius: 10px;
			text-align: center;
			box-shadow: 0 0 1.5px 0px #b9b9b9;
		}
		.id-card img {
			margin: 0 auto;
		}
		.header img {
			width: 100px;
    		margin-top: 15px;
		}
		.photo img {
			width: 110px;
    		margin-top: 15px;
		}
		h2 {
			font-size: 15px;
			margin: 5px 0;
		}
		h3 {
			font-size: 12px;
			margin: 2.5px 0;
			font-weight: 300;
		}
		.qr-code img {
			width: 50px;
		}
		p {
			font-size: 14px;
			margin: 2px;
                        
		}
		.id-card-hook {
			background-color: #000;
		    width: 70px;
		    margin: 0 auto;
		    height: 15px;
		    border-radius: 5px 5px 0 0;
		}
		.id-card-hook:after {
			content: '';
		    background-color: #d7d6d3;
		    width: 47px;
		    height: 6px;
		    display: block;
		    margin: 0px auto;
		    position: relative;
		    top: 6px;
		    border-radius: 4px;
		}
		.id-card-tag-strip {
			width: 45px;
		    height: 40px;
		    background-color: #0950ef;
		    margin: 0 auto;
		    border-radius: 5px;
		    position: relative;
		    top: 9px;
		    z-index: 1;
		    border: 1px solid #0041ad;
		}
		.id-card-tag-strip:after {
			content: '';
		    display: block;
		    width: 100%;
		    height: 1px;
		    background-color: #c1c1c1;
		    position: relative;
		    top: 10px;
		}
		.id-card-tag {
			width: 0;
			height: 0;
			border-left: 100px solid transparent;
			border-right: 100px solid transparent;
			border-top: 100px solid #0958db;
			margin: -10px auto -30px auto;
		}
		.id-card-tag:after {
			content: '';
		    display: block;
		    width: 0;
		    height: 0;
		    border-left: 50px solid transparent;
		    border-right: 50px solid transparent;
		    border-top: 100px solid #d7d6d3;
		    margin: -10px auto -30px auto;
		    position: relative;
		    top: -130px;
		    left: -50px;
		}
    </style>
    </head>

<jsp:include page="header.jsp"/>

<section id="main-content">
      <section class="wrapper">
<div class="row mt">
          <div class="col-md-12">
            <div class="content-panel">
              <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>Generate Pass</h4>
                <hr>
<%
 
//String accid=request.getParameter("accid");
String sql1="select * from tbl_doc where application_no="+request.getParameter("docid")+" and doc_type='Profile Photo' ";
//out.println(sql1);
rs2=statement.executeQuery(sql1);
while(rs2.next())
    {
        
%> 
                 <div class="id-card-tag"></div>
	<div class="id-card-tag-strip"></div>
	<div class="id-card-hook"></div>
        <div class="id-card-holder" id="html-content-holder">
            <div class="id-card" style="color: black;">
			 
			<div class="photo">
             <img src="img/<%out.println(rs2.getString("doc_name"));%>" alt=""  margin-left="210" height="100" width="120"></img>
			</div>
                 
                
<%
    }
String sql="select * from passreg  inner join payment on passreg.application_no=payment.application_no where passreg.application_no="+request.getParameter("docid")+" and passreg.pass_type='Studentpass' ";
rs1=statement.executeQuery(sql);
if(rs1.next())
    {
        
%>
                                                
 			<h3><% out.println(rs1.getString("name"));%>(<% out.println(rs1.getString("application_no"));%>)</h3>
                        <p style="text-align: center;">College Name: <% out.println(rs1.getString("sc_name"));%></p>

			<!--<div class="qr-code">
				<img src="https://www.shopify.com/growth-tools-assets/qr-code/shopify-faae7065b7b351d28495b345ed76096c03de28bac346deb1e85db632862fd0e4.png">
                        </div>&nbsp;-->
                        <p style="text-align: center;">Data-of-Birth: <% out.println(rs1.getString("dob"));%></p>
                         <h5><b>ISSUE: </b><% out.println(rs1.getString("date"));%> <b>EXPIRIES: </b><% out.println(rs1.getString("ex_date"));%></h5>
			<hr>
                        <p style="text-align: justify;"><strong>Address: </strong><% out.println(rs1.getString("r_address"));%></p>
                        <p style="text-align: justify;">Ph: <% out.println(rs1.getString("mnumber"));%></p>
                        <p style="text-align: justify;">E-mail: <% out.println(rs1.getString("email"));%></p>

		</div>
	</div>
        
        
  
 
               <tbody>
                 
                                           
                                           
    <%}%>

 
  </tbody>
              </table>
            </div>
 </div>
         </div>                                                
                                                    &nbsp;&nbsp;&nbsp;
                                                    <form class="contact-form php-mail-form"><br><br>
                 <div class="form-send">
                <button id="btn-Preview-Image" type="button" value="Preview" class="btn btn-large btn-primary">PREVIEW</button>
                <button class="btn btn-large btn-primary"><a id="btn-Convert-Html2Image" href="#">Download</a></button>
                 </div>
                                              </form>
               
      </section>
    </section>
 <h3>Preview :</h3> 
 <div id="previewImage" name="passimg" style="text-align: center; margin-left: 216px; margin-top: -30px;"></div>
 <br>
 <br>
<script> 
		$(document).ready(function() { 
		
			// Global variable 
			var element = $("#html-content-holder"); 
		
			// Global variable 
			var getCanvas; 

			$("#btn-Preview-Image").on('click', function() { 
				html2canvas(element, { 
					onrendered: function(canvas) { 
						$("#previewImage").append(canvas); 
						getCanvas = canvas; 
					} 
				}); 
			}); 

			$("#btn-Convert-Html2Image").on('click', function() { 
				var imgageData = 
					getCanvas.toDataURL("image/png"); 
			
				// Now browser starts downloading 
				// it instead of just showing it 
				var newData = imgageData.replace( 
				/^data:image\/png/, "data:application/octet-stream"); 
			
				$("#btn-Convert-Html2Image").attr( 
				"download", "Pass.png").attr( 
				"href", newData); 
			}); 
		}); 
	</script>
<jsp:include page="footer.jsp"></jsp:include>
 
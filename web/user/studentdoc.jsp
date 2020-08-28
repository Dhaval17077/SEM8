 <!DOCTYPE html>
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
Statement statement2 = null;
ResultSet rs = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
%>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>
<html lang="en">
 <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  
  <link href="libadmin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="libadmin/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="libadmin/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="libadmin/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="libadmin/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="libadmin/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="https://templatemag.com/" />
   <link href="cssadmin/style.css" rel="stylesheet">
  <link href="cssadmin/style-responsive.css" rel="stylesheet">
  <style>
      .form-panell {
     margin: 10px;
    padding: 10px;
    text-align: left;
}
.form-horizontal.style-form .form-group {
    border-bottom: 0px solid #eff2f7;
    padding-bottom: 15px;
    margin-bottom: 15px;
}
 
.form-horizontal .control-label {
      font-size: 17px;
    padding-top: 2px;
    margin-bottom: 0;
    text-align: right;
}
  </style> 
</head>

<jsp:include page="header.jsp"></jsp:include>
 
<body> 
 <div class="tab-content">
                                	<div id="dsh-dashboard" class="tab-pane in active fade">   
<div class="dashboard-content booking-trips">
                                		<h2 class="dash-content-title">Pass Application Documents You have to Upload!</h2>
                                        <div class="dashboard-listing booking-listing">
                                        	<div class="dash-listing-heading">
                                                <div class="custom-radio">
                            <%String appno1=request.getParameter("st");%>
                                                     <input type="radio" id="radio01" name="radio" checked/>
                                                    <label for="radio01"><span></span>Upload Documents for Application No : <%out.println(appno1);%></label>
                                                </div><!-- end custom-radio -->
                                               </div>
                                        
 <% 

String appn=(String)session.getAttribute("appli"); 
int count=0;
String sql1="select * from  tbl_doc where application_no='"+appn+"' and pass_type='Studentpass'";
rs1=statement.executeQuery(sql1);
while(rs1.next())
    {
        count++;
   }
%>
  <form action="studentdocprocess.jsp" class="form-horizontal style-form" method="post">
   <section id="container">
      <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panell">
                 <div class="form-group last">

                     <table class="table table-hover" style="margin-top: -25px; margin-bottom: 17px;">
    <tbody>
        <tr style="background:#faa61a9e">
            <td>   
            <%if(count<3)
            {
                %>
    <center><span style="color: red">Some Document is Missing Please Upload all Documents!!</span></center>
                <%
             }
            else
            {
                %>
               <center> <span style="color: green">Your Documentation Process is complete. Wait for Verification!!</span> </center>
            <%
            } 
            %>
     </td>
               
        </tr>      
  </tbody>
</table>
                     <label class="control-label col-md-3" style="margin-left: 264px">Upload Your Documents :</label>
                   <select style="width:200px; height: 32px; font-size: 15px;" name="selectname" id="passTypeId" required>
                                                    <option value="0">-Select Document-</option>
 
                                                    <option value="Profile Photo">Profile Photo</option>
                                                    <option value="ID Card">ID Card</option>
                                                    <option value="Fee Reciept">Fee Reciept</option>
 </select> 
 
                     <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" style="width: 190px; margin-top:18px; margin-left: 442px; height: 160px;">
                        <img src="../../../../www.placehold.it/200x150/EFEFEF/AAAAAA%26text%3dno%2bimage.png" alt="" />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="margin-top:18px; width: 190px; margin-left: 442px; height: 160px; line-height: 20px;"></div>
                      <div>
                          <span class="btn btn-theme02 btn-file" style="margin-left: 475px; margin-top: 20px;">
                         <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change image</span>
                        <input type="file" name="file" class="default" required/>
                        </span>
                          <br>
                          <a href="" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload" style="margin-left: 490px; margin-top: 20px;"><i class="fa fa-trash-o"></i> Remove</a>
                      </div>
                    </div>
                     
                  </div>
                </div>
                 
            </div>
           </div>
   <button class="btn btn-orange" type="submit" style="width: 150px; margin-top: -30px; margin-bottom: 20px; margin-left: 468px; height: 40px;">Next</button> 
    </section></form>
</div> 
 </div>
                                        </div></div>
                                                
                                                <div class="tab-content">
                                                    <div id="dsh-dashboard" class="tab-pane in active fade" style="border: 0px solid #e6e7e8;">
   <div class="dashboard-content booking-trips" style="margin-top: 60px">
                                         <div class="dashboard-listing booking-listing">
                                        	<div class="dash-listing-heading">
                                                <div class="custom-radio">
                                                    <input type="radio" id="radio02" name="radio" checked/>
                                                    <label for="radio02"><span></span>Your Documents</label>
                                                </div><!-- end custom-radio -->
                                               </div>
                                             <table class="table table-hover" >
                                                    <tbody>
                                                        <tr style="background:#faa61a">
                      
                      <th>Account No.</th>
                      <th>Application No.</th>
                      <th>Document</th>                    
              	      <th>Document Name </th>                   
                      <th>Pass Type</th>
                      <th>Delete</th>
                     
                     
                  </tr>
<% 
 
String sql="select * from  tbl_doc where application_no='"+appn+"' and pass_type='Studentpass' ";
rs=statement.executeQuery(sql);
while(rs.next())
    {
       
%>                                             
<tr>
    <td> <% out.println(rs.getString("account_id"));%> </td>
    <td> <% out.println(rs.getString("application_no"));%> </td>
                                                           
    <td>   <img class="img-responsive" src="../admin/img/<%out.println(rs.getString("doc_name"));%>" alt="" style="height:160px; width: 190px"> </td>
 
      <td>     <% out.println(rs.getString("doc_type"));%> </td>

       <td>    <% out.println(rs.getString("pass_type"));%> </td>

       <td>    <a href="deletedoc.jsp?docid=<% out.println(rs.getString("doc_id"));%>">
               <button class="btn btn-danger btn-xs" style="width: 40px; height: 40px;"><i class="fa fa-trash-o "></i></button>
        </td>
        
</tr>

 <%}%>
                                   </tbody>
        
                                             </table>
                                       </div>
   </div>  </div></div>   
                                                           
    <jsp:include page="footer.jsp"></jsp:include>

 
   <script src="libadmin/jquery/jquery.min.js"></script>
  <script src="libadmin/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="libadmin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="libadmin/jquery.scrollTo.min.js"></script>
  <script src="libadmin/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="libadmin/common-scripts.js"></script>
   <script src="libadmin/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="libadmin/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="libadmin/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="libadmin/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="libadmin/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="libadmin/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="libadmin/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="libadmin/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="libadmin/advanced-form-components.js"></script>

  <script>if( window.self == window.top ) { (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-55234356-6', 'auto'); ga('send', 'pageview'); } </script>
 

<jsp:include page="header.jsp"></jsp:include>
<head>
    <style>
        .custom-modal .modal-body input {
    box-shadow: none;
    background: #dadada;
    border: 0px;
}
    </style>
</head>
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
Statement statement1 = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
ResultSet rs3 = null;
ResultSet rs4 = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String app="";
int accno=(Integer)session.getAttribute("accid"); 

%>
 <div class="tab-content">
                                	<div id="dsh-dashboard" class="tab-pane in active fade">
 <div class="dashboard-content booking-trips">
                                		<h2 class="dash-content-title">Pass Application You have Applied!</h2>
                                        <div class="dashboard-listing booking-listing">
                                        	<div class="dash-listing-heading">
                                                <div class="custom-radio">
                                                    <input type="radio" id="radio01" name="radio" checked/>
                                                    <label for="radio01"><span></span>Pass Application Payment</label>
                                                </div><!-- end custom-radio -->
                                        </div>  
</div>     
 
 <div class="dashboard-listing booking-listing">   
                                        <div class="table-responsive">
                                            <form action="payprocess.jsp" method="post">
 <%
String sql3="select * from  payment  where application_no='"+app+"'";
rs4=statement.executeQuery(sql3);
if(rs4.next())
    {
 %>                                               
                                                <table class="table table-hover">
                                                    <tbody>
                                        <tr class="firstrow">
                                            <th width="50%" style="font-size: 17px; padding-left: 328px; padding-top: 25px;"> Enter Your Application ID : </th>
                                            <td width="23%" style="padding-top: 23px; padding-bottom: 20px;">
                                                <input type="text" name="appnu" maxlength="8" style="width:200px" id="pincode" required></td>
                                            <th></th></tr></tbody></table>  
                                                
                                            
                                            <table class="table table-hover">
                                                    <tbody> <tr class="firstrow">
                                                    <button class="btn btn-orange" style="width: 150px; height: 40px; margin-left: 480px;">Next</button>
 
                                            
          <%}%>                              </tr></tbody></table>                                            
     </form>
                                               
 <% if(request.getParameter("st1")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st1")%>";
       alert("Successfull...");     
    </script> 
    
<% } %>

    <% if(request.getParameter("fail")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("fail")%>";
       alert("Application Number Does not match!!!");     
    </script> 
    
<% } %>   
           </div></div>  </div></div>  </div>                                          
                                                      
<jsp:include page="footer.jsp"></jsp:include>

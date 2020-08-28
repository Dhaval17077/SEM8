<jsp:include page="header.jsp"></jsp:include>

<head>
    <style>
        .invoices td.invoice-text .invoice-info li.blue{
	color:#0007d4;
}
.invoices td.invoice-text .invoice-info li.orange{
	color:#ff6a00;
}
.invoices td.invoice-text .invoice-info li.black{
	color:#000000;
}
.link{
    color: black;
    height: 28px;
    width: 100px;
    background-color: #faa61a;
    font-weight: bolder;
}
.invoices td.invoice-text .invoice-info li:after{
	background:#ffffff;
}   
    </style>
</head>
        
                                        <div class="tab-content">
                                	<div id="dsh-dashboard" class="tab-pane in active fade">
                                    <div class="dashboard-content">
                                		<h2 class="dash-content-title">Pass History</h2>
                                        
                                                <div class="dashboard-listing invoices" style="margin-top: -14px">
                                   <div class="dashboard-listing recent-activity">

                                         <div class="table-responsive">
                                         <table class="table table-hover" >
                                                    <tbody>
                                                        <tr style="background:#faa61a">
                      
                      <th>Application No.</th>
                      <th>  Name</th>                    
              	      <th>   Pass Type </th>                   
                       <th>  Document</th>
                      <th>  Payment</th>
                      <th>  Your Pass</th>
                     
                     
                     
                  </tr>
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
ResultSet rs5 = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String app="";
int accno=(Integer)session.getAttribute("accid"); 

String sql="select * from  passreg where account_id='"+accno+"'";
rs1=statement.executeQuery(sql);
while(rs1.next())
    {
       app=rs1.getString("application_no");  
%>     
 
                 
                  <tr>
                      <td class="dash-list-text invoice-text">
                          <ul class="list-unstyled list-inline invoice-info">
                              <li class="invoice-status black"> <% out.println(rs1.getString("application_no"));%></li>
                          </ul>
                      </td>
                    
                    <td class="dash-list-text invoice-text">
                        <ul class="list-unstyled list-inline invoice-info">
                            <li class="invoice-status black">  <% out.println(rs1.getString("name"));%></li>
                     </ul>
                    </td>
                    <td class="dash-list-text invoice-text">
                        <ul class="list-unstyled list-inline invoice-info">
                            <li class="invoice-status black">  <% out.println(rs1.getString("pass_type"));%></li>
                     </ul>
                    </td>
                    <% } %> 
                    
                   <td class="dash-list-text invoice-text">	
                    <ul class="list-unstyled list-inline invoice-info">
                 
<% 

int count=0;
int count1=0;

String id="";
String no="ab";
String sql1="select * from  tbl_doc  where application_no='"+app+"'";
rs2=statement.executeQuery(sql1);
while(rs2.next())
    {
        count++;
        id=rs2.getString("application_no");
    }

if(count<3)
            {
                %>
                        <li class="invoice-status red">Not Uploaded
 <button id="pay1" class="btn link"><a style="color: black;" href="docprocess.jsp?appn=<%out.println(app);%>">Upload</a></button></li><br>
<%
}
else
{
String sql2="select * from  passreg inner join tbl_doc on passreg.application_no=tbl_doc.application_no where passreg.application_no='"+app+"'";

rs3=statement.executeQuery(sql2);
while(rs3.next())
    {
    if(rs3.getString("reason")!=null)
            {
                %>
                        <li class="invoice-status black"><%out.println(rs3.getString("doc_type"));%> :</li>
                         <li class="invoice-status red">Rejected
  <button id="pay2" class="btn link"><a style="color: black;" href="docprocess.jsp?appn=<%out.println(rs3.getString("application_no"));%>">Re-Upload</a></button></li><br>                           
                      
                        <%
             } else if(rs3.getString("app_status")!=null)
             {
                 count1++;
            %>
             <li class="invoice-status black"><%out.println(rs3.getString("doc_type"));%> :</li>
                <li class="invoice-status green">Verified</li><br>
                        
                        <%
             }
                 else
             {
                        %>
                      <li class="invoice-status black"><%out.println(rs3.getString("doc_type"));%> :</li>
                        <li class="invoice-status blue">Verification Pending</li><br>
                  <%}}}%>
                     </ul>                  
                   </td>
   
                   <%
                    if(count1>=3)
                    {
                   %>
                    <td class="dash-list-text invoice-text">	
                     <ul class="list-unstyled list-inline invoice-info">
<%
String sql3="select * from  payment  where application_no='"+app+"'";
rs4=statement.executeQuery(sql3);
if(rs4.next())
    {
        if(rs4.getString("status")!=null)
        {
%>   
                          <li class="invoice-status green">Success</li><br>
                          <%}
        else
        {
                        %>
                         <li class="invoice-status red">Not Done 
 <button id="pay3" class="btn link"><a style="color: black;" href="payprocess.jsp?appnu=<%out.println(app);%>">Pay Now</a></button></li><br>
                        <%}}%>
                        
                   </ul>    
                    </td>
                    <%}
                    else
                    {
                        %>
                         <td class="dash-list-text invoice-text">	
                        <ul class="list-unstyled list-inline invoice-info">
                     <li class="invoice-status black">Not Aplicable</li><br>
                      </ul></td>
                    <%}%>
                    
                    
                    <td class="dash-list-text invoice-text">	
                        <ul class="list-unstyled list-inline invoice-info">
<%
String sql13="select * from  payment  where application_no='"+app+"'";
rs5=statement.executeQuery(sql13);
if(rs5.next())
    {
        if(rs5.getString("status")!=null)
        {
%>       
                <li class="invoice-status green">
 <button id="genpass" class="btn link"><a style="color: black;" href="genpass.jsp?appnu=<%out.println(app);%>">Download</a></button></li><br>
                        <% }
        else
                    {
        %>
                     
                     
                     <li class="invoice-status black">Under Process</li><br>
                      </ul></td>
                      
                    <%}}%>
                    
                    
                  <!--  <td class="dash-list-text invoice-text">	
                        <ul class="list-unstyled list-inline invoice-info">
                     <li class="invoice-status green">Active</li><br>
                      <li class="invoice-status red">Block
 <button id="pay5" class="btn link"><a style="color: black;" href="renewal.jsp">Renew</a></button></li><br>
                    </ul></td> -->
                  </tr>
       		 				  
                                         </tbody>
                                         </table>
                  
                                    </div>
                                    </div>
                                    </div>  
                          <!--   <div class="dashboard-listing invoices">
                                        	<h3 class="dash-listing-heading">Payment</h3>
                                            <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                                        <tr>
                                                            <td class="dash-list-icon invoice-icon"><i class="fa fa-bars"></i></td>
                                                            <td class="dash-list-text invoice-text">
                                                            	<h4 class="invoice-title">Professional Plan</h4>
                                                                <ul class="list-unstyled list-inline invoice-info">
                                                                	<li class="invoice-status red">Unpaid</li>
                                                                    <li class="invoice-order"> Order: #00214</li>
                                                                    <li class="invoice-date"> Date: 25/08/2017</li>
                                                                </ul>
                                                            </td>
                                                            <td class="dash-list-btn"><button class="btn btn-orange">View Invoice</button></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td class="dash-list-icon invoice-icon"><i class="fa fa-bars"></i></td>
                                                            <td class="dash-list-text invoice-text">
                                                            	<h4>Extended Plan</h4>
                                                                <ul class="list-unstyled list-inline invoice-info">
                                                                	<li class="invoice-status green">Paid</li>
                                                                    <li class="invoice-order"> Order: #00214</li>
                                                                    <li class="invoice-date"> Date: 25/08/2017</li>
                                                                </ul>
                                                            </td>
                                                            <td class="dash-list-btn"><button class="btn btn-orange">View Invoice</button></td>
                                                        </tr>
                                                       
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div><!-- end invoices -->
                                    </div></div></div><!-- end columns -->
                                    
                               
<jsp:include page="footer.jsp"></jsp:include>
        
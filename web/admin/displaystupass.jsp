 <%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
ResultSet rs3 = null;
ResultSet rs5 = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>


<jsp:include page="header.jsp"/>



<section id="main-content">
      <section class="wrapper">
<div class="row mt">
          <div class="col-md-12">
            <div class="content-panel">
              <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i> Pass Applications</h4>
                <hr>
                
                
<%

String sql="select * from passreg where application_no="+request.getParameter("accid")+" and pass_type='Studentpass' ";
rs1=statement.executeQuery(sql);
if(rs1.next())
    {
        
%>  
 
               <tbody>
                   
                   <tr>
                                           
                                           <th>Application Number</th>
                                           <td>
                                   <% out.println(rs1.getString("application_no"));%>

                                               </td>
                                                </tr>  
                                       
                                      
                                                
                                                 <tr><th>Pass Status</th>
                                                     <td style=" color: black; background-color: #008000e0;">
						Active
                                                </td>
                                                  </tr>
                                                    <tr><th>Pass Status</th>
                                                        <td style=" color: black; background-color: #de1919e0;">
						Blocked
                                                    </td>
                                                </tr>
                                                <tr><th>Pass Status</th>
                                                    <td style=" color: black; background-color: #808080e0;">
						Expired
                                                    </td>
                                                </tr> 
                                                
                                       
                                       <tr><th>Customer ID</th>
                                                      <td>
						<% out.println(rs1.getString("pass_id"));%>
                                                    </td></tr>
                                       <tr><th>Account ID</th>
                                                      <td>
						<% out.println(rs1.getString("account_id"));%>
                                                    </td></tr>
                                                     <tr><th>Student Name</th>
                                                    <td>
						<% out.println(rs1.getString("name"));%>
                                                    </td></tr>
                                                     <tr><th>Student Father Name</th>
                                                    <td>
						<% out.println(rs1.getString("fname"));%>
                                                    </td></tr>
                                                     <tr> <th>Date of Birth</th>
                                                    <td>
						<% out.println(rs1.getString("dob"));%>
                                                    </td></tr>
                                                     <tr><th>Gender</th>
                                                    <td>
						<% out.println(rs1.getString("gender"));%>
                                                    </td></tr>
                                                     <tr><th>Aadhar No.</th>
                                                      <td>
						<% out.println(rs1.getString("aadharno"));%>
                                                    </td></tr>
                                                     <tr> <th>Mobile No.</th>
                                                      <td>
						<% out.println(rs1.getString("mnumber"));%>
                                                    </td></tr>
                                                     <tr><th>Email</th>
                                                   
                                                     <td>
						<% out.println(rs1.getString("email"));%>
                                                    </td></tr>
                                                     
                                                     <tr> <th>Residental Address</th>
                                                      <td>
						<% out.println(rs1.getString("r_address"));%>
                                                    </td></tr>
                                                     <tr> <th>R_Pincode</th>
                                                      <td>
						<% out.println(rs1.getString("r_pincode"));%>
                                                    </td></tr>
                                                     <tr> <th>School/College Name</th>
                                                      <td>
						<% out.println(rs1.getString("sc_name"));%>
                                                    </td></tr>
                                                     <tr> <th>School/College Address</th>
                                                      <td>
						<% out.println(rs1.getString("sc_address"));%>
                                                    </td>
                                                     <tr><th>S/C_Pincode</th>
                                                      <td>
						<% out.println(rs1.getString("sc_pincode"));%>
                                                    </td></tr>
                                                      <tr><th>Pass Amount</th>
                                                      <td>
						<% out.println(rs1.getString("pass_m_a"));%>
                                                    </td>
                                                </tr>
                                                  
                                               
                                               
						  <% } %>
                                    </tbody>
              </table>
            </div>


  </div>
          <!-- /col-md-12 -->
        </div>
        
        
        
<div class="row mt">
          <div class="col-md-12">
            <div class="content-panel">
              <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i> Pass History</h4>
                <hr>
 
               <tbody>
                   <%
String accid=request.getParameter("accid");
String sql3="select * from  payment inner join passreg on payment.application_no=passreg.application_no where payment.application_no='"+accid+"'";
rs3=statement.executeQuery(sql3);
if(rs3.next())
    {                   
                   
                   
                   
                   %>
           <tr>
                                            <th>Application Number</th>
                                           <th>Customer Name</th>
                                           <th>Issue Date</th>
                                           <th>Expried Date</th>
                                            <th>Payment Status</th>
                                             
               </tr>
               <tr> 
                   <td>            
                       <% out.println(rs3.getString("application_no"));%>
                                                     </td>
                                                    <td><% out.println(rs3.getString("name"));%>
                                                    </td>
                                                    <td>
                                                     <% out.println(rs3.getString("date"));%>   
                                                    </td>
                                                    <td>
                                                     <% out.println(rs3.getString("ex_date"));%>   
                                                    </td>
                                                    <td>
                                                        <% out.println(rs3.getString("status"));%>
                                                    </td>
                                                    <%}%>
            
                                            
                                                    
                                                    
                                                    
                                              </tr>
           </tbody>
       </hr>
              </table>
                
            </div>


  </div>
          <!-- /col-md-12 -->
</div>  &nbsp;&nbsp;    


                                                    <form class="contact-form php-mail-form">
                 <div class="form-send">
<%
 
  String sql1="select * from  tbl_doc where application_no='"+accid+"'";
  rs2=statement.executeQuery(sql1);
if(rs2.next())
    {
        
%>

                <button type="submit" class="btn btn-large btn-primary"><a href="viewstupassdoc.jsp?docid=<%=rs2.getString("application_no")%>">CUSTOMER DOCUMENTS</a></button>
                <%}%>
                <%
 
  String sql4="select * from  payment where application_no='"+accid+"'";
  rs=statement.executeQuery(sql4);
if(rs.next())
    {
        if(rs.getString("status")!=null)
         {
%>
                <button type="submit" class="btn btn-large btn-primary"><a href="generatepassstu.jsp?docid=<%=rs.getString("application_no")%>">GENERATE PASS</a></button>
                </div>
            </form>
                
                <%}}%>
        <!-- /row -->
      </section>
    </section>

 
  <jsp:include page="footer.jsp"/>
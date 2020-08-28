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


<jsp:include page="header.jsp"/>
<head>
           <link href="lib/fancybox/jquery.fancybox.css" rel="stylesheet" />
           <style>
    .col-lg-4 {
    left: 155px;    
    width: 24.333333%;
}
    .photo-wrapper {
    height: 175px;
    display: block;
    position: relative;
    overflow: hidden;
    background-color: #4ECDC4;
     transition: background-color 0.4s;
}
.font{
    font-size: 21px;
    font-family: none;
     color: black;
    text-align: -webkit-center;
}
h3 {
    margin-top: 25px;
    margin-bottom: 10px;
}
 input[data-readonly] {
  pointer-events: none;
}
           </style>
 </head>
 

 <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Pass Application Documents</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
<div class="adv-table" style="
     padding-left: 3px;
">              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                <thead>
                  <tr>
                    <th><i class="fa fa-bullhorn"></i>Doc ID</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Document Name</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Document </th>
                    <th><i class="fa fa-edit"></i> Approve</th>
                    <th><i class=" fa fa-edit"></i> Reject</th>
                  </tr>
                </thead>
                <tbody>
 <%

String sql="select * from  tbl_doc where application_no="+request.getParameter("docid")+" ";
rs1=statement.executeQuery(sql);
while(rs1.next())
    {
        
%>     
 
                 
                  <tr class="gradeA">
                    
                    <td>
                    <% out.println(rs1.getString("doc_id"));%>
                    </td>
                    <td>	
                    <%out.println(rs1.getString("doc_type"));%>
                    </td>
                    <td>	
                        <img class="img-responsive" src="img/<%out.println(rs1.getString("doc_name"));%>" height="120px" width="120px" alt="">
                    </td>
                  <%
                        if(rs1.getString("app_status")!=null) 
                        {
                    %>
                     <td>
                         <label>Approved</label>
                     </td>
                     <%}
                        else if(rs1.getString("reason")!=null)
                        {
                     %>
                     <td>
                         
                     </td>
                     <%}
                         else
                        {
                     
                     %>
                    
                     
                      <td>
 <a href="approvedoc.jsp?docid1=<%=rs1.getString("doc_id")%>&&docid=<%=rs1.getString("application_no")%>" style="color: white;">
                         <button class="btn btn-primary btn-xs" style="height: 33px; width: 108px;">APPROVE</button>
                   </a>  </td>
                      <%}%>
                       <%
                        if(rs1.getString("reason")!=null)
                        {
                    %>
                      <td>
                         <label>Rejected</label>
                   </>  </td>
                       <%}
                        else if(rs1.getString("app_status")!=null)
                        {
                     %>
                      <td>
                          
                      </td>
                      <%}
                          else
                          {
                      %>
                     <td>
 <a href="rejectmsg.jsp?docid1=<%=rs1.getString("doc_id")%>&&docid=<%=rs1.getString("application_no")%>" style="color: white;">
     <button class="btn btn-danger btn-xs" style="height: 33px; width: 108px;">REJECT</button>
                   </a> </td>
                   <%}%>
                  </tr>
       						  <% } %>
                 
                </tbody>
              </table>
              
            </div>
          </div>
          <!-- page end-->
        </div> 
      </section>
      <!-- /wrapper -->
    </section>
   
     
       
     <jsp:include page="footer.jsp"></jsp:include>
     
     
  <script src="lib/fancybox/jquery.fancybox.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script type="text/javascript">
    $(function() {
      //    fancybox
      jQuery(".fancybox").fancybox();
    });
  </script>
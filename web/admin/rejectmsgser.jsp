<%@ page import="java.sql.*"  contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>
<head>
    <style>
        .roww {
    margin-right: -50px;
    margin-left: 340px;
}
    </style>
</head>
 <jsp:include page="header.jsp"/>
 
 <section id="main-content">
      <section class="wrapper1">
        <h2>Reject Message</h2>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="roww mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Reject Message</h4>
            <div id="message"></div>
 <%
String sql="select * from  tbl_doc where doc_id="+request.getParameter("docid1")+" ";
rs1=statement.executeQuery(sql);
if(rs1.next())
    {
        
%>           
  
<form class="contact-form php-mail-form" action="rejectdocser.jsp" role="form" method="POST">

              <div class="form-group">
                <input type="area" name="reject" class="form-control" id="contact-name" placeholder="Give Reason" onkeypress="return isAlfa(event)" required>
                <input type="hidden" name="id" class="form-control" id="contact-name" value="<%out.println(rs1.getString("doc_id"));%>">
                <input type="hidden" name="app" class="form-control" id="contact-name" value="<%out.println(rs1.getString("application_no"));%>">
<div class="validate"></div>
              </div>
              
              <div class="form-send">
                      <button type="submit" class="btn btn-large btn-primary">REJECT</button>
                      <button type="submit" class="btn btn-large btn-primary"><a href="viewservicepassdoc.jsp?docid1=<%=rs1.getString("doc_id")%>&&docid=<%=rs1.getString("application_no")%>" style="color: white;">BACK</a></button>
                 </div>
 
 

  </form>
                
                <%}%>
          </div>

         
        </div>
        
      </section>
     </section>
  
 
  <jsp:include page="footer.jsp"/>
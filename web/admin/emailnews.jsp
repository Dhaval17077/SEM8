 
<jsp:include page="header.jsp"/>

 
 <section id="main-content">
      <section class="wrapper">
        <!-- page start-->
        <div class="row mt">
          <div class="col-sm-3">
            <section class="panel">
              <div class="panel-body">
                <a href="mail_compose.html" class="btn btn-compose">
                  <i class="fa fa-pencil"></i>  Compose Mail
                  </a>
                <ul class="nav nav-pills nav-stacked mail-nav">
                  <li><a href="inbox.html"> <i class="fa fa-inbox"></i> Inbox</a></li>
                  <li><a href="#"> <i class="fa fa-envelope-o"></i> Send Mail</a></li>
                </ul>
              </div>
            </section>
            <section class="panel">
              <div class="panel-body">
                <ul class="nav nav-pills nav-stacked labels-info ">
                  <li>
                    <h4>User's Email</h4>
                  </li>
 <%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String sql="select * from newsletter order by n_id asc";

rs1=statement.executeQuery(sql);
while(rs1.next())
    {
        
%>                  
                  <li>
                    <a href="#">
                       <%out.println(rs1.getString("n_id"));%>.
                       <%out.println(rs1.getString("email"));%>
                       </a>
                  </li>
<%}%>                  
                 </ul>
               </div>
            </section>
          </div>
          <div class="col-sm-9">
            <section class="panel">
              <header class="panel-heading wht-bg">
                <h4 class="gen-case">
                    Compose Mail
                    <form action="#" class="pull-right mail-src-position">
                      <div class="input-append">
                        <input type="text" class="form-control " placeholder="Search Mail">
                      </div>
                    </form>
                  </h4>
              </header>
              <div class="panel-body">
                <div class="compose-mail">
                    <form role="form-horizontal" action="emailprocess.jsp" method="post">
                    <div class="form-group">
                      <label for="to" class="">To:</label>
<%
ResultSet rs2 = null;
String email="";
String sql1="select email from newsletter order by n_id asc";

rs2=statement.executeQuery(sql1);
while(rs2.next())
    {
     email=rs2.getString("email");   
%>                       
                        <%out.println(email);%>, 
   <input type="hidden" name="email" value="<%out.println(email);%>" tabindex="2" id="cc" class="form-control">

<%}%>

                        <div class="compose-options">
                        <a onclick="$(this).hide(); $('#cc').parent().removeClass('hidden'); $('#cc').focus();" href="javascript:;">Cc</a>
                        <a onclick="$(this).hide(); $('#bcc').parent().removeClass('hidden'); $('#bcc').focus();" href="javascript:;">Bcc</a>
                      </div>
                    </div>
                    <div class="form-group hidden">
                      <label for="cc" class="">Cc:</label>
                      <input type="text" name="cc" tabindex="2" id="cc" class="form-control">
                    </div>
                    <div class="form-group hidden">
                      <label for="bcc" class="">Bcc:</label>
                      <input type="text" name="bcc" tabindex="2" id="bcc" class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="subject" class="">Subject:</label>
                      <input type="text" name="subject" tabindex="1" id="subject" class="form-control" required="">
                    </div>
                    <div class="compose-editor">
                      <textarea class="wysihtml5 form-control" name="msg" rows="9" required=""></textarea>
                      <input type="file" name="file" class="default">
                    </div>
                    <div class="compose-btn">
                        <button class="btn btn-theme btn-sm" type="submit"><i class="fa fa-check"></i> Send</button>
                      <button class="btn btn-sm"><i class="fa fa-times"></i> Discard</button>
                      <button class="btn btn-sm">Draft</button>
                    </div>
                  </form>
                </div>
              </div>
            </section>
          </div>
        </div>
      </section>
      <!-- /wrapper -->
    </section>
    
  </section>
  
  
 <jsp:include page="footer.jsp"/>

  
  <script type="text/javascript" src="lib/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
  <script type="text/javascript" src="lib/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

  <script type="text/javascript">
    //wysihtml5 start

    $('.wysihtml5').wysihtml5();

    //wysihtml5 end
  </script>
 </body>
  </html>

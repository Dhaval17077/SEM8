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
 <jsp:include page="header.jsp"/>

<head>
    <style>
        .roww {
    margin-right: -50px;
    margin-left: 340px;
}
.wrapper1 {
    display: inline-block;
    margin-top: 60px;
    padding-left: 15px;
    padding-right: 15px;
    padding-bottom: 15px;
    padding-top: 0px;
    width: 96%;
}
    </style>
</head>
 
 <section id="main-content">
      <section class="wrapper1">
        <h2>Add New Blog</h2>
        <div class="roww mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Blog Details</h4>
            <div id="message"></div>
            <form class="contact-form php-mail-form" role="form" action="blogprocess.jsp" method="POST">

              <div class="form-group">
                <input type="bnumber" name="bgname" class="form-control" id="contact-name" placeholder="Enter Blog Name" required>
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <input type="bnumber" name="bdes" class="form-control" id="contact-name" placeholder="Enter Description" required>
                <div class="validate"></div>
              </div>
                              <div class="form-group">
                 
                <div class="fileupload fileupload-new" data-provides="fileupload">
                    <center>
                      <div class="fileupload-new thumbnail" style="width: 190px; margin-top:18px; height: 160px;">
                        <img src="../../../../www.placehold.it/200x150/EFEFEF/AAAAAA%26text%3dno%2bimage.png" alt="" />
                      </div>
                        </center>
                    <center>
                    <div class="fileupload-preview fileupload-exists thumbnail" style="height: 230px; width: 280px;">
                    </div></center>
                    <div><center>
                          <span class="btn btn-theme02 btn-file" style="margin-top: 20px;">
                         <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change image</span>
                        <input type="file" name="file" class="default" required/>
                        </span>
                          <br>
                          <a href="" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload" style="margin-top: 20px;"><i class="fa fa-trash-o"></i> Remove</a>
                      </center></div>
                    </div>
                    </div>
                <div class="form-group">
                <input type="bnumber" name="bname" class="form-control" id="contact-name" placeholder="Enter Your Name" required>
                <div class="validate"></div>
              </div>
              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">ADD BLOG</button>
                 <button type="submit" class="btn btn-large btn-primary"><a href="viewblog.jsp">VIEW BLOG</a></button>
             </div>
              
     
      
               <%

if(request.getParameter("st2")!=null)
   {
    %>
    <script>
    alert("Blog is successfully Added!!");
    </script>
    
    <%
    
}
else if(request.getParameter("st1")!=null)
    {
     %>
    <script>
    alert("Blog Name is Already Used!!");
    </script>
    
    <%
    }

  
%>
 


  </form>
          </div>

         
        </div>
        <!-- /row -->


        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
  
 
  <jsp:include page="footer.jsp"/>
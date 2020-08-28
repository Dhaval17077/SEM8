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
        <h2>Add Area</h2>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="roww mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Area Source & Destination</h4>
            <div id="message"></div>
            
 
                           <%
                           if(request.getParameter("areaid")==null)
		{
			
%>

            
            <form class="contact-form php-mail-form" role="form" action="addareaprocess.jsp" method="POST">

              <div class="form-group">
                <input type="area" name="area" class="form-control" id="contact-name" placeholder="Area Name" onkeypress="return isAlfa(event)" required>
                <div class="validate"></div>
              </div>
              
              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">ADD AREA</button>
              
                    <button type="submit" class="btn btn-large btn-primary"><a href="viewarea.jsp">VIEW AREA</a></button>
              </div>
              
<%
		
		
		}
		else
		{
                   String s1=request.getParameter("areaid"); 
                   String sql="Select * from tbl_area where area_id='"+s1+"' ";
                      rs1=statement.executeQuery(sql);
if(rs1.next())
    {
     
                     
%>              
          
<form class="contact-form php-mail-form" role="form" action="areaedit.jsp" method="POST">

 <div class="form-group">
                   <input type="hidden" name="areaid" value="<% out.println(s1); %>"/>
  </div>
  
              <div class="form-group">
                <input type="area" name="area" class="form-control" id="contact-name"  onkeypress="return isAlfa(event)" value="<% out.println(rs1.getString("area_name")); %>" required>
                <div class="validate"></div>
              </div>
              
              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">EDIT AREA</button>
              
                    <button type="submit" class="btn btn-large btn-primary"><a href="viewarea.jsp">VIEW AREA</a></button>
              </div>
              
              
              
      <%
                }
                       }    %>
                           

              
                               
               
               <%

if(request.getParameter("st2")!=null)
   {
    %>
    <script>
    alert("Data Saved successfully");
    </script>
    
    <%
    
}
else if(request.getParameter("st1")!=null)
    {
     %>
    <script>
    alert("Duplicate Data Not Allowoded");
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
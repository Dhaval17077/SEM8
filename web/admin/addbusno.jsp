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
        <h2>Add Bus Number</h2>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="roww mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Bus Number</h4>
            <div id="message"></div>
            
 
                           <%
                           if(request.getParameter("busid")==null)
		{
			
%>

            
            <form class="contact-form php-mail-form" role="form" action="addbusnoprocess.jsp" method="POST">

              <div class="form-group">
                <input type="bnumber" name="bnumber" class="form-control" id="contact-name" placeholder="Enter Bus Number" required>
                <div class="validate"></div>
              </div>
              
              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">ADD BUS NUMBER</button>
              
                    <button type="submit" class="btn btn-large btn-primary"><a href="viewbusno.jsp">VIEW BUS NUMBER</a></button>
              </div>
              
<%
		
		
		}
		else
		{
                   String s1=request.getParameter("busid"); 
                   String sql="Select * from bus where bus_id='"+s1+"' ";
                      rs1=statement.executeQuery(sql);
if(rs1.next())
    {
     
                     
%>              
          
<form class="contact-form php-mail-form" role="form" action="busnoedit.jsp" method="POST">

 <div class="form-group">
                   <input type="hidden" name="busid" value="<% out.println(s1); %>"/>
  </div>
  
              <div class="form-group">
                <input type="bnumber" name="bnumber" class="form-control" id="contact-name" value="<% out.println(rs1.getString("bus_name")); %>" required>
                <div class="validate"></div>
              </div>
              
              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">EDIT BUS NUMBER</button>
              
                    <button type="submit" class="btn btn-large btn-primary"><a href="viewbusno.jsp">VIEW BUS NUMBER</a></button>
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
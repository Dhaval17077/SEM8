<%@ page import="java.sql.*"  contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;

Statement statement2 = null;
 ResultSet rs2 = null;
 Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);

statement2 = connection.createStatement();        
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
        <h2>Track Route</h2>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="roww mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Select Route</h4>
            <div id="message"></div>
            
  
            <form class="contact-form php-mail-form" role="form" action="trackdisplay.jsp" method="POST">

 <div class="form-group">
     <label for="exampleInputName2">Source</label> 
                     <select name="s1" id="s1" class="form-control" placeholder="Keyword search" required>
                      <option value="">-Selete-</option>
 
              
  
    <%
Statement statement = null;   
ResultSet rs = null;
statement = connection.createStatement();
String query = "Select * from tbl_area";
rs=statement.executeQuery(query);
//out.println(query);

while(rs.next())
    {
        
            %>
            <option value="<% out.println(rs.getInt("area_id"));   %>"><% out.println(rs.getString("area_name"));   %></option>
            <%
            }
rs.close();
statement.close();
%>

  </select>
                  </div>
            <div class="form-group"> <label for="exampleInputEmail2">Destination</label> 
                     <select name="d1" id="d1" class="form-control" placeholder="Keyword search" required>
                      <option value="">-Selete-</option>
 
 
   
<%
Statement statement1 =null;
Statement statement5 =null;
ResultSet rs1 =null;
 statement1 = connection.createStatement();
 String query1 = "select * from tbl_area";
rs1=statement1.executeQuery(query1);
out.println(query1);

while(rs1.next())
    {
        
           %>
            <option value="<% out.println(rs1.getInt("area_id"));   %>"><% out.println(rs1.getString("area_name"));   %></option>
            <%
            }
rs1.close();
statement1.close();
%>  

          </select>
                  </div>       
              
              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">SHOW</button>
                </div>
  
  </form>
          </div>

         
        </div>
    
      </section>
      <!-- /wrapper -->
    </section>
  
 
  <jsp:include page="footer.jsp"/>
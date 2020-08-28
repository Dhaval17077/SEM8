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
        <h2>Add Route</h2>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="roww mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Route</h4>
            <div id="message"></div>
            
 
                           <%
                   if(request.getParameter("routeid")==null)
		             {
                            // out.println("null");
                             %>

            
            <form class="contact-form php-mail-form" role="form" action="addrouteprocess.jsp" method="POST">

 <div class="form-group">
     <label for="exampleInputName2">Source</label> 
                     <select name="source" id="source" class="form-control" placeholder="Keyword search" required>
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
                     <select name="destination" id="destination" class="form-control" placeholder="Keyword search" required>
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
 <div class="form-group"> <label for="exampleInputEmail2">Bus Number</label> 
                     <select name="bnumber" id="bnumber" class="form-control" placeholder="Keyword search" required>
                      <option value="">-Selete-</option>
 
 
   
<%
Statement statement11 =null;
 ResultSet rs11 =null;
 statement11 = connection.createStatement();
 String query11 = "select * from bus";
rs11=statement11.executeQuery(query11);
out.println(query11);

while(rs11.next())
    {
        
           %>
            <option value="<% out.println(rs11.getInt("bus_id"));   %>"><% out.println(rs11.getString("bus_name"));   %></option>
            <%
            }
rs11.close();
statement11.close();
%>  

          </select>
                  </div>     
               
              <div class="form-group">
                <input type="rnumber" name="rnumber" class="form-control" id="contact-name" placeholder="Enter Route Number" required>
                <div class="validate"></div>
              </div>
              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">ADD ROUTE</button>
              
                    <button type="submit" class="btn btn-large btn-primary"><a href="viewroute.jsp">VIEW ROUTE</a></button>
              </div>
              
 <%
		
		
		}
		else
		{
                   String s1=request.getParameter("routeid"); 
                   String sql="Select * from tbl_route where route_id='"+s1+"' ";
                      rs2=statement2.executeQuery(sql);
if(rs2.next())
    {
     
                     
%>          
          
<form class="contact-form php-mail-form" role="form" action="routeedit.jsp" method="POST">


 <div class="form-group"> <label for="exampleInputName2">Source</label> 
                     <select name="sroute" id="source" class="form-control" placeholder="Keyword search" required>
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
 
%>

  </select>
                  </div>
                  
                   <div class="form-group"> <label for="exampleInputEmail2">Destination</label> 
                     <select name="droute" id="destination" class="form-control" placeholder="Keyword search" required>
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
 
%>  

          </select>
                  </div>
<div class="form-group"> <label for="exampleInputEmail2">Bus Number</label> 
                     <select name="busname" id="busname" class="form-control" placeholder="Keyword search" required>
                      <option value="">-Selete-</option>
 
 
   
<%
Statement statement11 =null;
 ResultSet rs11 =null;
 statement11 = connection.createStatement();
 String query11 = "select * from bus";
rs11=statement11.executeQuery(query11);
out.println(query11);

while(rs11.next())
    {
        
           %>
            <option value="<% out.println(rs11.getInt("bus_id"));   %>"><% out.println(rs11.getString("bus_name"));   %></option>
            <%
            }
rs11.close();
statement11.close();
%>  

          </select>
                  </div>                       
 <div class="form-group">
<input type="hidden" name="routeid" value="<% out.println(s1); %>"/>
</div>
  
              <div class="form-group">
                <input type="routename" name="routename" class="form-control" id="contact-name" value="<% out.println(rs2.getString("route_name")); %>" required>
                <div class="validate"></div>
              </div>
              
              <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary">EDIT ROUTE</button>
              
                    <button type="submit" class="btn btn-large btn-primary"><a href="viewroute.jsp">VIEW ROUTE</a></button>
              </div>
              
              
              
      <%
                }
                       }    %>
                           

              
                               
               
               <%

if(request.getParameter("st2")!=null)
   {
    %>
    <script>
    alert("Route Saved successfully!!!");
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
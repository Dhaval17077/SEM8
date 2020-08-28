<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
Statement statement2 = null;
ResultSet rs2 = null;
ResultSet rs21 = null;
ResultSet rs = null;


Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>
<jsp:include page="header.jsp"/>



 <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i>Track Route Result : 
        <%
String snameid=request.getParameter("s1");
String query = "Select * from tbl_area where  area_id='"+snameid+"'";
rs=statement.executeQuery(query);

while(rs.next())
    {
     String type=rs.getString("area_name");  
    
out.println(type);
    }
out.println("---To---");

String dnameid=request.getParameter("d1");
String query1 = "Select * from tbl_area where  area_id='"+dnameid+"'";
rs=statement.executeQuery(query1);

while(rs.next())
    {
     String type=rs.getString("area_name");  
    
out.println(type);
    }
 

%>
        </h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
<div class="adv-table" style="
     padding-left: 3px;
">              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                <thead>
                  <tr>
                    <th><i class="fa fa-bullhorn"></i>ID</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i>In-Between Station</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i>Bus Number</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i>Route Number</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i>Bus Timing</th>
                   </tr>
                </thead>
                
                
<%
String ssid=request.getParameter("s1");
 

String desid=request.getParameter("d1");
 
  
String sql="select * from tbl_route where  area_id_s='"+ssid+"'";
 
int r1=0;
int r2=0;
rs1=statement.executeQuery(sql);
if(rs1.next())
    {
        r1=rs1.getInt("route_name"); 
        
    }


String sql1="select * from tbl_route where  area_id_d='"+desid+"'";
rs2=statement.executeQuery(sql1);
if(rs2.next())
    {
       r2= rs2.getInt("route_name"); 
        
    }
  // out.println(sql1);

   //out.println(r1);
  // out.println(r2); 
String sql12="";
if(r1==r2)
{
    sql12="select * from tbl_route inner join tbl_area on tbl_route.area_id_s=tbl_area.area_id"
           + " inner join tbl_timing on tbl_route.route_id=tbl_timing.time_id"
           + " inner join bus on tbl_route.bus_id=bus.bus_id"
           + " where area_id_s >='"+ssid+"' and area_id_d <='"+desid+"' order by tbl_route.route_id";
}
else
{
        sql12="select * from tbl_route inner join tbl_area on tbl_route.area_id_s=tbl_area.area_id"
           + " inner join tbl_timing on tbl_route.route_id=tbl_timing.time_id"
           + " inner join bus on tbl_route.bus_id=bus.bus_id"
           + " where area_id >='"+ssid+"' and area_id <='"+desid+"' order by tbl_route.route_id";

}
/*
else
{
    out.println("Oho!! no route found");
}
*/
//   out.println(sql12);
    rs21=statement.executeQuery(sql12);
 while(rs21.next())
    {
      %>
      
                <tbody>
              <tr class="gradeA">
                    
                    <td>
       <%  out.println(rs21.getString("area_id")); %>
                    </td>
                    <td>	
       <%  out.println(rs21.getString("area_name")); %>
                    </td>
                     <td>	
       <%  out.println(rs21.getString("bus_name")); %>
                    </td>
                     <td>	
       <%  out.println(rs21.getString("route_name")); %>
                    </td>
                     <td>
       <%  out.println(rs21.getString("time")); %>
                     </td>
                     
                  </tr>
       						  <% } %>
              
                </tbody>
              </table>
              
            </div>
          </div>
          <!-- page end-->
        </div> 
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
   




 
 
  <jsp:include page="footer.jsp"/>
  
   </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
   <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script type="text/javascript" language="javascript" src="lib/advanced-datatable/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="lib/advanced-datatable/js/DT_bootstrap.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  
  <script>if( window.self == window.top ) { (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-55234356-6', 'auto'); ga('send', 'pageview'); } </script>
</body>

 </html>
  
  
<jsp:include page="header.jsp"/>



 <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> List Of Routes</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
<div class="adv-table" style="
     padding-left: 3px;
">              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                <thead>
                  <tr>
                    <th><i class="fa fa-bullhorn"></i> Routes ID</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Source Name</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Destination Name</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Bus ID</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Route Number</th>
                     <th><i class="fa fa-edit"></i> Edit</th>
                    <th><i class=" fa fa-edit"></i> Delete</th>
                  </tr>
                </thead>
                <tbody>
 <%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String sql="select    tbl_route.bus_id as bus,tbl_route.route_name as rte,tbl_route.route_id as iid,tbl_route.area_id_s as ss, tbl_route.area_id_d as ds, area1.area_name as areas, area2.area_name as aread from tbl_route " +
"inner join tbl_area as area1 on tbl_route.area_id_s=area1.area_id " +
"inner join tbl_area as area2 on tbl_route.area_id_d=area2.area_id order by tbl_route.route_id";

rs1=statement.executeQuery(sql);
while(rs1.next())
    {
        
%>     
 
                 
                  <tr class="gradeA">
                    
                    <td>
						<% out.println(rs1.getString("iid"));%>
                    </td>
                    <td>	
						<% out.println(rs1.getString("areas"));%>
                    </td>
                     <td>	
						<% out.println(rs1.getString("aread"));%>
                    </td>
                     <td>	
						<% out.println(rs1.getString("bus"));%>
                    </td>
                     <td>
						<% out.println(rs1.getString("rte"));%>
                     </td>
                     <td>
                          <a href="addroute.jsp?routeid=<% out.println(rs1.getString("iid"));%>">

                         <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                   </a>  </td>
                     <td>
                             <a href="deleteroute.jsp?routeid=<% out.println(rs1.getString("iid"));%>">

                       <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                   </a> </td>
                  </tr>
       						  <% } %>
                 
                 
                  
                </tbody>
              </table>
              
            </div>
          </div>
          <!-- page end-->
        </div> <form class="contact-form php-mail-form">
                 <div class="form-send">
                <button type="submit" class="btn btn-large btn-primary"><a href="addroute.jsp">ADD ROUTE</a></button>
                <button type="submit" class="btn btn-large btn-primary"><a href="trackroute.jsp">TRACK ROUTE</a></button>
                </div>
            </form>
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
  <script type="text/javascript">
    /* Formating function for row details */
    function fnFormatDetails(oTable, nTr) {
      var aData = oTable.fnGetData(nTr);
      
      return sOut;
    }

    $(document).ready(function() {
      /*
       * Insert a 'details' column to the table
       */
      var nCloneTh = document.createElement('th');
      var nCloneTd = document.createElement('td');
       nCloneTd.className = "center";

      $('#hidden-table-info thead tr').each(function() {
        this.insertBefore(nCloneTh, this.childNodes[0]);
      });

      $('#hidden-table-info tbody tr').each(function() {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
      });

      /*
       * Initialse DataTables, with no sorting on the 'details' column
       */
      var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [{
          "bSortable": false,
          "aTargets": [0]
        }],
        "aaSorting": [
          [1, 'asc']
        ]
      });

      /* Add event listener for opening and closing details
       * Note that the indicator for showing which row is open is not controlled by DataTables,
       * rather it is done here
       */
      
    });
  </script>
  <script>if( window.self == window.top ) { (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-55234356-6', 'auto'); ga('send', 'pageview'); } </script>
</body>

 </html>
  
  
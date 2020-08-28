<jsp:include page="header.jsp"/>



 <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> List Of Bus Timing</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
<div class="adv-table" style="
     padding-left: 3px;
">              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                <thead>
                  <tr>
                    <th><i class="fa fa-bullhorn"></i> Time ID</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> Source Name</th>
                     <th class="hidden-phone"><i class="fa fa-question-circle"></i> Destination Name</th>
                      <th class="hidden-phone"><i class="fa fa-question-circle"></i> Bus Number</th>
                       <th class="hidden-phone"><i class="fa fa-question-circle"></i> Time</th>
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

String sql="select    tbl_timing.time as bustime,tbl_timing.time_id as iid,tbl_timing.area_id_st as ss, tbl_timing.area_id_dt as dd, tbl_timing.bus_id_t as bb, area1.area_name as areas, area2.area_name as aread, busno.bus_name as busnumber from tbl_timing " +
"inner join tbl_area as area1 on tbl_timing.area_id_st=area1.area_id " +
"inner join tbl_area as area2 on tbl_timing.area_id_dt=area2.area_id " +
"inner join bus as busno on tbl_timing.bus_id_t=busno.bus_id";

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
						<% out.println(rs1.getString("busnumber"));%>
                                                    </td>
                                                     <td>
						<% out.println(rs1.getString("bustime"));%>
                                                    </td>
                     <td>
                          <a href="addtiming.jsp?timeid=<% out.println(rs1.getString("iid"));%>">

                         <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                   </a>  </td>
                     <td>
                             <a href="deletetime.jsp?timeid=<% out.println(rs1.getString("iid"));%>">

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
                <button type="submit" class="btn btn-large btn-primary"><a href="addtiming.jsp">ADD BUS TIMING</a></button>
                </div>
            </form>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
   
   
   
   
     <jsp:include page="footer.jsp"></jsp:include>
    



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
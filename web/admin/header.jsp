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
%><!DOCTYPE html>
<html lang="en">


 <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Admin ATS</title>
  <!-- Bootstrap core CSS -->
   <!--external css-->
     <link rel="stylesheet" type="text/css" href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />

   <link href="lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
  <link href="lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
  <link rel="stylesheet" href="lib/advanced-datatable/css/DT_bootstrap.css" />
  <!-- Custom styles for this template -->
 
  <!-- Favicons -->
   <link href="lib/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" />

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>

<style>
    a.logo {
    font-size: 25px;
    color: #f2f2f2;
    padding: 0px 0px 0px 40px;
    float: left;
    margin-top: 15px;
    text-transform: uppercase;
}
.wrapper1 {
    display: inline-block;
    margin-top: 60px;
    padding-left: 15px;
    padding-right: 15px;
    padding-bottom: 15px;
    padding-top: 0px;
    width: 97%;
}
</style>
</head>

<body>
  <section id="container">
     <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.jsp" class="logo"><b>  <span>   ATS</span></b></a>
  
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="logout.jsp">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          
          <li class="mt">
            <a class="active" href="index.jsp">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          
            <li>
                          <a href="viewarea.jsp">
               <i class="fa fa-arrows"></i>
              <span>Area</span>
              </a>
          </li>
          <li>
                          <a href="viewroute.jsp">
               <i class="fa fa-bus"></i>
              <span>Routes</span>
              </a>
          </li>
           <li>
                          <a href="trackroute.jsp">
               <i class="fa fa-road"></i>
              <span>Track Routes</span>
              </a>
          </li>
           <li>
                          <a href="viewbusno.jsp">
               <i class="fa fa-plus-square-o"></i>
              <span>Bus Number</span>
              </a>
          </li>
           <li>
                          <a href="viewtime.jsp">
               <i class="fa fa-clock-o"></i>
              <span>Route Timing</span>
              </a>
          </li>
           <li class="sub-menu">
           <a href="javascript:;">
              <i class="fa fa-file-text-o"></i>
              <span>Pass Application Forms</span>
              </a> 
            <ul class="sub">
              <li><a href="viewstupassform.jsp">Student Pass</a></li>
              <li><a href="viewservicepassform.jsp">Service Pass</a></li>
                  </ul>
          </li>
          <li>
                          <a href="viewblog.jsp">
              <i class="fa fa-smile-o"></i>
              <span>Blog</span>
              </a>
          </li>
          <li>
                          <a href="emailnews.jsp">
              <i class="fa fa-envelope"></i>
              <span>Mail</span>
              </a>
          </li>
          <li>
                          <a href="viewmessage.jsp">
               <i class="fa fa-comments-o"></i>
              <span>View Messages</span>
              </a>
          </li>
          <li>
                          <a href="viewuser.jsp">
               <i class="fa fa-user"></i>
              <span>Registered Users</span>
              </a>
          </li>
          <li>
                          <a href="lockscreen.jsp">
               <i class="fa fa-lock"></i>
              <span>Lock</span>
              </a>
          </li>
          <li></li>
          <li></li>
         </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from templatemag.com/demo/templates/Dashio/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 02 Feb 2020 10:08:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>OTP Page</title>

  <!-- Favicons -->
  

  <!-- Bootstrap core CSS -->
  <link href="libadmin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="libadmin/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="cssadmin/style.css" rel="stylesheet">
  <link href="cssadmin/style-responsive.css" rel="stylesheet">
  
  <script>
        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
     <script>
        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
    
    <script>
		 new WOW().init();
		</script>
   
 
    
    <style>
        .form-login {
    max-width: 400px;
    margin: 100px auto 0;
    background: #fff;
    border-radius: 5px;
    -webkit-border-radius: 5px;
}
.form-control {
    display: block;
    width: 217%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
}
.closee {
  position: absolute;
      padding-top: 24px;

 }
.closee:hover {
  opacity: 1;
}
.closee:before, .closee:after {
  position: absolute;
  left: 388px;
  content: ' ';
  height: 20px;
  width: 2px;
  background-color: #eee;
}
.closee:before {
  transform: rotate(45deg);
}
.closee:after {
  transform: rotate(-45deg);
}
    </style>
</head>

<body>
   <div id="login-page" style="margin-top:100px">
    <div class="container">
      <form class="form-login" action="registerprocess.jsp" method="post">
                    <a href="index.jsp" class="closee"></a>

        <h2 class="form-login-heading">Register Now</h2>
        <div class="login-wrap">
            <div class="row">
         <div class="form-group col-md-6">
      <input type="text" name="otp" class="form-control" placeholder="Enter OTP" autofocus onkeypress="return isNumber(event)" maxlength="6" required="required">
         </div>
           <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> Sign Up</button>
         
        </div>
        
   <%

if(request.getParameter("st")!=null)
   {
    %>
    <script>
    alert("Your Account Created successfully");
    </script>
    
    <%
    
}
else if(request.getParameter("st1")!=null)
    {
     %>
    <script>
    alert("Email or Mobile Number Already used!!!");
    </script>
    
    <%
    }
else if(request.getParameter("st2")!=null)
    {
     %>
    <script>
    alert("Oppsss!!! OTP is Incorrect.");
    </script>
    
    <%
    }
  
%>            

      </form>


                            
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
 
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="libadmin/jquery/jquery.min.js"></script>
  <script src="libadmin/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="libadmin/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("img/login-bg.jpg", {
      speed: 500
    });
  </script>
  <script>if( window.self == window.top ) { (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-55234356-6', 'auto'); ga('send', 'pageview'); } </script>
</body>


<!-- Mirrored from templatemag.com/demo/templates/Dashio/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 02 Feb 2020 10:08:46 GMT -->
</html>

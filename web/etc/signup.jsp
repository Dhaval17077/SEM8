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
  <title>Signup Page</title>

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
                
    <script>
  function isAlfa(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
        return false;
    }
    return true;
}
    </script>
    <script>
  function isAlfa(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
        return false;
    }
    return true;
}
    </script>
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnSubmit").click(function () {
            var password = $("#password").val();
            var confirmPassword = $("#cpassword").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>
    
    <style>
        .form-login {
    max-width: 630px;
    margin: 100px auto 0;
    background: #fff;
    border-radius: 5px;
    -webkit-border-radius: 5px;
}
.form-control {
    display: block;
    width: 95%;
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
  left: 618px;
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
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page" style="margin-top: -35px">
    <div class="container">
      <form class="form-login" action="sendsms.jsp" method="post">
                    <a href="index.jsp" class="closee"></a>

        <h2 class="form-login-heading">Register Now</h2>
        <div class="login-wrap">
            <div class="row">
                                    <div class="form-group col-md-6">
                                                 <input type="text" name="fname" class="form-control" placeholder="Enter Your First Name" autofocus onkeypress="return isAlfa(event)" required="required">
                                    </div>
                                    <div class="form-group col-md-6">
                                                 <input type="text" name="lname" class="form-control" placeholder="Enter Your Last Name" autofocus onkeypress="return isAlfa(event)" required="required">
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                                <input type="text" name="email" class="form-control" placeholder="Email ID" autofocus required="required">
                                     </div>
                                    <div class="form-group col-md-6">
                                                  <input type="text" name="mnumber" class="form-control" placeholder="Mobile Number" autofocus onkeypress="return isNumber(event)" maxlength="10" required="required">
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                               <input type="password" name="password" id="password" class="form-control" placeholder="Password" title="Password must contain at least 8 characters, including UPPER/lowercase and numbers." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" autofocus required="required">
                                    </div>
                                    <div class="form-group col-md-6">
                                                 <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="Confirm Password" required="required">
                                     </div>
                                         <div class="form-group col-md-7">
                                              <label class="checkbox">
              <input type="checkbox" value="remember-me" required="required"> Remember me
            <span class="pull-right">
             </span>
            </label>
                                    </div>
                                    </div>
        
          
          <button class="btn btn-theme btn-block" id="btnSubmit" type="submit"><i class="fa fa-lock"></i> Next</button>
          <hr>
          <div class="login-social-link centered">
            <p>or you can sign in via your social network</p>
            <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
            <button class="btn btn-twitter" type="submit"><i class="fa fa-twitter"></i> Twitter</button>
          </div>
          <div class="registration">
            If You already have an account..<br/>
            <a class="" href="login.jsp">
              Login into Your account
              </a>
          </div>
          </table>
        </div>
        <!-- Modal -->
        
        <!-- modal -->
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

  
%>            

      </form>


<script>
var myInput = document.getElementById("password");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>


                            
 



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

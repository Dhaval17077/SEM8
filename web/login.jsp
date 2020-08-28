 
<html>
 <head>
<title>Login</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Slide Login Form template Responsive, Login form web template, Flat Pricing tables, Flat Drop downs Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

         <link rel="stylesheet" href="css/login.css">
  	 <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
  </head>
<body>
  <script src="libadmin/jquery/jquery.min.js"></script>
  <script src="../../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
<script>
(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
  		// format, zoneKey, segment:value, options
  		_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
  	}
})();
</script>
<script>
(function(){
if(typeof _bsa !== 'undefined' && _bsa) {
	// format, zoneKey, segment:value, options
	_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
}
})();
</script>
<script>
(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
  		// format, zoneKey, segment:value, options
  		_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
  	}
})();
</script>
 <div id="codefund"> </div>
<script src="../../../../../../../codefund.io/properties/441/funder.js" async="async"></script>
<script async src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-149859901-1');
</script>

<script>
     window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
     ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
     ga('require', 'eventTracker');
     ga('require', 'outboundLinkTracker');
     ga('require', 'urlChangeTracker');
     ga('send', 'pageview');
   </script>
<script async src='../../../../../../js/autotrack.js'></script>

<meta name="robots" content="noindex">
<body><link rel="stylesheet" href="../../../../../../images/demobar_w3_4thDec2019.css">
	 
<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1>Login</h1>
 		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
			<div class="header-left-bottom">
				<form action="loginprocess.jsp" method="post">
					<div class="icon1">
						<span class="fa fa-user"></span>
						<input type="email" name="email" placeholder="Email Address" required=""/>
					</div>
					<div class="icon1">
						<span class="fa fa-lock"></span>
						<input type="password" name="password" placeholder="Password" required=""/>
					</div>
					<div class="login-check">
						 <label class="checkbox"><input type="checkbox" name="checkbox" required="required"><i> </i> Keep me logged in</label>
					</div>
                                              <input type="hidden" name="am" value="<%request.getParameter("am");%>" >
 					<div class="bottom">
						<button class="btn" type="submit">Log In</button>
					</div>
					<div class="links">
						<p><a href="forgotpassword.jsp">Forgot Password?</a></p>
						<p class="right"><a href="signup.jsp">New User? Register</a></p>
						<div class="clear"></div>
					</div>
                                        <div class="links">
                                            <p class="center" style="margin-inline-start: 110px;"><a href="index.jsp">Back To Home</a></p>
						<div class="clear"></div>
					</div>
				</form>	
			</div>
			 
		</div>
 
   <%

if(request.getParameter("fail")!=null)
   {
    %>
    <script>
    alert("Username Either password is fail.....Please try again...");
    </script>
    
    <%
    
}
else if(request.getParameter("pass")!=null)
    {
     %>
    <script>
    alert("Your Account Password was send in Your E-mail ID. Please Check it !!");
    </script>
    
    <%
    }

  
%>
<div class="copyright" style="margin-block-start: 55px;">
			<p>© <script>document.write(new Date().getFullYear());</script> ATS . All rights reserved .</p>
		</div>
 	</div>
</div>	
 </body>
  </html>
<%@ page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/ats?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs1 = null;
ResultSet rs2 = null;

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%> 
<jsp:include page="header.jsp"></jsp:include>

   <style>
 
.razorpay-payment-button{
    color: black;
    height: 42px;
    width: 170px;
    background-color: #faa61a;
    font-weight: bolder;
    margin-left: 478px;
    margin-top: 25px;
}
    </style>
    <div class="tab-content">
                                	<div id="dsh-dashboard" class="tab-pane in active fade">
<div class="dashboard-content booking-trips">
                                		<h2 class="dash-content-title">Pass Application You have Applied!</h2>
                                        <div class="dashboard-listing booking-listing">
                                        	<div class="dash-listing-heading">
                                                <div class="custom-radio">
                                                    <input type="radio" id="radio01" name="radio" checked/>
                                                    <label for="radio01"><span></span>Pass Application Payment</label>
                                                </div><!-- end custom-radio -->
                                        </div>  
</div>     
              
 
                            
          <%
                   String name=(String)session.getAttribute("name"); 

                                int st=(Integer)session.getAttribute("st"); 
                                  %> 
            
        <form action="passdate.jsp" method="POST">
<script
    src="https://checkout.razorpay.com/v1/checkout.js"
    data-key="rzp_test_ws6boXMEJ1eOhd" // Enter the Key ID generated from the Dashboard
    data-amount="<% out.println(st*100); %>" 
    data-currency="INR"
  
    data-buttontext="Pay Now"
    data-name="<% out.println(name); %>"
    data-description="ebuy online"
    data-image=""
    data-prefill.name="Shivam"
    data-prefill.email="hotmail4vivek@gmail.com"
    data-prefill.contact="8530302099"
    data-theme.color="#F37254"
></script>
<input type="hidden" custom="Hidden Element" name="hidden">
   
</form>
  <jsp:include page="footer.jsp"></jsp:include>

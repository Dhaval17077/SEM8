<jsp:include page="header.jsp"></jsp:include>
<head>
    <style>
        .custom-modal .modal-body input {
    box-shadow: none;
    background: #dadada;
    border: 0px;
}
    </style>
</head>
  <div class="tab-content">
                                	<div id="dsh-dashboard" class="tab-pane in active fade">
<div class="dashboard-content booking-trips">
                                		<h2 class="dash-content-title">Renewal Application !</h2>
                                        <div class="dashboard-listing booking-listing">
                                        	<div class="dash-listing-heading">
                                                <div class="custom-radio">
                                                    <input type="radio" id="radio01" name="radio" checked/>
                                                    <label for="radio01"><span></span>Pass Application Payment</label>
                                                </div><!-- end custom-radio -->
                                        </div>  
</div>     
                                            
                                            
 <div class="dashboard-listing booking-listing">   
                                        <div class="table-responsive">
                                            <form action="renewdisplay.jsp" method="post">
                                                
                                                <table class="table table-hover">
                                                    <tbody>
                                        <tr class="firstrow">
                                            <th width="50%" style="font-size: 17px; padding-left: 358px; padding-top: 25px;"> Enter Your Mobile No : </th>
                                            <td width="23%" style="padding-top: 23px; padding-bottom: 20px;">
                                                <input type="text" name="mon" maxlength="10" style="width:200px" id="pincode" required></td>
                                            <th></th></tr></tbody></table>  
                                                
                                            
                                            <table class="table table-hover">
                                                    <tbody> <tr class="firstrow">
                                               <button class="btn btn-orange" style="width: 150px; height: 40px; margin-left: 480px;">Next</button>

                                            
                                        </tr></tbody></table>                                            
     </form>
 <% if(request.getParameter("st1")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("st1")%>";
       alert("Successfull...");     
    </script> 
    
<% } %>

    <% if(request.getParameter("st")!=null){ %>   

    <script type="text/javascript">
       var pass = "<%=request.getParameter("fail")%>";
       alert("Mobile Number Does not match!!!");     
    </script> 
    
<% } %>   
                                        </div></div> </div></div></div>                                           
                                                      
<jsp:include page="footer.jsp"></jsp:include>

 <jsp:include page="header.jsp"></jsp:include>

 <head>
     <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

    <script>
$(document).ready(function(){
    $("#passTypeId").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue){
                $(".box").not("." + optionValue).hide();
                $("." + optionValue).show();
            } else{
                $(".box").hide();
            }
        });
    }).change();
});
</script>
     <script type="text/javascript">
        function SelectedTextValue(ele) {
            if (ele.selectedIndex > 0) {
                var selectedValue = ele.options[ele.selectedIndex].innerHTML;
                var selectedValue = ele.value;
                document.getElementById("inputText").value = selectedValue;
            }
            else {
                document.getElementById("inputText").value = "";
            }
        }
    </script>
     <script type="text/javascript">
        function SelectedTextValue1(ele) {
            if (ele.selectedIndex > 0) {
                var selectedValue = ele.options[ele.selectedIndex].innerHTML;
                var selectedValue = ele.value;
                document.getElementById("inputText1").value = selectedValue;
            }
            else {
                document.getElementById("inputText1").value = "";
            }
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
     <style>
    .booking-listing{
              margin-bottom: 30px;
         }
         .dashboard-listing {
    border: 3px solid #d8d8d8;
}
 
.table>tbody>tr>th{
        border-top: 0px solid #ddd;
 }
 .table>tbody>tr>td{
        border-top: 0px solid #ddd;
 }
legend {
    display: block;
    width: 100%;
    padding-left: 10px;
    font-size: 23px;
    line-height: inherit;
    color: #faa61a;
    border: 0;
    margin-bottom: 9px;
    margin-top: 9px;
}
 input[data-readonly] {
  pointer-events: none;
}
     </style>
 </head>
<body>
<div class="tab-content">
                                	<div id="dsh-dashboard" class="tab-pane in active fade">
<div class="dashboard-content booking-trips">
                                		<h2 class="dash-content-title">Pass Application</h2>
                                        <div class="dashboard-listing booking-listing">
                                        	<div class="dash-listing-heading">
                                                <div class="custom-radio">
                                                    <input type="radio" id="radio01" name="radio" checked/>
                                                    <label for="radio01"><span></span>Fresh Application</label>
                                                </div><!-- end custom-radio -->
                                                
                                              </div>
                                        </div>
                                                
                                                
                                                
                                                <center> <div class="dashboard-listing booking-listing">
                                        	<div class="dash-listing-heading">  
                                         <div>  
                                             <div class="custom-radio">
                                                    <input type="radio" id="radio04" name="radio"/>
                                                    <label for="radio04"><span></span>Pass Application Type</label>
                                             </div>
                                              <select style="width:200px; height: 32px; font-size: 15px;" id="passTypeId">
                                                    <option>Select Pass Type</option>
                                                    <option value="student">Student Pass</option>
                                                    <option value="service">Service Pass</option>
                                                </select>
                                        </div></div>
                                        </div>
                                                </center>
                                                
                                       
                                                
        <div class="student box">                                
            <form method="post" action="studentpassprocess.jsp">
                                                 <h2 class="dash-content-title">Student Pass</h2>
                                             <div class="dashboard-listing booking-listing">
                                            <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                                        
                                                        
                                                        
                                                        
                                                      <!--  <tr>
                                                            <td class="dash-list-icon booking-list-date"><div class="b-date"><h3>18</h3><p>October</p></div></td>
                                                            <td class="dash-list-text booking-list-detail">
                                                            	<h3>Tom's Restaurant</h3>
                                                                <ul class="list-unstyled booking-info">
                                                                	<li><span>Booking Date:</span> 26.12.2017 at 03:20 pm</li>
                                                                    <li><span>Booking Details:</span> 3 to 6 People</li>
                                                                    <li><span>Client:</span> Lisa Smith<span class="line">|</span>lisasmith@youremail.com<span class="line">|</span>125 254 2578</li>
                                                                </ul>
                                                                <button class="btn btn-orange">Message</button>
                                                            </td>
                                                            <td class="dash-list-btn"><button class="btn btn-orange">Cancel</button><button class="btn">Approve</button></td>
                                                        </tr>
                                                        -->
                                                  
                                                                      
				        <tr class="firstrow"> 
                                         <tr>
                                             <legend><font style="font-weight: bold;"><b>1.Personal Details</b> </font></legend>
                                        </tr> 					
                                        <th width="18%">&nbsp;<span class="num">1.1</span> Your Name <font color="red">*</font>
					</th>
                        		<td width="23%"><input type="text" name="name" maxlength="25" value="" onkeypress="return isAlfa(event)" onblur="changeToUpperCase(this)" style="width:200px" id="youthname" required>
					</td>
					<th width="18%">&nbsp;<span class="num">1.2</span> Your Father Name
					<font color="red">*</font>
					</th>
                                        <td width="23%"><input type="text" name="fname" maxlength="25" value="" onkeypress="return isAlfa(event)" onblur="changeToUpperCase(this)" style="width:200px" id="fname" required>
					</td>
        				</tr>
 					<tr class="secondrow">
                                         <th width="18%">&nbsp;<span class="num">1.3</span> Date Of Birth <font color="red">*</font><br><small><font size="1" color="blue">(dd-mm-yyyy)</font> </small>
                                         </th>
                                            <td width="23%"><input type="text" name="dobname" maxlength="10" value="" style="width:200px" id="dob" required> 
                                       </td>
                                	<th width="18%">&nbsp;<span class="num">1.4</span> Gender 
                                        <font color="red">*</font>
					</th>
                                             <td width="23%">
                        		<input type="radio" name="radio" value="Female"  id="gender1" required><label> Female </label>
					<input type="radio" name="radio" value="Male" id="gender2"><label> Male </label>
                                        </td>
                                        </tr>
                                       <tr class="firstrow">
                                	<th width="18%">&nbsp;<span class="num">1.5</span> Mobile No <font color="red">*</font></th>
                        		<td width="23%"><input type="text" name="mnumber" maxlength="10" value="" onkeypress="return isNumber(event)" style="width:200px" id="studentmobileno" required>
         				</td>

                                        <th width="18%">&nbsp;<span class="num">1.6</span> Aadhar No: <font color="red">*</font>	
                                        </th>
					<td width="23%"> <input type="text" name="aadharno" maxlength="12" value="" onkeypress="return isNumber(event)" style="width:200px" id="aadharno" required>
                                         </td>
				        </tr>
                                        <tr class="secondrow">
					<th width="18%">&nbsp;<span class="num">1.7</span> Email <font color="red">*</font></th>
					<td width="23%">
					<input type="text" name="email" value="" onblur="checkEmail(this)" style="width:200px" id="emailId" required>
                                        </td>
 					</tr>                
                                        </tbody></table></div></div>
                                            
                                         <div class="dashboard-listing booking-listing">   
                                        <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                        <tr class="firstrow">
                                        <tr>
                                            <legend><font style="font-weight: bold;"><b>2.Residential Address Details</b> </font></legend></th>
                                        </tr>
                                 	<th width="18%">&nbsp;<span class="num">2.1</span> Address: <font color="red">*</font></th>
                        		<td width="23%"><textarea name="raddress" cols="20" rows="3" style="width:200px" id="raddress" required></textarea>
                                         </td>
                                         <th width="18%">&nbsp;<span class="num">2.2</span> Postal Code: <font color="red">*</font>	
                                         </th>
                                        <td width="23%"><input type="text" name="pincode" maxlength="6" value="" style="width:200px" onkeypress="return isNumber(event)" id="pincode" required></td>
                                        </tr>
                                        </tbody></table></div></div>
                                        
                                            
                                         <div class="dashboard-listing booking-listing">   
                                        <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                        <tr class="firstrow">
                                        <tr>
                                        <legend><font style="font-weight: bold;"><b>3.School/College Details</b> </font></legend> 
                                        </tr>
                                        <th width="18%">&nbsp;<span class="num">3.1</span> School/college Name <font color="red">*</font></th>
                                        <td width="23%"><input type="text" name="scname" style="width:200px" id="instcollname" required></td>
                                       </tr>
                                           <tr class="firstrow">
                                	<th width="18%">&nbsp;<span class="num">3.2</span> Address: <font color="red">*</font></th>
                        		<td width="23%"><textarea name="scaddress" cols="20" rows="3" style="width:200px" id="scaddress" required></textarea>
                                         </td>
                                         <th width="18%">&nbsp;<span class="num">3.3</span> Postal Code: <font color="red">*</font>	
                                        </th>
                                        <td width="23%"><input type="text" name="pincode2" maxlength="6" value="" style="width:200px" onkeypress="return isNumber(event)" id="pincode2" required></td>
                                        </tr>
                                        </tbody></table></div></div>
                                            
                                            
                                         <div class="dashboard-listing booking-listing">   
                                        <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                        <tr class="secondrow">
                                         <tr>
                                        <legend><font style="font-weight: bold;"><b>4.Select Validity Of Pass</b> </font></legend>
                                        </tr>
                                         <th width="5%" nowrap="nowrap"><span class="num"></span> Pass Months <font color="red">*</font>
                                        </th>
                                        <td width="25%">
                                         <select id="myDropdown" name="selectmonth" style="width:200px; height: 30px" id="passTypeId"  onchange="SelectedTextValue(this)" required>
                                         <option value="0">-Select-</option>
                                         <option value="950">3 Months</option>
                                         <option value="1550">5 Months</option>
                                         </select></td>
                                         </tr>
                                         </tbody></table></div></div>
                                            
                                                
                                         <div class="dashboard-listing booking-listing">
                                         <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                         <tr class="secondrow"> 
                                        <tr>
                                        <legend><font style="font-weight: bold;"><b>5.Amount To Be Paid</b> </font></legend>
                                        </tr>
                                         <th width="5.9%">Amount<font color="red">*</font><br> 
                                    	</th> <td width="23%">
                                        <input name="txtContent" type="text" id="inputText" disabled />
                                        </td>
                                       	 </tr>
                                         </tbody></table></div></div>

                                 <div class="dashboard-listing booking-listing">
                                         <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                         <tr class="secondrow"> 
                                        <tr>
                                        <legend><font style="font-weight: bold;"><b>6.Generate Application Number</b> </font></legend>
                                        </tr>
                                        <th width="5.2%">Application Number<font color="red">*</font><br> 
                                    	</th>
                                          <td width="23%" name="appno" id="txtContent">
                                              <input id="random-number" style="margin-right: 20px; width: 155px;" name="appno" value="" data-readonly required/>
                                          <a class="btn btn-orange" id="button" onclick="getElementById('random-number').value=Math.floor(Math.random()*100000000)">
                                                    Generate</a>
                                                
                                                
                                               
                                          </td>
                                         	 </tr>

                                         </tbody></table></div></div>
                                             
                                                <table class="table table-hover">
                                                    <tbody>
                                                        <tr class="secondrow"> 
                                                            <td class="dash-list-btn" style="padding-left: 490px;"><button class="btn btn-orange" style="width: 150px; height: 40px;">Submit</button></td>
                                                        </tr>
                                                    </tbody></table>   

 
  <%

if(request.getParameter("st")!=null)
   {
    %>
    <script>
    alert("Pass Registration Successfull...");
    </script>
    
    <%
    
}
else if(request.getParameter("st1")!=null)
    {
     %>
    <script>
    alert("Name or Mobile Number already used....");
    </script>
    
    <%
    }

  
%>                                                 
                                                </form>
        </div>

                                            
                                           
                                           
                                           
                                           
                                            
                                            
                                        <div class="service box">
                                            
                                         <form method="post" action="servicepassprocess.jsp">
                                                     <h2 class="dash-content-title">Service Pass</h2>

                                        <div class="dashboard-listing booking-listing">
                                            <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                                        
 				        <tr class="firstrow"> 
                                         <tr>
                                             <legend><font style="font-weight: bold;"><b>1.Personal Details</b> </font></legend>
                                        </tr> 					
                                        <th width="18%">&nbsp;<span class="num">1.1</span> Your Name <font color="red">*</font>
					</th>
                        		<td width="23%"><input type="text" name="name" maxlength="25" value="" onkeypress="return isAlfa(event)" onblur="changeToUpperCase(this)" style="width:200px" id="youthname" required>
					</td>
					<th width="18%">&nbsp;<span class="num">1.2</span> Your Father Name
					<font color="red">*</font>
					</th>
                                        <td width="23%"><input type="text" name="fname" maxlength="25" value="" onkeypress="return isAlfa(event)" onblur="changeToUpperCase(this)" style="width:200px" id="fname" required>
					</td>
        				</tr>
 					<tr class="secondrow">
                                         <th width="18%">&nbsp;<span class="num">1.3</span> Date Of Birth <font color="red">*</font><br><small><font size="1" color="blue">(dd-mm-yyyy)</font> </small>
                                         </th>
                                            <td width="23%"><input type="text" name="dobname" maxlength="10" value="" style="width:200px" id="dob" required> 
                                       </td>
                                	<th width="18%">&nbsp;<span class="num">1.4</span> Gender 
                                        <font color="red">*</font>
					</th>
                                             <td width="23%">
                        		<input type="radio" name="radio" value="Female"  id="gender1" required><label> Female </label>
					<input type="radio" name="radio" value="Male" id="gender2"><label> Male </label>
                                        </td>
                                        </tr>
                                       <tr class="firstrow">
                                	<th width="18%">&nbsp;<span class="num">1.5</span> Mobile No <font color="red">*</font></th>
                        		<td width="23%"><input type="text" name="mnumber" maxlength="10" value="" onkeypress="return isNumber(event)" style="width:200px" id="studentmobileno" required>
         				</td>

                                        <th width="18%">&nbsp;<span class="num">1.6</span> Aadhar No: <font color="red">*</font>	
                                        </th>
					<td width="23%"> <input type="text" name="aadharno" maxlength="12" value="" onkeypress="return isNumber(event)" style="width:200px" id="aadharno" required>
                                         </td>
				        </tr>
                                        <tr class="secondrow">
					<th width="18%">&nbsp;<span class="num">1.7</span> Email <font color="red">*</font></th>
					<td width="23%">
					<input type="text" name="email" value="" onblur="checkEmail(this)" style="width:200px" id="emailId" required>
                                        </td>
 					</tr>                
                                        </tbody></table></div></div>
                                            
                                         <div class="dashboard-listing booking-listing">   
                                        <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                        <tr class="firstrow">
                                        <tr>
                                            <legend><font style="font-weight: bold;"><b>2.Residential Address Details</b> </font></legend></th>
                                        </tr>
                                 	<th width="18%">&nbsp;<span class="num">2.1</span> Address: <font color="red">*</font></th>
                        		<td width="23%"><textarea name="raddress" cols="20" rows="3" style="width:200px" id="raddress" required></textarea>
                                         </td>
                                         <th width="18%">&nbsp;<span class="num">2.2</span> Postal Code: <font color="red">*</font>	
                                         </th>
                                        <td width="23%"><input type="text" name="pincode" maxlength="6" value="" style="width:200px" onkeypress="return isNumber(event)" id="pincode" required></td>
                                        </tr>
                                        </tbody></table></div></div>
                                        
                                        
                                            
                                         <div class="dashboard-listing booking-listing">   
                                        <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                        <tr class="secondrow">
                                         <tr>
                                        <legend><font style="font-weight: bold;"><b>3.Select Validity Of Pass</b> </font></legend>
                                        </tr>
                                         <th width="5%" nowrap="nowrap"><span class="num"></span> Pass Months <font color="red">*</font>
                                        </th>
                                        <td width="25%">
                                         <select name="selectmonth" style="width:200px; height: 30px" id="passTypeId"  onchange="SelectedTextValue1(this)" required>
                                         <option value="0">-Select-</option>
                                         <option value="1350">3 Months</option>
                                         <option value="1950">5 Months</option>
                                         </select></td>
                                         </tr>
                                         </tbody></table></div></div>
                                            
                                                
                                         <div class="dashboard-listing booking-listing">
                                         <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                         <tr class="secondrow"> 
                                        <tr>
                                        <legend><font style="font-weight: bold;"><b>4.Amount To Be Paid</b> </font></legend>
                                        </tr>
                                         <th width="5.9%">Amount<font color="red">*</font><br> 
                                    	</th> <td width="23%">
 <input name="txtContent" type="text" id="inputText1" disabled/>                                          </td>
                                       	 </tr>
                                         </tbody></table></div></div>

                                                     
                                                      <div class="dashboard-listing booking-listing">
                                         <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                         <tr class="secondrow"> 
                                        <tr>
                                        <legend><font style="font-weight: bold;"><b>5.Generate Application Number</b> </font></legend>
                                        </tr>
                                        <th width="5.2%">Application Number<font color="red">*</font><br> 
                                    	</th>
                                          <td width="23%" name="appno1" id="txtContent">
                                              <input id="random-number1" style="margin-right: 20px; width: 155px;" name="appno" value="" required data-readonly/>
                                          <a class="btn btn-orange" id="button" onclick="getElementById('random-number1').value=Math.floor(Math.random()*100000000)">
                                                    Generate</a>
                                                
                                                
                                               
                                          </td>
                                         	 </tr>

                                         </tbody></table></div></div>
                                       
                                                     <table class="table table-hover">
                                                    <tbody>
                                                        <tr class="secondrow"> 
                                                            <td class="dash-list-btn" style="padding-left: 490px;"><button class="btn btn-orange" id="btnSubmit" type="submit" style="width: 150px; height: 40px;">Submit</button></td>
                                                        </tr>
                                                    </tbody></table>   
<%

if(request.getParameter("st")!=null)
   {
    %>
    <script>
    alert("Pass Registration Successfull...");
    </script>
    
    <%
    
}
else if(request.getParameter("st1")!=null)
    {
     %>
    <script>
    alert("Name or Mobile Number already used....");
    </script>
    
    <%
    }

  
%>
                                         </form></div>

</div>  </div></div>
<jsp:include page="footer.jsp"></jsp:include>
 
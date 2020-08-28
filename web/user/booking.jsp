<jsp:include page="header.jsp"></jsp:include>

                                    <div class="tab-content">
                                	<div id="dsh-dashboard" class="tab-pane in active fade">
                                    <div class="dashboard-content booking-trips">
                                		<h2 class="dash-content-title">Ticket You have Booked!</h2>
                                        <div class="dashboard-listing booking-listing">
                                        	<div class="dash-listing-heading">
                                                <div class="custom-radio">
                                                    <input type="radio" id="radio01" name="radio" checked/>
                                                    <label for="radio01"><span></span>Details</label>
                                                </div><!-- end custom-radio -->
                                             </div>
                                            
                                            <div class="table-responsive">
                                                <table class="table table-hover">
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
int accno=(Integer)session.getAttribute("accid"); 

String sql="select * from booking inner join account on booking.account_email=account.account_email where account_id='"+accno+"'";
rs1=statement.executeQuery(sql);
while(rs1.next())
    {
        
%>                                                        
                                                        <tr>
                                                            <td class="dash-list-icon booking-list-date"><div class="b-date"><h3><% out.println(rs1.getString("date"));%></h3></div></td>
                                                            <td class="dash-list-text booking-list-detail">
                                                                <ul class="list-unstyled booking-info">
                                                                	<li><span>Booked by:</span> <% out.println(rs1.getString("name"));%></li>
                                                                     <li><span>Total Amount:</span> <% out.println(rs1.getString("amount"));%> RS.</li>
                                                                    <li><span>Client:</span> <% out.println(rs1.getString("name"));%><span class="line">|
                                                                        </span><% out.println(rs1.getString("account_email"));%><span class="line">|
                                                                        </span><% out.println(rs1.getString("mnumber"));%></li>
                                                                </ul>
                                                             </td>
                                                         </tr>
        						  <% } %>
                                                       
                                                    </tbody>
                                                </table>
                                            </div><!-- end table-responsive -->
                                        </div><!-- end booking-listings -->
                                        
                                    </div>
                                    </div>
                                    </div>



<jsp:include page="footer.jsp"></jsp:include>

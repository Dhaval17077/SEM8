 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.util.*,javax.mail.*"%>
 <%@ page import=" java.io.*" %>
 <%@ page import=" java.net.*" %>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.URLConnection"%>
<%@ page import="java.net.URLEncoder"%>



<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String mnumber=request.getParameter("mnumber");
String password=request.getParameter("password");
String cpassword=request.getParameter("cpassword");
session.setAttribute("fname",fname);
session.setAttribute("lname",lname);
session.setAttribute("email",email);
session.setAttribute("mnumber",mnumber);
session.setAttribute("password",password);
session.setAttribute("cpassword",cpassword);


String mob=request.getParameter("mnumber");
Random rand = new Random();
int otp = rand.nextInt(900000) + 100000;
session.setAttribute("otp",otp);
 String requestUrl = "http://amazesms.in/api/pushsms.php?usr=717770&key=010eW3JP40pAAtisyX47VQs3U75OSl&sndr=KRISHN&ph="+mob+"&text="+otp+"&rpt=1";
 		try {                       



                        URL url = new URL(requestUrl);
                        
                        HttpURLConnection uc = (HttpURLConnection)url.openConnection();
                        

                        out.println(uc.getResponseMessage());

                        uc.disconnect();

                } 
catch(Exception ex) 
{
                        out.println(ex.getMessage());

       }
response.sendRedirect("otp.jsp");                                                                
%>
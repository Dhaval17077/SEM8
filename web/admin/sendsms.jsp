 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.util.*,javax.mail.*"%>
 <%@ page import=" java.io.*" %>
 <%@ page import=" java.net.*" %>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.URLConnection"%>
<%@ page import="java.net.URLEncoder"%>



<%
String mob=request.getParameter("phone");
String msg=request.getParameter("appno");
 
 out.println(mob);

 out.println(msg);
 
 String requestUrl = "http://amazesms.in/api/pushsms.php?usr=717770&key=010eW3JP40pAAtisyX47VQs3U75OSl&sndr=KRISHN&ph="+mob+"&text="+msg+"&rpt=1";
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
response.sendRedirect("viewstupassform.jsp?success");                                                                
%>
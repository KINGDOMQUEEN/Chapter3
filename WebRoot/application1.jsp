<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK" pageEncoding="gbk"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
  
  <body>
    <%
       out.print(application.getMimeType("/ee.doc")+"<br>");
       out.print(application.getMimeType("/ee.txt")+"<br>");
       out.print(application.getMimeType("/ee.xls")+"<br>");
       out.print(application.getMimeType("/tomcat.gif")+"<br>");
       out.print(application.getRealPath("/"));
    %>       
  </body>
</html>

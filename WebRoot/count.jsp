<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK" pageEncoding="gbk" %>

<html>
  <head>
  </head>  
  <body>
   <%
     int n=0;
     String counter=(String)application.getAttribute("counter");
     if(counter!=null) n=Integer.parseInt(counter);
     n=n+1;
     out.print("您是第"+n+"位访客");
     counter=String.valueOf(n);
     application.setAttribute("counter",counter);
    %>
  </body>
</html>

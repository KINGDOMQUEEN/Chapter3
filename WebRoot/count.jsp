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
     out.print("���ǵ�"+n+"λ�ÿ�");
     counter=String.valueOf(n);
     application.setAttribute("counter",counter);
    %>
  </body>
</html>

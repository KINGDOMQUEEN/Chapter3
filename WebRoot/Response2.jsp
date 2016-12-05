<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   

  </head>
  
  <body>
   <% 
      out.print("返回一个404响应码");
      response.setHeader("Refresh","定时秒数;url=目标资源的URL");
    %>
  </body>
</html>

<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
   <%
      application.setAttribute("login","tom");
      application.setAttribute("login","John");
      application.removeAttribute("login");
      application.removeAttribute("pw");
      out.print("application属性操作完成");
       %>
  </body>
</html>

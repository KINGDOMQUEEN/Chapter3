<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
   <%
     out.print("sessionÊôÐÔ²Ù×÷");
     session.setAttribute("login","tom");
     session.setAttribute("login","John");
     session.setAttribute("pw","123");
     session.invalidate();
      %>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
  </head>
  
  <body>
   <%
      request.setAttribute("loginName","tom");
      String s=(String)request.getAttribute("loginName");
      out.print(s);
       %>
  </body>
</html>

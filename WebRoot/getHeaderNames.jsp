<%@ page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
   <% Enumeration e=request.getHeaderNames();
      while(e.hasMoreElements())
      {
        String t=(String)e.nextElement();
        out.print(t+"."+request.getHeader(t));
        out.print("<br>");     
        
         
      } 
      %>
  </body>
</html>

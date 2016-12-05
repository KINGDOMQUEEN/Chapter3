<%@ page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   

  </head>
  
  <body>
    <%
       Cookie c[]=request.getCookies();
       if(c!=null)
       {
         for(int i=0;i<c.length;i++)
            out.print(c[i].getName()+"="+c[i].getValue()+"<br>");
       }
       else
            out.print("Ã»ÓÐ·µ»Øcookie");
     %>
  </body>
</html>

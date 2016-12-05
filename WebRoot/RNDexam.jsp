<%@ page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>



<html>
  <head>
    
  </head>
  
  <body>
   <%
      ArrayList list=(ArrayList)request.getAttribute("1");
      Iterator it=list.iterator();
      while(it.hasNext())
      {
       String temp=(String)it.next();
       out.print(temp+"<br>");
      }
      %>
  </body>
</html>

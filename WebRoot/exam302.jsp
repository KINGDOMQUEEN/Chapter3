<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
  
  <body>
    <% 
       String s=(String)request.getAttribute("name");
       out.print("在exam302.jsp中读到exam.301.jsp传来的值="+s); %>
  </body>
</html>

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
       out.print("��exam302.jsp�ж���exam.301.jsp������ֵ="+s); %>
  </body>
</html>

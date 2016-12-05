<%@ page language="java" import="java.util.*,java.awt.*,java.awt.image.*,com.sun.image.codec.jpeg.*" contentType="text/html;charset=GBK" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
  <body>
   <%=session.getAttribute("loginCode1")%>
     
  </body>
</html>

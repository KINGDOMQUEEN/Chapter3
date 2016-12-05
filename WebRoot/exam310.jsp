<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK" pageEncoding="gbk"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>&nbsp; 
   <jsp:useBean id="my1" class="MyBean.JBScope" scope="application"></jsp:useBean>
  您的用户名为：<jsp:getProperty name="my1" property="myName" />
  您的密码为：<jsp:getProperty name="my1" property="pw" />
  </body>
</html>

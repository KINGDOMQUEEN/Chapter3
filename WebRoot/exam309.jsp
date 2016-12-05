<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK" pageEncoding="gbk"%>



<html>
  <head>
   

  </head>
  
  <body>
    <jsp:useBean id="my1" class="MyBean.JBScope" scope="application"></jsp:useBean>
   <jsp:setProperty name="my1" property="myName" value="John" />
   <jsp:forward page="exam310.jsp"></jsp:forward>
   
  </body>
</html>

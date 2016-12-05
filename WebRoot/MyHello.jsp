<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      
    <title>'MyHello.jsp' </title>   
	

  </head>
  <jsp:useBean id="MH" scope="request" class="MyHello.MyHello" />
  <body>
  <center>
  <font size="3">修改变量S前:</font><%=MH.getString() %>
  <%MH.setString("hello everybody!"); %>
  <hr>
   <font size="3">修改变量S后:</font><%=MH.getString() %>
   </center>
  </body>
</html>

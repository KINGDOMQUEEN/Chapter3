<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
    <%
       out.print("输出一段信息<br>");
       out.print("信息是否已经提交？"+response.isCommitted()+"<br>");
       out.print("开始刷新...<br>");
       out.flush();
        out.print("信息是否已经提交？"+response.isCommitted());
     %>
  </body>
</html>

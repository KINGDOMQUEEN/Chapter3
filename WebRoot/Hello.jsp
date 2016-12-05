<%@ page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>
<html>
  <head>   
    <title>Hello.jsp</title>
  </head>  
  <body>
    <h2>JSP ×ªÒëÎª Servlet</h2>  
 <%!
    int k = 0;
%>
<%
    String name = "Hello,Ladies!";
    out.println("Hello,Gentlemen!");
%>
<%= name %>
  </body>
</html>

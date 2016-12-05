<%@ page language="java"  contentType="text/html;charset=GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html>
  <head>
    
  </head>
  
  <body>
  <% 
    String username = request.getParameter("username");
    out.print(username);
    %>
    
    <c:set var="result" value="${3.14*5}" />
    <c:set var="username" scope="session" >
    
    ${param.username}
    </c:set>
    <c:set var="dynTable">
    <table width="400" border="0" cellspacing="1" cellpadding="0">
    <tr>
    <td bgcolor="#CCFFF">&nbsp 1</td>
    <td bgcolor="#CCFFF">&nbsp 2</td>
    <td bgcolor="#CCFFF">&nbsp 3 </td>
    </tr>
    <c:forEach var="i" begin="1" end="5" step="1">
    <tr>
    <td bgcolor="#CCFFF">&nbsp  1</td>
    <td bgcolor="#CCFFF">&nbsp  2</td>
    <td bgcolor="#CCFFF">&nbsp  3</td>
    </tr>
    </c:forEach>
    </table>
    </c:set>
    
    表达式的计算机结果：3.14*5=${result }<br>
    读到表单的用户名：${sessionScope.username}<br>
    打印动态表格：${dynTable}
  </body>
</html>

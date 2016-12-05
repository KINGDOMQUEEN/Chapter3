<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>JSTL核心标签测试</title>
  </head>
  
  <body>
    九九乘法口诀表：<br>
    <c:forEach items="1,2,3,4,5,6,7,8,9" var="i">
    	<c:forEach items="1,2,3,4,5,6,7,8,9" var="j">
    		<c:out value="${i}*${j}=${i*j}"></c:out>&nbsp;&nbsp;
    	</c:forEach>
    	<br>
    </c:forEach>
  </body>
</html>

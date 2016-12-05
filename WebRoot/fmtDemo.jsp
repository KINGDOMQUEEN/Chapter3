<%@ page import="java.util.Date"%>
<%@ page contentType="text/html;charset=GB2312" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
	<head>
		<title>格式化标签库示例</title>
	</head>
	<body>
		<%
			request.setAttribute("now", new Date());
		%>
		<fmt:setLocale value="zh_CN" />	
		<fmt:formatDate  value="${now}" pattern="yyyy.mm.dd hh:mm:ss" /><br>	
		<fmt:formatDate value="${now}"  dateStyle="long"/><br>
		
		<fmt:formatNumber value = "15"  type = "currency"/><br>
		<fmt:formatNumber value = "1.5"  pattern = "$##0.000"/><br>
		<fmt:formatNumber value = "0.5"  type = "percent"/><br>
		
		
	</body>
</html>

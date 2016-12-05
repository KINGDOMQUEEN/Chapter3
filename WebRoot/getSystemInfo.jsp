<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GB2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
	<%
		out.println("Protocol:" + request.getProtocol() + "<br>");
		out.println("Remote Host:" + request.getRemoteHost() + "<br>");
		out.println("Remote Address:" + request.getRemoteAddr() + "<br>");
		out.println("Scheme:" + request.getScheme() + "<br>");
		out.println("QueryString:" + request.getQueryString() + "<br>");
		out.println("Request URI:" + request.getRequestURI() + "<br>");
		out.println("Method:" + request.getMethod() + "<br>");
		out.println("Servlet Path:" + request.getServletPath() + "<br>");
	%>
</body>
</html>

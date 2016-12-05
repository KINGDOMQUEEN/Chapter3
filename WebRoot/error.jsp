<%@ page contentType="text/html; charset=gb2312" import="java.sql.*" isErrorPage="true" %>
<body>
<%
    StackTraceElement a[]=exception.getStackTrace();
 	out.print("出错原因："+exception+"<br>");
	out.print("出错的文件："+a[0].getFileName()+"<br>");
 	out.print("出错的方法名："+a[0].getMethodName()+"<br>");
	out.print("出错的行号："+a[0].getLineNumber()+"<br>");
%>
</body>

<%@ page contentType="text/html; charset=gb2312" import="java.sql.*" isErrorPage="true" %>
<body>
<%
    StackTraceElement a[]=exception.getStackTrace();
 	out.print("����ԭ��"+exception+"<br>");
	out.print("������ļ���"+a[0].getFileName()+"<br>");
 	out.print("����ķ�������"+a[0].getMethodName()+"<br>");
	out.print("������кţ�"+a[0].getLineNumber()+"<br>");
%>
</body>

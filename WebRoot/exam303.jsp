<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

	</head>

	<body>

		<%
               Enumeration e=application.getInitParameterNames();
               out.print("读取Web应用初始化参数：<br>");
               while(e.hasMoreElements())
                   {
                    String n=(String)e.nextElement();
                    String v=(String)application.getInitParameter(n);
                    out.print(n+"="+v+"<br>");
                   }
        %>
	</body>

</html>

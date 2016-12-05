<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GBK" pageEncoding="gbk"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


	</head>

	<body>

		<%
           try
           {   Enumeration e=application.getAttributeNames();
                out.print("读取Web应用共享属性：<br>");
               while(e.hasMoreElements())
               {  String n=(String)e.nextElement();
                  String v=(String)application.getAttribute (n);
                  out.print(n+"="+v+"<br>");
               }
           }catch(Exception e)
           { out.print("出错："+e);
           }
%>

	</body>
</html>

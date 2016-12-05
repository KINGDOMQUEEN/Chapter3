<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'readcookie.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>

<%
String  myName=null;
String  visitedBook=null;
Cookie c[]=request.getCookies();
if(c==null)
{  out.print("没有返回cookie");  }
else
{for(int i=0;i<c.length;i++)
   {  String temp=c[i].getName();
   if(temp.equals("loginName"))
      {myName=c[i].getValue();  }
    if(myName!=null && temp.equals(myName))
       { visitedBook=c[i].getValue();  }
    }
   if(myName!=null)
   {  out.print("您已经登录，用户名="+myName+"<br>");
   if(visitedBook !=null)
       out.print("您最近浏览过的图书书号是："+visitedBook);
    }
else
   {  out.print("您没有登录");  }
   }  
%>
</body> 


</html>

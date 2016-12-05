<%@ page language="java" import="MyBean.StudentBean"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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
	<jsp:useBean id="stu" scope="request" class="MyBean.StudentBean" />
	<jsp:setProperty property="*" name="stu" />
	姓名：<jsp:getProperty property="name" name="stu" />
	年龄：<jsp:getProperty property="age" name="stu" />
	爱好：<jsp:getProperty property="hobby" name="stu" />
</body>
</html>

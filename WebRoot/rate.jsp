<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GBK"%>
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
<title>A JSP Example</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<form action="" method="post" name="form1" target="_self">
		请输入美元： <input name="dollar" type="text">
		<input name="submit" type="submit" id="submit" value="提交">
	</form>
	<%
		String s = request.getParameter("dollar");
		if (s != null && s.length() > 0) {
			double n = Double.parseDouble(s);
			double result = n * 7.8;
			out.print(s + " 美元= " + result + "人民币");
		}
	%>
</body>
</html>

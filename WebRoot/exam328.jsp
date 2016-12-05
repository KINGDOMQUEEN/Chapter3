<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GBK"%>
<%@ taglib uri="http://www.abc.com/tag" prefix="myTag"%>

<html>
<head>

</head>

<body>
	
	<myTag:add number="100" var="aa" />
	1+2+...+100=${aa}
	<br>
	1+2+...+100=<myTag:add>100</myTag:add>
</body>
</html>

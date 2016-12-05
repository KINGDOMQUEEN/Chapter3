<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GB2312"%>

<html>
	<head>


	</head>

	<body>
		<jsp:useBean id="my" class="MyHello.RegForm" scope="page">
			<br><jsp:setProperty name="my" property="*" />
			<br>您的用户名是：<jsp:getProperty name="my" property="userName" />
			<br>您的口令是：<jsp:getProperty name="my" property="password" />
			<br>您的性别是：<jsp:getProperty name="my" property="gender" />
			<br>您的爱好是：
      <%
				String h[] = my.getHobby();
				if (h != null)
				{
					for (int i = 0; i < h.length; i++)
						out.print(h[i]);
				}
			%>
			<br>您的附言是：<jsp:getProperty name="my" property="memo" />
		</jsp:useBean>
	</body>
</html>
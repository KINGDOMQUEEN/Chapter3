<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GB2312"%>

<html>
	<head>


	</head>

	<body>
		<jsp:useBean id="my" class="MyHello.RegForm" scope="page">
			<br><jsp:setProperty name="my" property="*" />
			<br>�����û����ǣ�<jsp:getProperty name="my" property="userName" />
			<br>���Ŀ����ǣ�<jsp:getProperty name="my" property="password" />
			<br>�����Ա��ǣ�<jsp:getProperty name="my" property="gender" />
			<br>���İ����ǣ�
      <%
				String h[] = my.getHobby();
				if (h != null)
				{
					for (int i = 0; i < h.length; i++)
						out.print(h[i]);
				}
			%>
			<br>���ĸ����ǣ�<jsp:getProperty name="my" property="memo" />
		</jsp:useBean>
	</body>
</html>
<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GBK"%>

<html>
	<head>
		<title>ϵͳ��¼</title>

	</head>
	<body>
		<center>
			<form action="MyHello/loginCheck" method="post">
				<table border="2">

					<tr>
						<td>
							<div align="center">
								ϵ ͳ �� ¼
							</div>
						</td>
					</tr>

					<tr>
						<td height="28">
							<span class="style5">�û���</span>
							<input name="loginName" type="text" id="loginName"
								style="width: 150" maxlength="20">
						</td>
					</tr>
					<br>
					<tr>
						<td>
							<span>��&nbsp;&nbsp;��</span>
							<input type="password" name="pw" maxlength="20"
								style="width: 150">
						</td>
					</tr>
					<br>

					<tr>
						<td>
							<div align="center">
								<input type="submit" value="��¼">
								&nbsp;&nbsp;
								<input type="reset" value="ȡ��">
							</div>
						</td>
					</tr>


				</table>
			</form>
		</center>
	</body>
</html>


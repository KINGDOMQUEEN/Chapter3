<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=GBK"%>

<html>
	<head>
		<title>系统登录</title>

	</head>
	<body>
		<center>
			<form action="MyHello/loginCheck" method="post">
				<table border="2">

					<tr>
						<td>
							<div align="center">
								系 统 登 录
							</div>
						</td>
					</tr>

					<tr>
						<td height="28">
							<span class="style5">用户名</span>
							<input name="loginName" type="text" id="loginName"
								style="width: 150" maxlength="20">
						</td>
					</tr>
					<br>
					<tr>
						<td>
							<span>口&nbsp;&nbsp;令</span>
							<input type="password" name="pw" maxlength="20"
								style="width: 150">
						</td>
					</tr>
					<br>

					<tr>
						<td>
							<div align="center">
								<input type="submit" value="登录">
								&nbsp;&nbsp;
								<input type="reset" value="取消">
							</div>
						</td>
					</tr>


				</table>
			</form>
		</center>
	</body>
</html>


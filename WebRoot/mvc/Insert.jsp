<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>


<html>
  <head>
 

  </head>
  <body>
   <center>
   	<font size="7" color="red">92��ѧԺ����ҳ��</font>
   	<hr>
   	<form action="Insert" method="post">
   		<table border="1">
   			<tr>
   			<td>������</td>
   			<td><input name="name"></td>
   			</tr>
   			<tr>
   			<td>���룺</td>
   			<td><input type="password" name="password"></td>
   			</tr>
   			<tr>
   			<td>�Ա�</td>
   			<td><input type="radio" name="sex" value="��">��
   			<input type="radio" name="sex" value="Ů">Ů
   			</td>
   			</tr>
   			<tr>
   			<td>���䣺</td>
   			<td><input type="text" name="age"></td>
   			</tr>
   			<tr>
   			<td colspan="2"><center><input type="submit" value="�� ��">
   			<input type="reset" value="�� ��"></center>
   			</td>
   			</tr>
   		</table>
   	</form>
   	<a href="SearchList.jsp">��ѯ</a>
   </center>
  </body>

</html>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
  
  <body>
  <!-- form action="account.jsp" method="post" name="regist" id="regist" -->
   <form action="/MyServlet/RegFormServlet" method="post" name="regist" id="regist">
    <p>��Աע�᣺</p>
    <p><br>
      �û�����
      <input name="userName" type="text">
    </p>
    <p>
      
      ��   �룺
        <input name="password" type="password">
      <br>
      ��   ��
      <input name="gender" type="radio" value="��" checked="true"/>
      ��
      <input name="gender" type="radio" value="Ů" />
      Ů
      </p>
    <p>��  �ã�<input name="hobby" type="checkbox" value="����" />
����
  <input name="hobby" type="checkbox" value="��ë��" />
��ë��
<input name="hobby" type="checkbox" value="����" />
����
��
<input name="hobby" type="checkbox" value="����" />
����</p>
    <p>�����У� 
     ��<select name="bankAccount" size="1" id="bankAccount">
       <option value="1">�й�����</option>
       <option value="2">��������</option>
       <option value="3">��������</option>    </select>

    </p>
    <p>�� �ԣ�
      
      <label>
      <textarea name="memo" rows="3" id="memo"></textarea>
      </label>
      <label> 
      <input type="submit" name="Submit" value="�ύ">
      </label>
    </p>
  </form>
  
  </body>
</html>

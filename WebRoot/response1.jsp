<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
    <%
       out.print("���һ����Ϣ<br>");
       out.print("��Ϣ�Ƿ��Ѿ��ύ��"+response.isCommitted()+"<br>");
       out.print("��ʼˢ��...<br>");
       out.flush();
        out.print("��Ϣ�Ƿ��Ѿ��ύ��"+response.isCommitted());
     %>
  </body>
</html>

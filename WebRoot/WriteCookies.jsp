<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   

  </head>
  
  <body>
    <% 
       String name="tom";
       String book="tp001,td002,tt003,tr004";
       Cookie C1=new Cookie("loginName",name);
       C1.setMaxAge(30*24*60*60);
       Cookie C2=new Cookie(name,book);
       C2.setMaxAge(30*24*60*60);
       response.addCookie(C1);
       response.addCookie(C2);
       out.print("�ɹ����û�����Ŀ¼Cookie���ؿͻ��ˣ���Ч��30��");
        %>
  </body>
</html>

<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
  
  <body>
    <%
         Locale a=request.getLocale();
         if(a.equals(Locale.CHINA))
            {out.print("ʹ�ü���������Ϣ");}
         else
            {out.print("English Information");}
      %>
  </body>
</html>

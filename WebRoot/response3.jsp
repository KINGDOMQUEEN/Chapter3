<%@ page language="java" import="java.util.*" import="java.io.*" contentType="text/html;charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   

  </head>
  
  <body>
  <% 
   
     response.setContentType("application/vnd.ms-excel"); 
     try 
     { 
       PrintWriter out2=response.getWriter(); 
       out2.println("ѧ��\t����\tƽʱ�ɼ�\t���Գɼ�\t����"); 
       out2.println("S001\t��С��\t87\t65\t=round(C2*0.3+D2*0.7)"); 
       out2.println("S002\t�ܵ�\t77\t87\t=round(C3*0.3+D3*0.7)"); 
        out2.println("S003\t���\t91\t86\t=round(C4*0.3+D4*0.7)"); 
        }catch(Exception e) 
        { out.print("����"+e);}        
   %>
  </body>
</html>

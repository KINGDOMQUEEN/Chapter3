<%@ page language="java" import="java.io.*" contentType="application/x-download" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
  
  <body>
    <% int status=0;
       byte b[]=new byte[1024];
       FileInputStream in=null;
       ServletOutputStream out2=null;
       try
       { response.setHeader("contend-disposition","addachment;filename=d.rar");
         in=new FileInputStream("c:\\apache-tomcat-6.0.29\\webapps\\ROOT\\d.rar");
         out2=response.getOutputStream();
         while(status !=-1)
         { status=in.read(b);
           out2.write(b);
         }
           out2.flush();
       }
       catch(Exception e)
       {  System.out.println(e);
          response.sendRedirect("downError.jsp");
       }
       finally
       { if(in!=null)
               in.close();
         if(out2!=null)
               out.close();
       }   
              
         %>
  </body>
</html>

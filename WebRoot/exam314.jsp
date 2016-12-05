<%@ page language="java" import="com.jspsmart.upload.*" contentType="text/html;charset=GBK"%>


<html>
  <head>
    
  </head>
  
  <body>
   <%
     SmartUpload upload=new SmartUpload();
     upload.initialize(pageContext);
     upload.upload();
     Files collection=upload.getFiles();
     File file=null;
     String fileName=null;
     int fileNumber=0;
     for(int i=0;i<collection.getCount();i++)
     {
       file=collection.getFile(i);
       fileName=file.getFileName();
       
       if(!file.isMissing())
       {
         file.saveAs("/"+fileName);
         out.print("<br>---------上传的文件信息-----------");
         out.print("<br>文件名"+fileName);
         out.print("<br>文件名后缀"+file.getFileExt());
         out.print("<br>文件名大小"+file.getSize());
         fileNumber++;
         
       }
     }
     out.print("<br>共计上传文件数："+fileNumber);
      %>
  </body>
</html>

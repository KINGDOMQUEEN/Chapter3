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
         out.print("<br>---------�ϴ����ļ���Ϣ-----------");
         out.print("<br>�ļ���"+fileName);
         out.print("<br>�ļ�����׺"+file.getFileExt());
         out.print("<br>�ļ�����С"+file.getSize());
         fileNumber++;
         
       }
     }
     out.print("<br>�����ϴ��ļ�����"+fileNumber);
      %>
  </body>
</html>

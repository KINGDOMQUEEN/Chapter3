<%@ page language="java" import="java.io.*" contentType="text/html;charset=GBK" pageEncoding="gbk"%>


    <%
       InputStream a=application.getResourceAsStream("/index.jsp");
       if(a!=null)
         out.print("文件操作成功！");
       else
         out.print("文件操作失败!");
     %>


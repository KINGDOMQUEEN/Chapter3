<%@ page language="java" import="java.io.*" contentType="text/html;charset=GBK" pageEncoding="gbk"%>


    <%
       InputStream a=application.getResourceAsStream("/index.jsp");
       if(a!=null)
         out.print("�ļ������ɹ���");
       else
         out.print("�ļ�����ʧ��!");
     %>


<%@ page language="java" import="java.io.*" contentType="application/x-download" %>

    <% int status=0;
    String temp=null;
    FileReader in=null;
    BufferedReader in2=null;      
       try
       { response.setHeader("contend-disposition","addachment;filename=ee.txt");
         response.setCharacterEncoding("gb2312");
         in=new FileReader("c:\\apache-tomcat-6.0.29\\webapps\\ROOT\\ee.txt");
         in2=new BufferedReader(in);
         while((temp=in2.readLine())!=null)
         { 
           out.println(temp);
         }  
           out.close();
         
           
       }
       catch(Exception e)
       {  System.out.println(e);
          response.sendRedirect("downError.jsp");
       }
       finally
       { if(in2!=null)
               in2.close();
         
       }   
              
         %>



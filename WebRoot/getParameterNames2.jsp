<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
  
  <body>
        <%@ page import="java.util.*" %>
    <%
      Enumeration e=request.getParameterNames();
      while(e.hasMoreElements())
      {
       String varName=(String)e.nextElement();
       if(!varName.equals("hobby"))
       {
          String varValue=request.getParameter(varName);
          out.print(toChinese(varName)+"="+toChinese(varValue));
            
      }
      else
      {
          String varValue[]=request.getParameterValues(varName);
          out.print(varName+"=");
          for(int n=0;n<varValue.length;n++)
          {
            out.print(" "+toChinese(varValue[n]));
            }
      }
      out.print("<br>");
      }
       %>
       
       <%!public   static   String   toChinese(String strvalue)
      {
                  try{
                          if(strvalue==null)
                                return   null;
                          else
                          { 
                           strvalue=new String(strvalue.getBytes("ISO-8859-1"),"GB2312");
                                return strvalue;
                  }
                  }catch(Exception   e){
     
                              return  null;
                  }
      }

%>
  </body>
</html>

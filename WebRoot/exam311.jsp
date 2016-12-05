<%@ page language="java" import="java.util.*,MyHello.*" pageEncoding="ISO-8859-1"%>

<html>
  
 <head>
</head>
  
  <body>
  <img src="a.jpg" width="600" height="800">
   <%
    WaterMark wm=new WaterMark();
    String file=request.getRealPath("/");
    out.println(file+"a.jpg");
    wm.addMark(file+"a.jpg");
     %>
  </body>
</html>

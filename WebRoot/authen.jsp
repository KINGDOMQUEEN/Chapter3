<%@ page language="java" import="java.util.*,java.awt.*,java.awt.image.*,com.sun.image.codec.jpeg.*" contentType="text/html;charset=GBK" pageEncoding="gbk"%>
<html>
  <head>
  </head>
  
  <body>
   <%!    
      Color getColor(int a,int b)
      {
        int n=b-a;
        Random rd=new Random();
        int cr=a+rd.nextInt(n);
        int cg=a+rd.nextInt(n);
        int cb=a+rd.nextInt(n);
        return new Color(cr,cg,cb);
        } %>
   <%
     response.setContentType("image/jpeg"); 
     response.setHeader("pragma","no-cache");
     response.setHeader("cache-control","no-cache");
     response.setDateHeader("Expires",0);
     int width=60,height=20;
     BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB); 
     Graphics g=image.getGraphics();
     Random random=new Random();
     g.setColor(new Color(0,0,0));
     g.fillRect(0,0,width,height);
     g.setFont(new Font("Times New Roman",Font.BOLD,18));
     g.setColor(new Color(84,255,159));
     for(int i=0;i<160;i++)
     {
       int x=0;
       int y=0;
       int x1=100;
       int y1=100;
       g.drawLine(x,y,x+x1,y+y1);
       }
     String number=String.valueOf(1000+random.nextInt(8999));
     String name=request.getParameter("name");
     session.setAttribute(name,number);
     g.setColor(getColor(20,130));
     int x=(int)(width*0.2);
     int y=(int)(height*0.8);
     g.drawString(number,x,y);
     g.dispose();
     JPEGImageEncoder encoder=JPEGCodec.createJPEGEncoder(response.getOutputStream());
     encoder.encode(image);
     out.close();
           
     %>
  </body>
</html>

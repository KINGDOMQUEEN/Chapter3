<%@ page language="java" pageEncoding="GBK" %>
<%@ page import="java.awt.*" %>
<!DOCTYPE HTML PUBLIC "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title>Lomboz JSP</title>
</head>
<body bgcolor="#FFFFFF">


<%MyHello.WaterMaker1 wm = new MyHello.WaterMaker1();

if (wm.createMark("d://a.jpg","http://www.HistoryCreator.com",Color.ORANGE,70f))
{
out.print("���ˮӡ�ɹ���");
}
else
{
out.print("���ˮӡʧ�ܣ�");
}
%>
</body>
</html>


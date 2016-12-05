<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>SQL标签测试</title>
  </head>
  
  <body>
    <sql:setDataSource driver="com.mysql.jdbc.Driver" user="root" password="lab421" url="jdbc:mysql://219.246.178.63:3306/books"/>
    
    <sql:query var="rs">select * from student where id <20</sql:query>
    
    <center><strong><font size="5" color="red">学生成绩表</font></strong><br>
    <table border="1" width="40%">
    	<tr>
    		<th>学号</th><th>姓名</th><th>语文</th><th>数学</th><th>英语</th>
    	</tr>
    	<c:forEach items="${rs.rows}" var="stu">
    		<tr>
    			<td>${stu.id }</td><td>${stu.username }</td><td>${stu.chinesecent }</td><td>${stu.mathcent }</td><td>${stu.englishcent }</td>
    		</tr>
    	</c:forEach>
    </table>
   	<br>
	<sql:update>
		update student set mathcent=mathcent+5 where id<10
	</sql:update>
    <sql:query var="rs">select * from student where id <20</sql:query>
    
    <center><strong><font size="5" color="red">更新后的学生成绩表</font></strong><br>
    <table border="1" width="40%">
    	<tr>
    		<th>学号</th><th>姓名</th><th>语文</th><th>数学</th><th>英语</th>
    	</tr>
    	<c:forEach items="${rs.rows}" var="stu">
    		<tr>
    			<td>${stu.id }</td><td>${stu.username }</td><td>${stu.chinesecent }</td><td>${stu.mathcent }</td><td>${stu.englishcent }</td>
    		</tr>
    	</c:forEach>
    </table>
   	<br>
	</center>
  </body>
</html>

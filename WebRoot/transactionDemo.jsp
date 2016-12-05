<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>SQL标签测试</title>
  </head>
  
  <body>
    <sql:setDataSource dataSource="mysqldb"/>
    
    <sql:query var="rs">select * from bankacount where id <10</sql:query>
    
    <center><strong><font size="5" color="red">银行帐户表</font></strong><br>
    <table border="1" width="40%">
    	<tr>
    		<th align="center">帐号</th><th align="center">姓名</th><th align="center">余额</th>
    	</tr>
    	<c:forEach items="${rs.rows}" var="user">
    		<tr>
    			<td>${user.id }</td><td>${user.username }</td><td align="right">${user.balance }</td>
    		</tr>
    	</c:forEach>
    </table><br>
    
    <sql:transaction>
	<sql:update>
		update bankacount set balance=balance+1000 where id=1
	</sql:update>
	<sql:update>
		update bankacount set balance=balance-1000 where id=2
	</sql:update>
	</sql:transaction>
	
    <sql:query var="rs">select * from bankacount where id <10</sql:query>
    
    <center><strong><font size="5" color="red">更新后的帐户表</font></strong><br>
    <table border="1" width="40%">
    	<tr>
    		<th align="center">帐号</th><th align="center">姓名</th><th align="center">余额</th>
    	</tr>
    	<c:forEach items="${rs.rows}" var="user">
    		<tr>
    			<td>${user.id }</td><td>${user.username }</td><td align="right">${user.balance }</td>
    		</tr>
    	</c:forEach>
    </table><br>
	</center>
  </body>
</html>

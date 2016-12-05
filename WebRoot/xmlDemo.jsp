<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>XML标签测试</title>
	</head>

	<body>
		<x:parse doc="${xml}" var="demoXML">
			<students>
				<student>
					<name>He</name>
					<gender>male</gender>
					<age>42</age>
				</student>
				<student>
					<name>Hu</name>
					<gender>famale</gender>
					<age>40</age>
				</student>
			</students>
		</x:parse>
		<x:out select="$demoXML/students/student/name" />
		<x:out select="$demoXML/students/student/gender" />
		<x:out select="$demoXML/students/student/age" />
		<hr>
		<x:forEach select="$demoXML/students/student">
			<x:out select="name" />
			<x:if select="gender='famale'">女</x:if>
			<x:if select="gender='male'">男</x:if>
			<x:out select="age" />
			<br>
		</x:forEach>
		
		<hr>
		<c:import url="http://localhost:8080/Chapter3/test.xml" var="testXml" />
		<x:parse doc="${testXml}" var="xmlTest" />
		<x:forEach select="$xmlTest/web-app/servlet">
			<x:out select="servlet-name" />
			<x:out select="servlet-class" />
			<br>
		</x:forEach>

	</body>
</html>

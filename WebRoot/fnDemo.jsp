<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
  <title>º¯Êý±êÇ©¿âÊµÀý</title>
</head>
<body>
<c:set var="s1" value="This chapter does not cover every JSTL tag"/>
<table cellpadding="5" border="1">
  <tr>
    <th align="left">Input String</th>
    <th>Substring</th>
	<th>tags</th>
    <th>Result</th>
  </tr>
  <tr>
    <td>${s1}</td>
    <td>this</td>
	<td>\${fn:contains(s1, "this")}</td>
    <td>${fn:contains(s1, "this")}</td>
   </tr>
   <tr>
    <td>${s1}</td>
    <td>this</td>
    <td>\${fn:containsIgnoreCase(s1, "this")}</td>
    <td>${fn:containsIgnoreCase(s1, "this")}</td>
   </tr>
   <tr>
    <td>${s1}</td>
    <td>This</td>
	<td>\${fn:startsWith(s1, "this")}</td>
    <td>${fn:startsWith(s1, "this")}</td>
   </tr>
   <tr>
    <td>${s1}</td>
    <td>tag</td>
	<td>\${fn:endsWith(s1, "tag")}</td>
    <td>${fn:endsWith(s1, "tag")}</td>
   </tr>
   <tr>
    <td>${s1}</td>
    <td>er</td>
	<td>\${fn:indexOf(s1, "er")}</td>
    <td>${fn:indexOf(s1, "er")}</td>
   </tr>
   <c:set var="a1" value='${fn:split(s1," ")}'/>
   <tr>
    <td>${s1}</td>
    <td>+</td>
	<td>\${fn:join(a1,"|")}</td>
    <td>${fn:join(a1,"|")}</td>
   </tr>
   <tr>
    <td>${s1}</td>
    <td> </td>
	<td>\${fn:replace(s1," ","+")}</td>
    <td>${fn:replace(s1," ","+")}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td> </td>
	<td>\${fn:substring(s1,5,18)}</td>
    <td>${fn:substring(s1,5,18)}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td>does </td>
	<td>\${fn:substringAfter(s1,"does")}</td>
    <td>${fn:substringAfter(s1,"does")}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td>does </td>
	<td>\${fn:substringBefore(s1,"does")}</td>
    <td>${fn:substringBefore(s1,"does")}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td></td>
	<td>\${fn:toLowerCase(s1)}</td>
    <td>${fn:toLowerCase(s1)}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td></td>
	<td>\${fn:toUpperCase(s1)}</td>
    <td>${fn:toUpperCase(s1)}</td>
  </tr>
   <tr>
    <td>${s1}</td>
    <td></td>
	<td>\${fn:length(s1)}</td>
    <td>${fn:length(s1)}</td>
  </tr>
  <tr>
    <td>${s1}</td>
    <td></td>
	<td>\${fn:escapeXml(s1)}</td>
    <td>${fn:escapeXml(s1)}</td>
  </tr>
</table>
</body>
</html>

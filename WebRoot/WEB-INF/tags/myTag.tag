<%@ tag pageEncoding="gb2312" %>
<%@ attribute name="number" %>
<%@ tagli uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:doBody var="bodyNumber" />
<c:choose>
  <c:when test="${(not empty bodyNumber) && (not empty number)} ">
  </c:when>
  <c:when test="${(empty bodyNumber) && (empty number)} ">
  </c:when>
  <c:otherwise>
      	<c:if test="${(not empty number)">
      		<c:set var="n" value="${number}" />
      	</c:if>
	<c:if test="${(not empty bodyNumber)">
		<c:set var="n" value="${bodyNumber}" />
	</c:if>
	<c:forEach var="i" being="1" end="${n}" step="1">
		<c:set var="sum" value="${sum+i}" />
	</c:forEach>
	<c:out value="1+2+...+${n}=${sum}" />
  </c:otherwise>
</c:choose>

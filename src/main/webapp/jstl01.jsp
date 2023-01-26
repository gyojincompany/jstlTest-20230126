<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습</title>
</head>
<body>
	<c:set var="id" value="tiger"></c:set>
	아이디 : <c:out value="${id }"></c:out>
	<hr>
	
	<!-- if 문 -->
	<c:if test="${ 10 < 5 }">
		10은 5보다 작다
	</c:if>
	<% 
		if(10<5){		
	%>
		<div class="">
			<h2 class="">10은 5보다 작다</h2>
		</div>
	<%
	}
	%>
	<hr>
	<!-- if~else 문 -->
	<c:choose>
		<c:when test="${10<5 }">
			10은 5보다 크다
		</c:when>
		<%-- jstl 주석 --%>
		<c:when test="${10<7 }">
			10은 7보다 작다
		</c:when>
		<c:otherwise>
			10은 5보다 작다
		</c:otherwise>
	</c:choose>
	<hr>
	<!-- for 문 -->
	<%
		 for(int i=1;i<=10;i=i+2) {//i=1,3,5,7,9
			 out.print("안녕하세요"+i);
		 }
	%>
	<br>
	<c:forEach var="i" begin="1" end="10" step="2">	
		안녕하세요${i }
	</c:forEach>
	
</body>
</html>
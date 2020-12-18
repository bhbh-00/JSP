<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>EL/JSTL 연습</h1>
	<!-- 변수 선언 -->

	<%
		int num = 100;
	%>

	<!-- 변수 출력 -->
	<c:set var="num2" value="10" />
	<%="jps : " + num%><br>

	<!-- JSTL 출력하기 / $ -> EL표시 -->
	<c:out value="JSTL : ${num2}" />
	<br>

	<!-- 조건문 -->
	<%
		num = 10;

		if (num % 2 == 0) {
			out.println("even");
		} else {
			out.println("odd");
		}
	%><br>

	<!-- test에 조건식 / 변수명 구분 잘하기! 자바는 자바 JSTL은 JSTL-->
	<c:if test="${num2 % 2 == 0}">
	even<br>
	</c:if>

	<!-- else if -->
	<c:choose>
		<c:when test="${num2 % 2 == 0}">
			even<br>
		</c:when>
		<c:when test="${num2 % 2 != 0}">
			odd<br>
		</c:when>
	</c:choose>
	<!-- else -->
	<c:choose>
		<c:when test="${num2 % 2 == 0}">
			even
		</c:when>
		<c:otherwise>
			odd
		</c:otherwise>
	</c:choose><br>

	<!-- 반복문 -->
	<%
		for (int i = 1; i < 11; i++) {
			out.println(i);
		}
	%><br>
	<!-- var= "변수명", begin="시작값", end="끝값", step="증가량" -->
	<c:forEach var="i" begin="1" end="10" step="1">${i}</c:forEach><br>

</body>
</html>
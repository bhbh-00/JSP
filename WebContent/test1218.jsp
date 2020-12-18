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

	<h1>1 .문제 - 홀수와 짝수 판별</h1>

	<c:set var="num" value="11" />

	<c:choose>
		<c:when test="${num % 2 == 0}">
		even</c:when>
		<c:otherwise>
		odd</c:otherwise>
	</c:choose>

	<h1>2. 문제 - 할인 대상인지 아닌지 출력</h1>

	<c:set var="age" value="30" />

	<c:choose>
		<c:when test="${age <= 19}">
	할인대상입니다.</c:when>
		<c:when test="${age >= 60}">
	할인대상입니다.</c:when>
		<c:otherwise>
	할인대상이 아닙니다.</c:otherwise>
	</c:choose>

	<h1>3. 문제 - 1부터 100까지 수중 짝수만 출력해주세요.</h1>

	<c:forEach var="num2" begin="0" end="100" step="2">
	${num2}
	</c:forEach>

	<h1>4. 문제 - 응용 구구단</h1>
	<c:set var="n" value="4" />
	<c:set var="m" value="19" />
	<c:set var="limit" value="11" />
	<c:forEach var="dan" begin="${n}" end="${m}" step="1">
		<h4>${dan}단</h4>
		<c:forEach var="gugu" begin="2" end="11" step="2">
			<p>${dan}x ${gugu} = ${dan * gugu}</p>
		</c:forEach>
	</c:forEach>

	<h1>5. 문제 - 삼각형 그리기1</h1>

	<c:set var="y" value="3" />
	<c:forEach var="i" begin="1" end="${y}">
		<c:forEach var="j" begin="1" end="${i}">
				*
	</c:forEach>
	<br>
	</c:forEach>

</body>
</html>
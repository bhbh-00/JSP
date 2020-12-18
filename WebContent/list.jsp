<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="board.article.ArticleDao"%>
<%@ page import="board.article.Article"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% ArrayList<Article> article = (ArrayList<Article>)request.getAttribute("myDate"); %>

<h1>게시판 목록</h1>

</body>
</html>
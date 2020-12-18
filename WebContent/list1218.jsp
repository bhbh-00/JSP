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

	<%
		ArrayList<Article> articles = (ArrayList<Article>) request.getAttribute("mydate");
	%>

	<h1>게시판 목록</h1>

	<table border="1" width="500px" hiehgt="150px">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>내용</td>
			<td>작성자</td>
			<td>조회수</td>
		</tr>
		<%
			for (int i = 0; i < articles.size(); i++) {

				/*for(String str : articles) { 
					out.println(str)
					}*/
				
				// 위와 같은 표현 JSTL <c:forEach var="str" items="${strList}"> ${str}</c:forEach>
		%>
		<tr>

			<td><%=articles.get(i).getArticleNum()%></td>
			<td><%=articles.get(i).getTitle()%></td>
			<td><%=articles.get(i).getBody()%></td>
			<td><%=articles.get(i).getNickname()%></td>
			<td><%=articles.get(i).getHit()%></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>
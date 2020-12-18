package test;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.article.Article;
import board.article.ArticleDao;

@WebServlet("/controller")
public class controller extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		ArticleDao Adao = new ArticleDao();
		ArrayList<Article> articles = Adao.getArticles();
		
		String action = request.getParameter("action");
		
		request.setAttribute("mydate", articles);
		
		String dest = "";
		
		if(action.equals("list")){
			dest = "/list1218.jsp";
		} else {
			dest = "/test.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(dest);
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}

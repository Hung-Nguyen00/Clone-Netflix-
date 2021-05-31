package controller;
 
import java.io.IOException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
 
@WebServlet("/SearchForMovie")
public class SearchForMovieController extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public SearchForMovieController() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name_movie =request.getParameter("searchInput");
		response.sendRedirect("/Netflix_Clone/Inner-Website/search.jsp?name_movie="+name_movie);
        }
    
    }
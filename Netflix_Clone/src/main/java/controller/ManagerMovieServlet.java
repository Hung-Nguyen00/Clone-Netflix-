package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MovieDAO;
import DAO.Movie_ActorDAO;
import model.ActorMovie;
import model.Movie;

/**
 * Servlet implementation class ManagerMovie
 */
@WebServlet("/ManagerMovie")
public class ManagerMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Movie_ActorDAO actorMovieDAO = new Movie_ActorDAO();
       MovieDAO movieDAO = new MovieDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerMovieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String movie_id = request.getParameter("movie_id");
		String url = "";
		try {
			switch (command) {
				case "delete":
					movieDAO.delete(Integer.parseInt(movie_id));
					url = "/Netflix_Clone/Admin/dist/movie_Movie.jsp";
					break;
			}
		} catch (Exception e) {
		}
		response.sendRedirect(url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String director = request.getParameter("director");
		String url = "", error = "";
		try {
			if (error.length() == 0) {
				switch (command) {
				case "insert":
					if(director != null)
					{
						
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
					else
					{
						
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
					
				case "update":
					if(director.equals("true"))
					{
						
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
					else
					{
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
				}
			} else {
				url = "/Netflix_Clone/Admin/dist/actor.jsp";
			}
		} catch (Exception e) {
		}
			response.sendRedirect(url);
	}
	
}


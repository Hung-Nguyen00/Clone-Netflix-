package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CategoryDAO;
import DAO.MovieDAO;
import DAO.Movie_ActorDAO;
import DAO.Movie_Category;
import model.ActorMovie;
import model.DetailMovie;
import model.Movie;

/**
 * Servlet implementation class ManagerMovie
 */
@WebServlet("/ManagerMovie")
public class ManagerMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Movie_ActorDAO actorMovieDAO = new Movie_ActorDAO();
       MovieDAO movieDAO = new MovieDAO();
       CategoryDAO cateDAO = new CategoryDAO();
       Movie_Category movieCateDAO = new Movie_Category();
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
		String stt = request.getParameter("stt");
		
		String sttCate = request.getParameter("sttCate");
		String url = "";
		try {
			switch (command) {
				case "delete":
					movieDAO.delete(Integer.parseInt(movie_id));
					url = "/Netflix_Clone/Admin/dist/movie_Movie.jsp";
					break;
				case "deleteActor":
					actorMovieDAO.delete(Integer.parseInt(stt));
					url = "/Netflix_Clone/Admin/dist/create_movie.jsp?movie_id=" + movie_id;
					break;
				case "deleteCate":
					movieCateDAO.delete(Integer.parseInt(sttCate));
					url = "/Netflix_Clone/Admin/dist/create_movie.jsp?movie_id=" + movie_id;
					break;
			}
		} catch (Exception e) {
		}
		response.sendRedirect(url);
	}
	//1. Create Movie
	//2. Create Catogories
	//3. Add Cetogories in detail_movie
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String name = request.getParameter("name");
		String maturity = request.getParameter("maturity_rate");
		String duration = request.getParameter("duration");
		String image = request.getParameter("image");
		String trailer = request.getParameter("trailer");
		String movie = request.getParameter("movie");
		String description = request.getParameter("description");
		String logo = request.getParameter("logo");
		String top_hot = request.getParameter("top_hot");
			
		String actor_id = request.getParameter("browActor");
		String cate_id = request.getParameter("browCate");
		
		String url = "", error = "";
		try {
			if (error.length() == 0) {
				switch (command) {
				case "insert":
					int movie_id = movieDAO.getMaxId() + 1;
					if(top_hot != null)
					{	
						movieDAO.insert(new Movie(movie_id, name, description, image, trailer, movie, logo, maturity, duration, Byte.parseByte("1")));
						url = "/Netflix_Clone/Admin/dist/create_movie.jsp?movie_id=" + movie_id;
						request.setAttribute("succced", "A new movie is created");	
						break;
					}
					else
					{
						movieDAO.insert(new Movie(movie_id, name, description, image, trailer, movie, logo, maturity, duration, Byte.parseByte("2")));
						url = "/Netflix_Clone/Admin/dist/create_movie.jsp?movie_id=" + movie_id;
						request.setAttribute("succced", "A new movie is created");	
						break;
					}
				case "insertActor":
						int stt = actorMovieDAO.getMaxId() + 1;
						actorMovieDAO.insert(new ActorMovie(stt, Integer.parseInt(request.getParameter("movie_id")), Integer.parseInt(actor_id)));
						url = "/Netflix_Clone/Admin/dist/create_movie.jsp?movie_id=" +  request.getParameter("movie_id");
						request.setAttribute("succced", "A new movie is created");	
						break;
				case "insertCate":
						int sttCate = cateDAO.getMaxStt() + 1;
						movieCateDAO.insert(new DetailMovie(sttCate, Integer.parseInt(request.getParameter("movie_id")), Integer.parseInt(cate_id)));
						url = "/Netflix_Clone/Admin/dist/create_movie.jsp?movie_id=" +  request.getParameter("movie_id");
						request.setAttribute("succced", "A new movie is created");	
						break;
												
				case "update":
					if(top_hot != null)
					{
						movieDAO.update(new Movie(Integer.parseInt(request.getParameter("movie_id")), name, description, image, trailer, movie, logo, maturity, duration, Byte.parseByte("1")));
						url = "/Netflix_Clone/Admin/dist/create_movie.jsp?movie_id=" + request.getParameter("movie_id");
						request.setAttribute("succced", "Update succced");	
						break;
					}
					else
					{
	
						movieDAO.update(new Movie(Integer.parseInt(request.getParameter("movie_id")), name, description, image, trailer, movie, logo, maturity, duration, Byte.parseByte("2")));
						url = "/Netflix_Clone/Admin/dist/create_movie.jsp?movie_id=" + request.getParameter("movie_id");
						request.setAttribute("succced", "Update succced");	
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


package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SeasonDAO;
import DAO.SeriesDAO;
import model.SeasonMovie;

/**
 * Servlet implementation class ManagerActorServlet
 */
@WebServlet("/SeasonServlet")
public class SeasonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	SeasonDAO seasonDAO = new SeasonDAO();  
	SeriesDAO seriesDAO = new SeriesDAO();
	/**
     * @see HttpServlet#HttpServlet()
     */
    public SeasonServlet() {
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
		String season_id = request.getParameter("season_id");
		String url = "";
		try {
			switch (command) {
				case "deleteSeason":
					seasonDAO.delete((byte)Integer.parseInt(season_id));
					request.setAttribute("succced", "A season is deleted successfully");
					url = "/Admin/dist/detail_TVShow.jsp?movie_id=" + movie_id;
			}
		} catch (Exception e) {
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String command = request.getParameter("command");
		
		String movie_id = request.getParameter("movie_id");
		String url = "";
		StringBuilder error = new StringBuilder(); 
		
		
		try {
			if (error.length() == 0) {
				switch (command) {
				case "insertSeason":
						int addSeason_id = seasonDAO.getMaxId() + 1;
						seasonDAO.insert(new SeasonMovie((byte) addSeason_id, Integer.parseInt(movie_id)));
						request.setAttribute("succced", "A movie's season is created successfully");
						url = "/Admin/dist/detail_TVShow.jsp?movie_id=" + movie_id;
				}
			} else {
			
				url = "/Admin/dist/detail_TVShow.jsp?movie_id=" + movie_id;
			}
		} catch (Exception e) {
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}

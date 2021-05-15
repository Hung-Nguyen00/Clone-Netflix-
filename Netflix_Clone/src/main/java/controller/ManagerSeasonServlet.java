package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SeasonDAO;
import DAO.SeriesDAO;
import model.SeasonMovie;
import model.SeriesMovie;

/**
 * Servlet implementation class ManagerActorServlet
 */
@WebServlet("/ManagerSeason")
public class ManagerSeasonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	SeasonDAO seasonDAO = new SeasonDAO();  
	SeriesDAO seriesDAO = new SeriesDAO();
	/**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerSeasonServlet() {
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
		String series_id = request.getParameter("series_id");
		String url = "";
		try {
			switch (command) {
				case "deleteSeries":
					seriesDAO.delete(Integer.parseInt(series_id));
					url = "/Netflix_Clone/Admin/dist/create_series.jsp?movie_id=" + movie_id + "&" + "season_id="+ season_id;
					break;
				case "deleteSeason":
					seasonDAO.delete((byte)Integer.parseInt(season_id));
					url = "/Netflix_Clone/Admin/dist/detail_TVShow.jsp?movie_id=" + movie_id;
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
		
		String movie_id = request.getParameter("movie_id");
		int season_id = Integer.parseInt(request.getParameter("season_id"));
		String series_id = request.getParameter("series_id");
		
		
		String duration = request.getParameter("duration");
		String movie = request.getParameter("movie");
		String description = request.getParameter("description");
		String url = "", error = "";
		try {
			if (error.length() == 0) {
				switch (command) {
				case "insertSeries":
						int series_idI = seriesDAO.getMaxId() +1;
						seriesDAO.insert(new SeriesMovie(series_idI, (byte) season_id, description, duration, movie));
						url = "/Netflix_Clone/Admin/dist/create_series.jsp?movie_id=" + movie_id + "&" + "season_id="+ season_id;
						break;

				case "updateSeries":
						seriesDAO.update(new SeriesMovie(Integer.parseInt(series_id), (byte) season_id, description, duration, movie));
						url = "/Netflix_Clone/Admin/dist/update_series.jsp?movie_id=" + movie_id + "&" + "season_id="+ season_id + "&" + "series_id=" + series_id;
						break;
				case "insertSeason":
						int addSeason_id = seasonDAO.getMaxId() + 1;
						seasonDAO.insert(new SeasonMovie((byte) 7, Integer.parseInt(movie_id)));
						url = "/Netflix_Clone/Admin/dist/detail_TVShow.jsp?movie_id=" + movie_id;
				}
			} else {
				url = "/Netflix_Clone/Admin/dist/detail_TVShow.jsp?movie_id=" + movie_id;
			}
		} catch (Exception e) {
		}
			response.sendRedirect(url);
	}

}

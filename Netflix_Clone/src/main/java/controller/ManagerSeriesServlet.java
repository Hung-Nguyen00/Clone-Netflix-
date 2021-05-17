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
import model.SeriesMovie;

/**
 * Servlet implementation class ManagerActorServlet
 */
@WebServlet("/ManagerSeries")
public class ManagerSeriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	SeasonDAO seasonDAO = new SeasonDAO();  
	SeriesDAO seriesDAO = new SeriesDAO();
	/**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerSeriesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
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
					url = "/Admin/dist/create_series.jsp?movie_id=" + movie_id + "&" + "season_id="+ season_id;
					request.setAttribute("succced", "A Serie is deleted sucessfully");	
					break;
			}
		} catch (Exception e) {
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String command = request.getParameter("command");
		
		String valiUpdate = request.getParameter("valiUpdate");
		String valiInsert = request.getParameter("valiInsert");
		String movie_id = request.getParameter("movie_id");
		int season_id = Integer.parseInt(request.getParameter("season_id"));
		String series_id = request.getParameter("series_id");
		
		String duration = request.getParameter("duration");
		String movie = request.getParameter("movie");
		String description = request.getParameter("description");
		String url = "";
		
		StringBuilder error = new StringBuilder(); 
		if(duration == "" || duration == null)
		{
			error.append("Duration is not empty </br>");	
		}
		if(movie == "" || movie == null)
		{
			error.append("Movie is not empty </br>");	
		}
		if(description == "" || description == null)
		{
			error.append("Description is not empty </br>");	
		}
	
		try {
			if (error.length() == 0) {
				switch (command) {
				case "insertSeries":
						int series_idI = seriesDAO.getMaxId() +1;
						seriesDAO.insert(new SeriesMovie(series_idI, (byte) season_id, description, duration, movie));
						request.setAttribute("succced", "A Serie is create sucessfully");	
						url = "/Admin/dist/create_series.jsp?movie_id=" + movie_id + "&" + "season_id="+ season_id;
						break;

				case "updateSeries":
						seriesDAO.update(new SeriesMovie(Integer.parseInt(series_id), (byte) season_id, description, duration, movie));
						request.setAttribute("succced", "A Serie is updated sucessfully");	
						url = "/Admin/dist/update_series.jsp?movie_id=" + movie_id + "&" + "season_id="+ season_id + "&" + "series_id=" + series_id;
						break;
				}
			} else {
					if(valiInsert == "")
					{
						request.setAttribute("error", error.toString());
						url = "/Admin/dist/create_series.jsp?movie_id=" + movie_id + "&" + "season_id="+ season_id;
					}else
					{
						request.setAttribute("error", error.toString());
						url = "/Admin/dist/update_series.jsp?movie_id=" + movie_id + "&" + "season_id="+ season_id + "&" + "series_id=" + series_id;
					}
				
				
			}
		} catch (Exception e) {
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}

package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BannerDAO;

import model.Banner;


/**
 * Servlet implementation class ManagerActorServlet
 */
@WebServlet("/ManagerBannerServlet")
public class ManagerBannerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BannerDAO bannerDAO = new BannerDAO();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerBannerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String movie_id = request.getParameter("movie_id");
		int menu_id = Integer.parseInt(request.getParameter("menu_id"));
		int banner_id = Integer.parseInt(request.getParameter("banner_id"));
		String url = "";
		
		StringBuilder error = new StringBuilder(); 
		StringBuilder success = new StringBuilder(); 
		if(movie_id == "" || movie_id== null)
		{
			error.append("Movie is not empty </br>");
		}
		
		try {
			if (error.length() == 0) {
				switch (command) {
				case "update":
					bannerDAO.update(new Banner((byte)banner_id, (byte) menu_id, Integer.parseInt(movie_id) ));
					url = "/Netflix_Clone/Admin/dist/banner.jsp";
					break;						
				}
			} else {
				url = "/Netflix_Clone/Admin/dist/banner.jsp";
			}
		} catch (Exception e) {
		}
			response.sendRedirect(url);
	}

}

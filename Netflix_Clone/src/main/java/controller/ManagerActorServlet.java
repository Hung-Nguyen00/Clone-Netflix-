package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AccountDAO;
import DAO.ActorDAO;
import model.Account;
import model.Actor;

/**
 * Servlet implementation class ManagerActorServlet
 */
@WebServlet("/ManagerActorServlet")
public class ManagerActorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ActorDAO actorDAO = new ActorDAO();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerActorServlet() {
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
		String actor_id = request.getParameter("actor_id");
		String url = "";
		try {
			switch (command) {
				case "delete":
					actorDAO.delete(Integer.parseInt(actor_id));
					url = "/Netflix_Clone/Admin/dist/actor.jsp";
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
					if(director.equals("false"))
					{
						actorDAO.insert(new Actor(actorDAO.getMaxId()+1, first_name, last_name, Byte.parseByte("2")));
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
					if(director.equals("true"))
					{
						actorDAO.insert(new Actor(actorDAO.getMaxId()+1, first_name, last_name, Byte.parseByte("1")));
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
					
				case "update":
					if(director.equals("true"))
					{
						actorDAO.update(new Actor(Integer.parseInt(request.getParameter("actor_id")), first_name, last_name, Byte.parseByte("1")));
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
					else
					{
						actorDAO.update(new Actor(Integer.parseInt(request.getParameter("actor_id")), first_name, last_name, Byte.parseByte("0")));
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

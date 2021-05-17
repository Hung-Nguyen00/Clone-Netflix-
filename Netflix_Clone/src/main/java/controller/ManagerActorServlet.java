package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		
		StringBuilder error = new StringBuilder(); 
		StringBuilder success = new StringBuilder(); 
		String url = "";
		if(first_name == "" || first_name== null)
		{
			error.append("first name is not empty </br>");
			
		}
		if(last_name == "" || last_name== null)
		{
			error.append("last_name is not empty </br>");
		}
		
		try {
			if (error.length() == 0) {
				switch (command) {
				case "insert":
					if(director != null)
					{
						actorDAO.insert(new Actor(actorDAO.getMaxId()+1, first_name, last_name, Byte.parseByte("2")));
						success.append("A new Actor is created susscessfully");
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
					else
					{
						actorDAO.insert(new Actor(actorDAO.getMaxId()+1, first_name, last_name, Byte.parseByte("1")));
						success.append("A new Actor is created susscessfully");
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
				case "update":
					if(director.equals("true"))
					{
						actorDAO.update(new Actor(Integer.parseInt(request.getParameter("actor_id")), first_name, last_name, Byte.parseByte("1")));
						success.append("Updated succeeded");
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
					else
					{
						actorDAO.update(new Actor(Integer.parseInt(request.getParameter("actor_id")), first_name, last_name, Byte.parseByte("0")));
						success.append("Updated succeeded");
						url = "/Netflix_Clone/Admin/dist/actor.jsp";
						break;
					}
				default:
					request.setAttribute("success", success.toString());
				}
			} else {
				request.setAttribute("error", error.toString());
				url = "/Netflix_Clone/Admin/dist/actor.jsp";
			}
		} catch (Exception e) {
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}

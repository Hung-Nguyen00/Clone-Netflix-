package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AccountDAO;
import model.Account;
/**
 * Servlet implementation class ManagerAccountServlett
 */
@WebServlet("/ManagerAccountServlet")
public class ManagerAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AccountDAO accountDAO = new AccountDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String email = request.getParameter("email");
		String url = "";
		try {
			switch (command) {
				case "delete":
					accountDAO.delete(email);
					url = "/Netflix_Clone/Admin/dist/account.jsp";
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String	phone = request.getParameter("phone");
		String expiration = request.getParameter("date");
		String url = "", error = "";
		try {
			if (error.length() == 0) {
				switch (command) {
				case "insert":
					accountDAO.insert(new Account(email, password, expiration, phone));
					url = "/Netflix_Clone/Admin/dist/account.jsp";
					break;
				case "update":
					accountDAO.update(new Account(request.getParameter("email_account"), password, expiration, phone));
					url = "/Netflix_Clone/Admin/dist/account.jsp";
					break;
				}
			} else {
				url = "/Netflix_Clone/Admin/dist/account.jsp";
			}
		} catch (Exception e) {
		}
			response.sendRedirect(url);
		 // 1. create new Update
		// 2. checkEmail() in DAO.
		// 3. get value from  request.Parameter('email')
		// 4. CheckEmail'email() is True ? update : insert.
		// 5. update: showInfo('email') -> form update;
		// 5. insert: 
	}

}

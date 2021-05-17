package controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AdminAccountDAO;
import model.AdminAccount;
/**
 * Servlet implementation class ManagerAccountServlett
 */
@WebServlet("/ManagerAdmin")
public class ManagerAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 AdminAccountDAO adminDAO = new AdminAccountDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   HttpSession session = request.getSession(false);
	        if (session != null) {
	            session.invalidate();
	            response.sendRedirect("/Netflix_Clone/Admin/dist/Login.jsp");    
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String command = request.getParameter("command");
		String name_account = request.getParameter("name_account");
		String password = request.getParameter("password");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String url = "";
		
		StringBuilder error = new StringBuilder(); 
		if(name_account == "" || name_account == null)
		{
			error.append("Account's name is not empty");
		}
		if(password == "" || password == null)
		{
			error.append("Password is not empty");
		}
		
		try {
			if(adminDAO.valiAccountOfAdmin(name_account) == true)
			{
				error.append("Account is existed");
				url = "/Admin/dist/create_account.jsp";
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			if (error.length() == 0) {
				AdminAccount admin = new AdminAccount();
				switch (command) {
//				case "insert":
//					accountDAO.insert(new Account(email, password, expiration, phone));
//					success.append("New a account is created susscessfully");
//					request.setAttribute("success", success.toString());
//					url = "/Admin/dist/account.jsp";
//					break;
//				case "update":
//					accountDAO.update(new Account(request.getParameter("email_account"), password, expiration, phone));
//					url = "/Admin/dist/account.jsp";
//					success.append("Updated susscessfully");
//					request.setAttribute("success", success.toString());
//					break;
//				}
				case "login":
					admin = adminDAO.checkAdmin(name_account, password);
					if( admin != null)
					{
						session.setAttribute("user", admin);
						url = "/Admin/dist/index.jsp";
					}
					else {
						session.setAttribute("error", "Account's name or password incorrect.!");
						url = "/Admin/dist/Login.jsp";
					}
					break;
				}
				
			} else {
				request.setAttribute("error", error.toString());
				url = "/Admin/dist/Login.jsp";
			}
		} catch (Exception e) {
			
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		
		
		
		 // 1. create new Update
		// 2. checkEmail() in DAO.
		// 3. get value from  request.Parameter('email')
		// 4. CheckEmail'email() is True ? update : insert.
		// 5. update: showInfo('email') -> form update;
		// 5. insert: 
	}

}

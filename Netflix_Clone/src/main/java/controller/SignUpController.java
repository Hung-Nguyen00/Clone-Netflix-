package controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.Account;
import DAO.AccountDAO;
 
@WebServlet("/signup")
public class SignUpController extends HttpServlet {
    private static final long serialVersionUID = 1L;
	AccountDAO accountDAO = new AccountDAO();
 
    public SignUpController() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		try {
			if(accountDAO.checkEmail(email, password)) {
				response.sendRedirect("/Netflix_Clone/Inner-Website/signup.jsp");
				
			}else
				{
					System.out.println(accountDAO.signUpAccount(email, password));
					HttpSession session = request.getSession();
					session.setAttribute("email", email);
					response.sendRedirect("/Netflix_Clone/Inner-Website/browse.jsp");
					}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        }
    }



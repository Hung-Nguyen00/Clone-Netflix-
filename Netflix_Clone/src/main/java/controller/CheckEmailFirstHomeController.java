package controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.Account;
import DAO.AccountDAO;
 
@WebServlet("/CheckEmailFirstHome")
public class CheckEmailFirstHomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;
	AccountDAO accountDAO = new AccountDAO();
 
    public CheckEmailFirstHomeController() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String email = request.getParameter("email-input");
		try {
			if (accountDAO.valiEmail(email)) {
				response.sendRedirect("/Netflix_Clone/Inner-Website/login.jsp?emailPar="+email);
			}else {
				response.sendRedirect("/Netflix_Clone/Inner-Website/signup.jsp?emailPar="+email);
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



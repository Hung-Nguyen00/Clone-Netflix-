package controller;
 
import java.io.IOException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.AccountChild;
import DAO.Account_ChildDAO;
 
@WebServlet("/logintoid")
public class LoginToId extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public LoginToId() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
    	int account_id = Integer.parseInt(request.getParameter("account_id"));
    	HttpSession sessionId = request.getSession();
		sessionId.setAttribute("account_id", account_id);
		response.sendRedirect("/Netflix_Clone/Inner-Website/index.jsp?menu_id=0");
        }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
    	int account_id = Integer.parseInt(request.getParameter("account_id"));
    	HttpSession sessionId = request.getSession();
		sessionId.setAttribute("account_id", account_id);
		response.sendRedirect("/Netflix_Clone/Inner-Website/index.jsp?menu_id=0");
        }
    }
package controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mysql.cj.Session;
import DAO.Account_ChildDAO;
import model.Account;
import model.AccountChild;
/**
 * Servlet implementation class ManagerAccountServlett
 */
@WebServlet("/CreateAccountChild")
public class CreateAccountChild extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Account_ChildDAO dao = new Account_ChildDAO();
    public CreateAccountChild() {
        super();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String avatar = "../Inner-Website/data/img/gulogo-6.jpg";
		String account_name = request.getParameter("account_name");
		String email= String.valueOf(session.getAttribute("email"));
		try {
			int id = dao.getMaxId() + 1;
			System.out.println(account_name);
			System.out.println(account_name);
			System.out.println(avatar);
			System.out.println(email);
			dao.insert(new AccountChild((byte) id,account_name,avatar,email));
		} catch (Exception e) {
		}
		response.sendRedirect("/Netflix_Clone/Inner-Website/browse.jsp");
	}
	

}

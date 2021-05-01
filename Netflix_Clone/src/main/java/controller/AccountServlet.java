package controller;

import dao.AccountDao;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sun.security.provider.MD5;

public class AccountServlet extends HttpServlet {
    AccountDao accountDao = new AccountDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        Account acc = new Account();
        HttpSession session = request.getSession();

        switch (command) {
            case "insert":
                acc.setEmail(request.getParameter("inputUsername"));
                acc.setPasswordAccount(request.getParameter(MD5.encryption("inputPassword")));
                accountDao.insertAccount(acc);
                session.setAttribute("inputUsername", acc);
                url = "/Index.jsp";
                break;
        }
        
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}

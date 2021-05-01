package controller;

import dao.AccountDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckEmailServlet extends HttpServlet {
    AccountDao accountDao = new AccountDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (accountDao.checkEmail(request.getParameter("username"))) {
            response.getWriter().write("<span class=\"text-danger\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i> Account already existed<br/></span>");
        }
    }
}


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
    <%@page import="net.weflix.login.*"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="ISO-8859-1">
            <title>Netflix login page</title>
        </head>

        <body>

            <jsp:useBean id="login" class="src.connect.login.LoginBean" />

            <jsp:setProperty property="*" name="login" />

            <%
                LoginDao loginDao = new LoginDao();
                boolean status = loginDao.validate(login);
                if (status) {
                    response.sendRedirect("/WebContent/Inner-Website/index.jsp");
                } else {
                    response.sendRedirect("/WebContent/Inner-Wensite/login.jsp");
                }
            %>
        </body>

        </html>
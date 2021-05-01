<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*"%>
<%-- <%@ tablib prefix="jsp" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <title>Netflix login page</title>
</head>

<body>
    <jsp:useBean id="account" class="Account"></jsp:useBean>
    <jsp:setProperty property="*" name="account" />
    <%
        LoginDao loginDao = new LoginDao();
        String email = account.getEmail(),
            password = account.getPasswordAccount();
        boolean status = loginDao.checkLogin(email, password);
        if (status) {
            response.sendRedirect("/WebContent/Inner-Website/index.jsp");
        } else {
            response.setAttribute("inputUsername", email);
            response.setAttribute("inputPassword", password);
            response.getRequestDispatcher("/WebContent/Inner-Wensite/login.jsp").forward(request, response);
        }
    %>
</body>
</html>
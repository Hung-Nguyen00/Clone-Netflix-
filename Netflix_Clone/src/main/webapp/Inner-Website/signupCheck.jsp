<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="connect.login.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <title>Create account</title>
</head>

<body>
    <jsp:useBean id="login" class="connect.login.LoginBean" />
    <jsp:setProperty property="*" name="login" />
    <%
        LoginDao loginDao = new LoginDao();
        boolean status = loginDao.validate(login);
        if (status) {
            response.setAttribute("inputUsername", loginBean.getInputUsername());
            response.setAttribute("inputPassword", loginBean.getInputPassword());
            response.setAttribute("inputConfirm", loginBean.getInputConfirm());
            response.getRequestDispatcher("/WebContent/Inner-Wensite/signup.jsp").forward(request, response);
        } else {
            response.sendRedirect("/WebContent/Inner-Wensite/login.jsp");
        }
    %>
</body>

</html>
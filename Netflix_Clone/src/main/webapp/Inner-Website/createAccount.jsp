<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.Account_ChildDAO" %>
<%@ page import="model.AccountChild" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Inner-Website/lib/css/inner-style.css">
    <title>Create Account</title>
</head>

<body>
<c:set var = "root" value="${pageContext.request.contextPath}"/>
<%
response.setHeader("Cache-Control","no-cahe, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
	if(session.getAttribute("email")==null){
		response.sendRedirect("/Netflix_Clone/Inner-Website/firstHome.jsp");
	}
%>
<%
	Account_ChildDAO ac_dao = new Account_ChildDAO();
	String email= String.valueOf(session.getAttribute("email"));
	 %>
    <header>
        <a href="#" class="logo"><img src="https://truecostmovie.com/img/TTC/wp-content/uploads/2015/10/netflix_logo_digitalvideo-1.png" alt=""></a>
    </header>
    <form action="${root}/CreateAccountChild" method="post">
    <div class="Create-ID-container">
        <div class="Create-ID-Header Create-ID-item">
            <h1>
                Add Profile
            </h1>
            <p>Add profile for another watching Netflix</p>
        </div>
        <div class="Create-ID-Info Create-ID-item">
            <div class="Create-ID-Info-Avatar">
                <img src="../Inner-Website/data/img/gulogo-6.jpg" alt="">
            </div>
            <div class="Create-ID-Info-Name">
                <input type="text" name="account_name" id="">
            </div>
        </div>
        <div class="Create-ID-Button Create-ID-item">
            
            <button type="submit" class="Create-ID-Continue-btn">
                Continue
            </button>
            <button class="Create-ID-Cancel-btn">
                <a href="../Inner-Website/browse.jsp">Cancel</a>
            </button>
        </div>
    </div>
    </form>

</body>

</html>
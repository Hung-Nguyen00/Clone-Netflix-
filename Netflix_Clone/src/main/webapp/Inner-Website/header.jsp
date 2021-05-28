<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MenuDAO" %>
<%@ page import="model.Menu" %>
<%@ page import="DAO.Account_ChildDAO" %>
<%@ page import="model.AccountChild" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var = "root" value="${pageContext.request.contextPath}"/>
<%
	MenuDAO menu_dao = new MenuDAO();
	Account_ChildDAO ac_dao = new Account_ChildDAO();
	String email_session = session.getAttribute("email").toString();
	int id_session = Integer.valueOf(session.getAttribute("account_id").toString());
	 %>
	<!-- Header start -->
    <header>
        <a href="index.jsp" class="logo"><img src="https://truecostmovie.com/img/TTC/wp-content/uploads/2015/10/netflix_logo_digitalvideo-1.png" alt=""></a>
        <ul class="navigation">
            <li class="active"><a href="index.jsp?menu_id=0">Home</a></li>
            <li><a href="tvShow.jsp?menu_id=1">TV Shows</a></li>
            <li><a href="movies.jsp?menu_id=2">Movies</a></li>
            <li><a href="latest.jsp?menu_id=3">Latest</a></li>
            <li><a href="myList.jsp?menu_id=4">My list</a></li>
        </ul>
        <ul class="search">
            <li>
                <input class="search-input" type="text" placeholder="Search movies, genres">
                <i class="fa fa-search" aria-hidden="true"></i>
            </li>
            <li>
                <a href="#"><i class="fa fa-gift"></i></a>
            </li>
            <li>
                <a href="#"><i class="fa fa-bell"></i></a>
            </li>
            <li class="dropdown">
            	<%for(AccountChild ac : ac_dao.getAccountChildsbyId((byte)id_session)) { %>
                <img src="<%=ac.getAvatar() %>" style="max-width: 35px;" alt="">
                <%} %>
                <ul class="dropdown-iconProfile">
                	<%for(AccountChild ac : ac_dao.getAccountChildsbyEmail(email_session)) { %>
                    <li>
                        <img class="img-border-radius" src="<%=ac.getAvatar()%>" alt="">
                        <a href="${root}/logintoid?account_id=<%=ac.getAccountId() %>"><%=ac.getNameAccount() %></a>
                    </li>
                    <%} %>
                    <li class="dropdown-manage"><a href="#">Manage Profiles</a></li>
                    <li class="dropdown-borderTop dropdown-manage"><a href="account.html">Account</a></li>
                    <li class="dropdown-manage"><a href="#">Help Center</a></li>
                    <li class="dropdown-manage">
                    	<a href="${root}/logout">Sign out of Netflix</a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
    <!-- header end -->
</body>
</html>
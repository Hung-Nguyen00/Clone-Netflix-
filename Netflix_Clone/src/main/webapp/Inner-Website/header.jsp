<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MenuDAO" %>
<%@ page import="model.Menu" %>
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
                <img src="../Inner-Website/data/img/gulogo-6.jpg" style="max-width: 35px;" alt="">
                <ul class="dropdown-iconProfile">
                    <li>
                        <img class="
                        img-border-radius" src="../Inner-Website/data/img/gulogo-6.jpg" alt="">
                        <a href="#">Thanh Hung</a>
                    </li>
                    <li>
                        <img class="
                        img-border-radius" src="../Inner-Website/data/img/gulogo-6.jpg" alt="">
                        <a href="#">Thanh Hung</a>
                    </li>
                    <li>
                        <img class="
                        img-border-radius" src="../Inner-Website/data/img/gulogo-6.jpg" alt="">
                        <a href="#">Thanh Hung</a>
                    </li>
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
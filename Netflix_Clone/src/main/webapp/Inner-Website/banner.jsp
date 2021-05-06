<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banner</title>
<%@page import="model.Movie" %>
<%@page import="DAO.MovieDAO" %>
</head>
<body>
<%
	MovieDAO movie_dao = new MovieDAO();
	int id=0;
	 %>
    <!-- Banner start -->
    <div class="banner">
    <% for(Movie m : movie_dao.getMovie(id)) { %>
        <div class="banner-img">
            <img src="<%=m.getImage()%>" alt="banner">
        </div>
        
        <div class="banner-content">
            <div class="banner-content-img">
                <img src="<%=m.getLo()%>"
                    alt="logoFilm">
            </div>
            <h4 class="banner-content-text">
                <span>Top <span class="top">10</span></span>
                <span>#1 in Vietnam Today</span>
                <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
            </h4>
            <div class="banner-controller">
                <a href="#" class="btn banner-btn-play"><i class="fa fa-play "></i>Play</a>
                <a href="#" class="btn banner-btn-info"><i class="fa fa-info"></i>More info</a>
            </div>
        </div>
    <% } %>
    </div>
    
   	 <!-- Banner end -->
</body>
</html>
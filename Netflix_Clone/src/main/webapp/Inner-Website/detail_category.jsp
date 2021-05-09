<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.CategoryDAO" %>
<%@ page import="model.Category" %>
<%@ page import="DAO.MenuDAO" %>
<%@ page import="model.Menu" %>
<%@ page import="DAO.MovieDAO" %>
<%@ page import="model.Movie" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Inner-Website/lib/css/inner-style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <title>Netflix</title>
</head>

<body>
<h1 style="display:none"> <%=request.getParameter("category_id")%></h1>
<%
	MovieDAO movie_dao = new MovieDAO();
	CategoryDAO category_dao = new CategoryDAO();
	int category_id= -1;
	if(request.getParameter("category_id")!=null)
	{
		category_id= Integer.parseInt(request.getParameter("category_id")) ;
	}
	
	 %>


 	<jsp:include page="header.jsp"></jsp:include>
 	<% for(Category c : category_dao.getCategorybyCategoryId(category_id)) { %>
    <div class="My-List-label">
        <h1><%=c.getNameCategory() %></h1>
    </div>
    <%} %>
    <div class="My-List-container">
        <div class="My-List-row-container" id="row-0">
       	<% for(Movie m : movie_dao.getMoviebyCategory(category_id)) { %>
            <div class="My-List-item">
                <img src="<%=m.getImage() %>" style="width: 245px; height: 140px;" alt="">
                <div class="My-List-item--hover">
                    <img src="<%=m.getImage() %>" style="max-width: 400px;" alt="">
                    <div class="item-controller-info">
                        <div class="item-controller">
                            <ul>
                                <li><a href="#"><i class="fa fa-play"></i></a></li>
                                <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                            </ul>
                        </div>
                        <div class="item-info">
                            <a><i class="fas fa-chevron-down"></i></a>
                        </div>
                    </div>
                    <h4 class="info-movie-detail">
                        <span>96% match</span>
                        <span>13+</span>
                        <span>1 season</span>
                    </h4>
                    <h4 class="info-movie-categories">
                        <span>heart</span>
                        <span>Romantic</span>
                        <span>Emotional</span>
                    </h4>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>

</html>
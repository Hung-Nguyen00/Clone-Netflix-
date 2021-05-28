<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.CategoryDAO" %>
<%@ page import="model.Category" %>
<%@ page import="DAO.MenuDAO" %>
<%@ page import="model.Menu" %>
<%@ page import="DAO.MovieDAO" %>
<%@ page import="model.Movie" %>
<%@ page import="DAO.Activity_HistoryDAO" %>
<%@ page import="model.ActivitiHistoryMovie" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Inner-Website/lib/css/inner-style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <c:set var = "root" value="${pageContext.request.contextPath}"/>
    <title>Netflix</title>
</head>

<body>
<% 
response.setHeader("Cache-Control","no-cahe, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
	if(session.getAttribute("account_id")==null){
		response.sendRedirect("/Netflix_Clone/Inner-Website/firstHome.jsp");
	}
%>
<h1 style="display:none"> <%=request.getParameter("category_id")%></h1>
<h1 class="session_account" style="display:none"> <%=session.getAttribute("account_id")%></h1>
<%
	MovieDAO movie_dao = new MovieDAO();
	CategoryDAO category_dao = new CategoryDAO();
	Activity_HistoryDAO AHDAO = new Activity_HistoryDAO();
	int category_id= -1;
	if(request.getParameter("category_id")!=null)
	{
		category_id= Integer.parseInt(request.getParameter("category_id")) ;
	}
	
	 %>
 	<jsp:include page="header.jsp"></jsp:include>
 	<div class="preview">
    
        <div class="preview-detail">

        </div>
    </div>
 	<% for(Category c : category_dao.getCategorybyCategoryId(category_id)) { 
 		
 	%>
    <div class="My-List-label">
        <h1><%=c.getNameCategory() %></h1>
    </div>
    <%} %>
    <div class="detail-movie" style="position: absolute; top: 28%; left: 0; display: flex; flex-wrap: wrap; width: 100%;">
       <div class="popular-slider">
    	<div class="popular-slider-card" style="display: flex; flex-wrap: wrap; margin-bottom: 2rem;">
    	<%int i=0; %>
       	<% for(Movie m : movie_dao.getMoviebyCategory(category_id)) { 
       	%>
            <div class="popular-slider-card-item" style="margin-bottom: 2rem;">
                <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                <div class="popular-slider-card-item--hover">
                    <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
                    <div class="item-controller-info">
                        <div class="item-controller">
                            <ul>
                                <li><a href="${root}/Inner-Website/play.jsp?video_id=<%=m.getVideo() %>"><i class="fa fa-play"></i></a></li>
                                <li><a class="savebtn" id="<%=m.getMovieId() %>" data-id="<%=m.getMovieId() %>" <% for(ActivitiHistoryMovie AHM : AHDAO.getAVHbyAccountId((int)session.getAttribute("account_id"),m.getMovieId())) { 
       	%> <%if(AHM.getSaved()==1){%> style="background-color:red" <%}%> <%} %> ><i class="fa fa-plus"></i></a></li>
                                <li><a class="likebtn" id="<%=m.getMovieId() %>" data-id="<%=m.getMovieId() %>" <% for(ActivitiHistoryMovie AHM : AHDAO.getAVHbyAccountId((int)session.getAttribute("account_id"),m.getMovieId())) { 
       	%> <%if(AHM.getLikebtn()==1){%> style="background-color:red" <%}%> <%} %>><i class="fa fa-thumbs-up"></i></a></li>
                                <li><a class="dislikebtn" id="<%=m.getMovieId() %>" data-id="<%=m.getMovieId() %>" <% for(ActivitiHistoryMovie AHM : AHDAO.getAVHbyAccountId((int)session.getAttribute("account_id"),m.getMovieId())) { 
       	%> <%if(AHM.getDislikebtn()==1){%> style="background-color:red" <%}%> <%} %>><i class="fa fa-thumbs-down"></i></a></li>
                            </ul>
                        </div>
                        <div class="item-info">
                            <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
                        </div>
                    </div>
                    <h4 class="info-movie-detail">
                        <span><%=m.getNameMovie() %></span>
                        <span>13+</span>
                        <span>1 season</span>
                    </h4>
                    <h4 class="info-movie-categories">
                        <% for(Category c1 : category_dao.getCategorybyMovieId(m.getMovieId())) { %>
                                        <span href="#"><%=c1.getNameCategory() %></span>
                                        <%} %>
                    </h4>
                </div>
                <div class="popular-slider-details">
                    <div class="preview-detail-trailer">
                        <div class="preview-detail-banner">
                            <!-- <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe> -->
                            <iframe></iframe>
                            <img src="<%=m.getImage()%>" alt="banner">
                        </div>
                        <div class="preview-detail-trailer--controller">
                            <img src="<%=m.getLo()%>"
                                alt="trailer">
                            <h5>
                                <span></span>
                                <span class="length-movie">4 of 116m</span>
                            </h5>
                            <div class="preview-controller-info">
                                <ul>
                                    <li><a href="${root}/Inner-Website/play.jsp?video_id=<%=m.getVideo() %>"><i class="fa fa-play"></i> Resume</a></li>
                                    <li class="savebtn"><a><i class="fa fa-plus"></i></a></li>
                                    <li class="likebtn"><a><i class="fa fa-thumbs-up"></i></a></li>
                                    <li class="dislikebtn"><a><i class="fa fa-thumbs-down"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="preview-detail-info">
                        <div class="preview-detail-info--present">
                            <h4 class="info-movie-detail">
                                <span><%=m.getNameMovie() %></span>
                                <span><%=m.getMaturityRating() %></span>
                                <span>1 season</span>
                            </h4>
                            <h4 class="banner-content-text">
                                <span>Top <span class="top">10</span></span>
                                <span>#<%=m.getTopHot() %> in Vietnam Today</span>
                                <p><%=m.getDescriptionMovie() %></p>
                            </h4>
                        </div>
                        <div class="preview-detail-info--cast">
                            <ul>
                                <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> 
                                        </span>
                                    </span>
                                </li>
                                <li> <span>Genres: 
                                    <span class="inner">
                                    <% for(Category c2 : category_dao.getCategorybyMovieId(m.getMovieId())) { %>
                                        <a href="#"><%=c2.getNameCategory() %></a>
                                        <%} %>
                                        </span>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="preview-detail-moreMovie">
                        <h2>More Like This</h2>
                        <div class="preview-detail-moreMovie-items">
                        <% for(Movie m1 : movie_dao.getMoviebyCategory(category_id)) { %>                            
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m1.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span><%=m1.getNameMovie() %></span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p><%=m1.getDescriptionMovie() %></p>
                                </div>
                            </div>
                            <%} %>
                        </div>
                    </div>
                    <div class="preview-detail-about">
                        <h2>About <span>Narcos</span></h2>
                        <ul>
                            <li> <span>Creators: </span>
                                <a href="#">John Nguyen</a>
                                <a href="#">John Nguyen</a>

                            </li>
                            <li> <span>Cast: </span>
                                <a href="#">Nhi</a>
                                <a href="#">Long</a>
                                <a href="#">Hung</a>
                            </li>
                            <li> <span>Genres: </span>
                                <a href="#">US TV shows</a>
                                <a href="#">TV Dramas</a>
                            </li>
                            <li> <span>This show is: </span>
                                <a href="#">Dark</a>
                                <a href="#">Exiting</a>
                                <a href="#">Gritty</a>
                            </li>
                            <li> <span>Maturity rating: </span>
                                <p><span>16+</span> Recommended for ages <span>16</span> </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <% i++;} %>
    </div>
		</div>
		</div>    
    <script src="../Inner-Website/lib/js/detail_category.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
$(document).ready(function(){
  $(".savebtn").click(function(){
    if($(this).css("background-color") == "rgb(255, 0, 0)"){
    	$(this).css("background-color", "rgb(42, 42, 42)");
    }else{
    	$(this).css("background-color", "red");
    }
  });
});
</script>
	<script>
$(document).ready(function(){
  $(".likebtn").click(function(){
    if($(this).css("background-color") == "rgb(255, 0, 0)"){
    	$(this).css("background-color", "rgb(42, 42, 42)");
        
        
    }else{
    	$(this).css("background-color", "red");
        var id = $(this).attr("id");
        $("#"+id+".dislikebtn").css("background-color", "rgb(42, 42, 42)");
        
        
    }
    
  });
});
</script>
	<script>
$(document).ready(function(){
  $(".dislikebtn").click(function(){
    if($(this).css("background-color") == "rgb(255, 0, 0)"){
    	$(this).css("background-color", "rgb(42, 42, 42)");
        
        
    }else{
    	$(this).css("background-color", "red");
        var id = $(this).attr("id");
        $("#"+id+".likebtn").css("background-color", "rgb(42, 42, 42)");
    }
    
  });
});
</script>
    <script>
$(document).ready(function(){
	
  $(".savebtn").click(function(){
	  var accountId = $(".session_account").text();
	    var movieId = $(this).data("id");
    $.post("${root}/ToggleSaveController",
    {
      account_id : accountId,
      movie_id : movieId
    },
    function(){
      
    });
  });
});
</script>
	<script>
$(document).ready(function(){
	
  $(".likebtn").click(function(){
	  var accountId = $(".session_account").text();
	    var movieId = $(this).data("id");
    $.post("${root}/ToggleLikeController",
    {
      account_id : accountId,
      movie_id : movieId
    },
    function(){
      
    });
  });
});
</script>
	<script>
$(document).ready(function(){
	
  $(".dislikebtn").click(function(){
	  var accountId = $(".session_account").text();
	    var movieId = $(this).data("id");
    $.post("${root}/ToggleDislikeController",
    {
      account_id : accountId,
      movie_id : movieId
    },
    function(){
      
    });
  });
});
</script>


    
</body>

</html>
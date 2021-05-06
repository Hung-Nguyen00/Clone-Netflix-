<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MovieDAO" %>
<%@ page import="model.Movie" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Content</title>
</head>
<body>
<%
	MovieDAO movie_dao = new MovieDAO();
	int menu_id= 0;
	if(request.getParameter("menu_id")!=null)
	{
		menu_id= Integer.parseInt(request.getParameter("menu_id")) ;
	}
	
	 %>
	 <div class="preloader">
    </div>
    <% for(Movie m : movie_dao.getMovie(menu_id)) { %>
    <div class="trailer-film">
        <iframe src="https://www.youtube.com/embed/<%=m.getVideo()%>>?autoplay=1&loop=1&mute=1&controls=0&playlist=<%=m.getVideo()%>" frameborder="0" allowfullscreen></iframe>
    </div>
   
    <div></div>
    <div class="play-film">
        <iframe src="https://www.youtube.com/embed/<%=m.getVideo()%>" frameborder="0" allowfullscreen></iframe>
        <div class="close-movie">
            <i class="fas fa-times"></i>
            <h4 class="back-to-browse">Back to Browse</h4>
        </div>
    </div>
     <% }%>
    <!-- banner end -->
    <!-- preview-model start -->
    <div class="preview">
    
        <div class="preview-detail">

        </div>
    </div>
    <!--  preview-model end-->
    <!-- slider start-->
    <% for(Movie m : movie_dao.getMovie(menu_id)) { %>
    <div class="popular-slider">
    
        <h2>Popular on Netflix</h2>
        <div class="popular-slider-card">
            <!-- slider-item-popular start-->
            <div class="popular-slider-card-item">
                <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                <div class="popular-slider-card-item--hover">
                    <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                            <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                                    <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                    <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="preview-detail-info">
                        <div class="preview-detail-info--present">
                            <h4 class="info-movie-detail">
                                <span>96% match</span>
                                <span>13+</span>
                                <span>1 season</span>
                            </h4>
                            <h4 class="banner-content-text">
                                <span>Top <span class="top">10</span></span>
                                <span>#1 in Vietnam Today</span>
                                <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                            </h4>
                        </div>
                        <div class="preview-detail-info--cast">
                            <ul>
                                <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li>
                                    <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="preview-detail-moreMovie">
                        <h2>More Like This</h2>
                        <div class="preview-detail-moreMovie-items">
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
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
            <div class="popular-slider-card-item">
                <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                <div class="popular-slider-card-item--hover">
                    <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                            <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                                    <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                    <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="preview-detail-info">
                        <div class="preview-detail-info--present">
                            <h4 class="info-movie-detail">
                                <span>96% match</span>
                                <span>13+</span>
                                <span>1 season</span>
                            </h4>
                            <h4 class="banner-content-text">
                                <span>Top <span class="top">10</span></span>
                                <span>#1 in Vietnam Today</span>
                                <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                            </h4>
                        </div>
                        <div class="preview-detail-info--cast">
                            <ul>
                                <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li>
                                    <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="preview-detail-moreMovie">
                        <h2>More Like This</h2>
                        <div class="preview-detail-moreMovie-items">
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
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
            <div class="popular-slider-card-item">
                <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                <div class="popular-slider-card-item--hover">
                    <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                            <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                                    <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                    <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="preview-detail-info">
                        <div class="preview-detail-info--present">
                            <h4 class="info-movie-detail">
                                <span>96% match</span>
                                <span>13+</span>
                                <span>1 season</span>
                            </h4>
                            <h4 class="banner-content-text">
                                <span>Top <span class="top">10</span></span>
                                <span>#1 in Vietnam Today</span>
                                <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                            </h4>
                        </div>
                        <div class="preview-detail-info--cast">
                            <ul>
                                <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li>
                                    <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="preview-detail-moreMovie">
                        <h2>More Like This</h2>
                        <div class="preview-detail-moreMovie-items">
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
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
            <div class="popular-slider-card-item">
                <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                <div class="popular-slider-card-item--hover">
                    <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                            <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                                    <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                    <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="preview-detail-info">
                        <div class="preview-detail-info--present">
                            <h4 class="info-movie-detail">
                                <span>96% match</span>
                                <span>13+</span>
                                <span>1 season</span>
                            </h4>
                            <h4 class="banner-content-text">
                                <span>Top <span class="top">10</span></span>
                                <span>#1 in Vietnam Today</span>
                                <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                            </h4>
                        </div>
                        <div class="preview-detail-info--cast">
                            <ul>
                                <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li>
                                    <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="preview-detail-moreMovie">
                        <h2>More Like This</h2>
                        <div class="preview-detail-moreMovie-items">
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
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
            <div class="popular-slider-card-item">
                <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                <div class="popular-slider-card-item--hover">
                    <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                            <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                                    <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                    <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="preview-detail-info">
                        <div class="preview-detail-info--present">
                            <h4 class="info-movie-detail">
                                <span>96% match</span>
                                <span>13+</span>
                                <span>1 season</span>
                            </h4>
                            <h4 class="banner-content-text">
                                <span>Top <span class="top">10</span></span>
                                <span>#1 in Vietnam Today</span>
                                <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                            </h4>
                        </div>
                        <div class="preview-detail-info--cast">
                            <ul>
                                <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li>
                                    <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="preview-detail-moreMovie">
                        <h2>More Like This</h2>
                        <div class="preview-detail-moreMovie-items">
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
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
            <div class="popular-slider-card-item">
                <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                <div class="popular-slider-card-item--hover">
                    <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                            <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                                    <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                    <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                    <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="preview-detail-info">
                        <div class="preview-detail-info--present">
                            <h4 class="info-movie-detail">
                                <span>96% match</span>
                                <span>13+</span>
                                <span>1 season</span>
                            </h4>
                            <h4 class="banner-content-text">
                                <span>Top <span class="top">10</span></span>
                                <span>#1 in Vietnam Today</span>
                                <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                            </h4>
                        </div>
                        <div class="preview-detail-info--cast">
                            <ul>
                                <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                    </span>
                                </li>
                                <li>
                                    <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="preview-detail-moreMovie">
                        <h2>More Like This</h2>
                        <div class="preview-detail-moreMovie-items">
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
                            <div class="moreMovie-items--inner">
                                <div class="preview-detail-moreMovie-item">
                                    <div class="moreMovie-item-img">
                                        <img src="<%=m.getImage()%>" alt="">
                                    </div>
                                    <div class="moreMovie-item-content">
                                        <h4 class="info-movie-detail">
                                            <span>96% match</span>
                                            <span>13+</span>
                                            <span>1996</span>
                                        </h4>
                                        <div class="btn-plus">
                                            <p><i class="fa fa-plus"></i></p>
                                        </div>
                                    </div>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </div>
                            </div>
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
            <!-- slider-item-popular start-->
            <div class="popular-slider-nav">
                <span class="prev-btn"> <i class="fas fa-angle-left"></i></span>
                <span class="next-btn"> <i class="fas fa-angle-right"></i></span>
            </div>
        </div>
    </div>

    <div class="category-slides">
        <div class="popular-slider">
            <h2>Popular on Netflix</h2>
            <div class="popular-slider-card">
                <!-- slider-item-popular start-->
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <!-- slider-item-popular start-->
                <div class="popular-slider-nav">
                    <span class="prev-btn"> <i class="fas fa-angle-left"></i></span>
                    <span class="next-btn"> <i class="fas fa-angle-right"></i></span>
                </div>
            </div>
        </div>
        <div class="popular-slider">
            <h2>Popular on Netflix</h2>
            <div class="popular-slider-card">
                <!-- slider-item-popular start-->
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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
                <div class="popular-slider-card-item">
                    <img src="<%=m.getImage()%>" style="width: 245px; height: 140px;" alt="">
                    <div class="popular-slider-card-item--hover">
                        <img src="<%=m.getImage()%>" style="max-width: 400px;" alt="">
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
                                <a class="item-info-watch"><i class="fas fa-chevron-down"></i></a>
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
                    <div class="popular-slider-details">
                        <div class="preview-detail-trailer">
                            <div class="preview-detail-banner">
                                <iframe src="https://www.youtube.com/embed/1VIZ89FEjYI?autoplay=1&loop=1&mute=1&controls=0&playlist=1VIZ89FEjYI" frameborder="0" allowfullscreen></iframe>
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
                                        <li><a href="#"><i class="fa fa-play"></i> Resume</a></li>
                                        <li><a href="#"><i class="fa fa-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-up"></i></a></li>
                                        <li><a href="#"><i class="fa fa-thumbs-down"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="preview-detail-info">
                            <div class="preview-detail-info--present">
                                <h4 class="info-movie-detail">
                                    <span>96% match</span>
                                    <span>13+</span>
                                    <span>1 season</span>
                                </h4>
                                <h4 class="banner-content-text">
                                    <span>Top <span class="top">10</span></span>
                                    <span>#1 in Vietnam Today</span>
                                    <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                </h4>
                            </div>
                            <div class="preview-detail-info--cast">
                                <ul>
                                    <li> <span>Cast: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li> <span>Genres: 
                                    <span class="inner">
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a>
                                        <a href="#">US Movies</a> </span>
                                        </span>
                                    </li>
                                    <li>
                                        <span>This movie is: 
                                        <span class="inner">
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a>
                                            <a href="#">US Movies</a> 
                                        </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="preview-detail-moreMovie">
                            <h2>More Like This</h2>
                            <div class="preview-detail-moreMovie-items">
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
                                <div class="moreMovie-items--inner">
                                    <div class="preview-detail-moreMovie-item">
                                        <div class="moreMovie-item-img">
                                            <img src="<%=m.getImage()%>" alt="">
                                        </div>
                                        <div class="moreMovie-item-content">
                                            <h4 class="info-movie-detail">
                                                <span>96% match</span>
                                                <span>13+</span>
                                                <span>1996</span>
                                            </h4>
                                            <div class="btn-plus">
                                                <p><i class="fa fa-plus"></i></p>
                                            </div>
                                        </div>
                                        <p>Mysterious events. Shadowy entities, A woman from the future. As a hidden world comes in view, so di it deadly secrets.</p>
                                    </div>
                                </div>
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

                <!-- slider-item-popular start-->
                <div class="popular-slider-nav">
                    <span class="prev-btn"> <i class="fas fa-angle-left"></i></span>
                    <span class="next-btn"> <i class="fas fa-angle-right"></i></span>
                </div>
            </div>
        </div>
    </div>
    <% } %>
</body>
</html>
<%@page import="model.DetailMovie"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="DAO.ActorDAO"%>
<%@page import="DAO.MovieDAO" %>
<%@page import="DAO.SeriesDAO" %>


<%@page import="model.SeriesMovie" %>
<%@page import="model.Movie"%>
<%@page import="model.Actor"%>
<%@page import="model.Category" %>
<%@page import="model.ActorMovie, java.util.*" %>

<%@page import="model.Category" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
     <c:set var="root" value="${pageContext.request.contextPath}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Create Series</title>
     <link href="${root}/Admin/dist/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body class="sb-nav-fixed">
		<jsp:include page="Header.jsp"></jsp:include>
		<% MovieDAO movieDAO = new MovieDAO(); %>
		<% String param = request.getParameter("movie_id");
			String season_id = request.getParameter("season_id");
			String series_id = request.getParameter("series_id");
			
			String NumberOfChapter = request.getParameter("stt");
			SeriesDAO seriesDAO = new SeriesDAO();
			SeriesMovie seriesmovie = new SeriesMovie();
			if( Integer.parseInt(series_id) >-1)
			{
				seriesmovie = seriesDAO.getSeriesMovie(Integer.parseInt(series_id));
			}
		%>
 
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Information of Movies</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="${root}/Admin/dist/index.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="${root}/Admin/dist/movie_TVShow.jsp">TV Show</a></li>
                        <li class="breadcrumb-item">Movie Details</li>
                        <li class="breadcrumb-item active">update Series</li>
                    </ol>
                    <div class="d-flex flex-lg-wrap">
                        <div class="bgc-white p-20 bd border pr-3 pl-3 col-md-6">
                            <h4 class="c-grey-900 text-center pt-3 mb-4">Movie Information of <strong>episode <%=NumberOfChapter %></strong></h4>
                            <div class="mT-30">
                            <%if(Integer.parseInt(series_id) > -1){ %>
                                <form class="needs-validation pb-2" novalidate action="${root}/ManagerSeries" method="post">
                                 <%String succced = (String)request.getAttribute("succced"); %>
                                <%if(succced != null){ %>
                                	<p class="text-success"><%=succced%> </p>
                                <%} %>
                                <p class="text-danger">${error}</p>
                                    <div class="form-group">
                                            <label for="duration">Duration</label>
                                            <input type="text" name="duration" value="<%=seriesmovie.getDuration() %>" placeholder="2h10m" class="form-control" id="duration">
                                    </div>
                                    <div class="form-group">
                                        <label for="movie">Movie</label>
                                        <input type="text" name="movie" value="<%=seriesmovie.getVideo() %>" id="movie"  class="form-control"  rows="3" >
                                    </div>
                                    <div class="form-group">
                                        <label for="Description">Description</label>
                                        <textarea class="form-control" name="description" value="<%= seriesmovie.getDescriptionSeries()%>" id="Description" rows="3"> Hello</textarea>
                                    </div>
                                  	<input type="hidden" name="movie_id" value="<%=param%>">
                                     <input type="hidden" name="season_id" value="<%=season_id%>">
                                     <input type="hidden" name="series_id" value="<%=series_id%>">
                                     <input type="hidden" name="command" value="updateSeries">
									<input type="hidden" name="valiUpdate" value="">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </form>
                                <%} %>
                            </div>
                        </div>
                        <div class="card mb-4 pl-2 col-6 pr-2">
                            <div class="card-header">
                            
                                <i class="fas fa-table mr-1"></i> Series
                                <%if(Integer.parseInt(season_id) > -1){ %>
                                <button class="btn-add float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                               	<a class="text-light" href=" ${root}/Admin/dist/create_series.jsp?movie_id=<%=param%>&season_id=<%=season_id%>"> 
                               		 <i class="fas fa-plus"></i>
                                    <span>Add</span>
                               	</a>
                                </div>
                            </button>
                            <%} %>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Name</th>
                                                <th>Last Update</th>
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>STT</th>
                                                <th>Name</th>
                                                <th>Last Update</th>
                                                <th>Edit</th>
                                            </tr>
                                        </tfoot>
                                      <%if(param != null){ %>
                                       		<%if(seriesDAO.getListSeriesMovieOfSeason((byte) Integer.parseInt(season_id)).size() > 0){%>
                                       	<tbody>
                                       		 <% int sttActor = 0; %>
                                            <%for(SeriesMovie am : seriesDAO.getListSeriesMovieOfSeason((byte) Integer.parseInt(season_id))){ %>
                                            <tr>
                                                <td><%=++sttActor %></td>
                                                <td>Episode <%=" "+ sttActor%></td>
                                                <td><%=am.getLast_update() %></td>
                                                <td class="text-center">
                                                   <button class="btn btn-danger border-0">  
                                                     <a class="text-decoration-none text-light" href="${root}/ManagerSeason?command=delete&movie_id=<%=param%>&season_id=<%=season_id%>&series_id=<%= am.getSeriesId()%>">
                                                     	<i class="fas fa-trash"></i>
                                                     </a>                                                
                                                     </button>
                                                  <button class="btn btn-wrench border-0">
                                                    <a href="${root}/Admin/dist/update_series.jsp?movie_id=<%=param%>&season_id=<%=season_id%>&series_id=<%= am.getSeriesId()%>&stt=<%=sttActor%> "> <i class="fas fa-eye"></i></a>
                                                </button>
                                                </td>
                                            </tr>
                                            <%} %>
                                          <%} %>
                                        </tbody>
                                       <%} %>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2020</div>
                        <div>
                            <a href="#">Privacy Policy</a> &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="${root}/Admin/dist/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="${root}/Admin/dist/assets/demo/datatables-demo.js"></script>
</body>

</html>
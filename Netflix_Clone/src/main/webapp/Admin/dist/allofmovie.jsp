f<%@page import="model.Movie, java.util.*" %>
<%@page import="DAO.MovieDAO" %>
<%@page import="DAO.MenuDAO" %>
<%@page import="DAO.SeasonDAO" %>
<%@page import="DAO.BannerDAO" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <c:set var="root" value="${pageContext.request.contextPath}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Movies</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="${root}/Admin/dist/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>

</head>
<body class="sb-nav-fixed">
	<% MovieDAO movieDAO = new MovieDAO();
		MenuDAO menuDAO = new MenuDAO();
		SeasonDAO seasonDAO = new SeasonDAO();
		BannerDAO bannerDAO = new BannerDAO();
	%>
	
	
		<jsp:include page="Header.jsp"></jsp:include>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                   	<div class="d-flex justify-content-between">
                   	<h1 class="mt-4">Movies</h1>
                    <h4 class="mt-4 text-success align-text-bottom">${succced}</h4>
                   	</div>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="${root}/Admin/dist/index.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item active">Movies</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i> Data Table Movies
                            <button class="float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                                    <i class="fas fa-plus"></i>
                                    <a href="create_movie.jsp" class="text-decoration-none  text-light">Add</a>
                                </div>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Name</th>
                                            <th>Last Update</th>
                                            <th> Top Hot </th>
                                           
                                            <th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>STT</th>
                                            <th>Name</th>
                                            <th>Last Update</th>
                                            <th>Top Hot</th>
                                             
                                            <th>Edit</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <%int i=0; %>
                                    <% for(Movie movie : movieDAO.getListMovie()){ %>
                                        <tr>
                                            <td><%=i++ %></td>
                                            <td><%=movie.getNameMovie() %></td>
                                            <td><%=movie.getLastUpdate() %></td>
                                            
                                            <td class="text-center">
                                               <%if(movie.getTopHot() == 1){ %>
                                               	 <i class="fas fa-check-square "></i>
                                               <%} %>
                                            </td>
                                           
                                             <td class="text-center">
                                                
                                              <%if(menuDAO.getMenuOfMovie(movie.getMovieId()).getMenuId() == (byte)1 || seasonDAO.checkMovieHasSeason(movie.getMovieId())== true){ %>       
                                            
                                                <button class="btn btn-info bg-info border-0">
                                                   <a class="text-decoration-none text-light" 
                                                  href="${root}/Admin/dist/detail_TVShow.jsp?command=update&movie_id=<%=movie.getMovieId()%>">
                                                   TV Show
                                                </button>
                                                <%}else if(menuDAO.getMenuOfMovie(movie.getMovieId()).getMenuId() == (byte)2){ %>
                                                	<button class="btn btn-info border-0">
                                                   <a class="text-decoration-none text-light" 
                                                  href="${root}/Admin/dist/movie_Detail.jsp?command=update&movie_id=<%=movie.getMovieId()%>">
                                                   Movie
                                                </button>
                                                <%}else if(bannerDAO.checkBannerHasMovie(movie.getMovieId()) == true){ %>
                                                	<button class="btn btn-info border-0">
	                                                   <a class="text-decoration-none text-light" 
	                                                  		href="${root}/Admin/dist/banner.jsp">
	                                                   Banner
                                                	</button>
                                               	 <%}else{%>
                                            		<button class="btn btn-danger border-0">  
                                                    <a class="text-decoration-none text-light" href="${root}/ManagerMovie?command=deleteMOVIE&movie_id=<%=movie.getMovieId()%>"> 
                                                     <i class="fas fa-trash"></i>
                                                     </a>                                                
                                                   </button>
                                              	<%} %>
                                            </td>  
                                        </tr>
                                    <%}%>
                                    </tbody>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/datatables-demo.js"></script>
</body>

</html>
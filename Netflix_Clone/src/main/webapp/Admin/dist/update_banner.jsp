<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.Banner" %>
<%@page import="model.Movie" %>
<%@page import="model.Menu" %>

<%@page import="DAO.MovieDAO" %>
<%@page import="DAO.MenuDAO" %>
<%@page import="DAO.BannerDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <c:set var="root" value="${pageContext.request.contextPath}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Banner</title>
    <link href="${root}/Admin/dist/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
	<jsp:include page="Header.jsp"></jsp:include>
	<% MovieDAO movieDAO = new MovieDAO(); 
		BannerDAO bannerDAO = new BannerDAO();
		MenuDAO menuDAO = new MenuDAO();
		byte banner_id = Byte.parseByte(request.getParameter("banner_id"));
		int movie_id = Integer.parseInt(request.getParameter("movie_id"));
		byte menu_id = Byte.parseByte(request.getParameter("menu_id"));
	%>
	
  <div class="modelAcc open">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Edit Banner</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
                    <form action="${root}/ManagerBannerServlet" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Movie</label>
                            <input list="browActor" value="<%=movieDAO.getMovie(movie_id).getMovieId() %>" name="movie_id" class="w-100 mt-2 pt-0" placeholder="Choose name">
                            <datalist id="browActor">
                            <%if (movieDAO.getListMovieOfMenu(menu_id).size() > -1){ %>
                            <%for (Movie movie : movieDAO.getListMovie()){%>
                                <option value="<%=movie.getMovieId()%>"><span><%=movie.getNameMovie()%></span></option>
                               <%} %> 
                              <%} %> 
                            </datalist>
                        </div>  
                        
                        <input type="hidden" name="movie_id" value="<%=movie_id%>">
                        <input type="hidden" name="banner_id" value="<%=banner_id%>">
                        <input type="hidden" name="menu_id" value="<%=menu_id%>">
                        <input type="hidden" name="command" value="update">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Data Table Accounts</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="${root}/Admin/dist/index.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item active">Banner</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i> Data Table Banner
                            <button class="btn-add float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                                    <i class="fas fa-plus"></i>
                                    <span>Add</span>
                                </div>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Menu</th>
                                            <th>Trailer</th>
                                            <th>Create Day</th>
                                            <th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>STT</th>
                                            <th>Menu</th>
                                            <th>Trailer</th>
                                            <th>Create Day</th>
                                            <th>Edit</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <% int i=1; %>
                                    <%for(Banner banner : bannerDAO.getListBanner()){ %>
                                        <tr>
                                            <td><%=i++ %></td>
                                            <td><%=menuDAO.getMenu(banner.getMenu_id()).getNameMenu() %></td>
                                            <td><%=movieDAO.getMovie(banner.getMovie_id()).getTrailer() %></td>
                                            <td><%=banner.getLast_update()%></td>
                                            <td class="text-center">
                                                <button class="btn-wrench bg-info border-0">
                                                    <i class="fas fa-wrench"></i>
                                                </button>
                                            </td>
                                        </tr>
                                      <%} %>
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
	  <script>
    const model = document.querySelector('.modelAcc'),
   		 btnAdd = document.querySelector('.btn-add'),
    	body=document.querySelector('body'),
    	checkBox = document.querySelector('.director')
   
    btnAdd.addEventListener('click', () => {
        model.classList.add('open');
        body.classList.add('hideScroll');
        // get value of scroll
        let topOffset = window.pageYOffset;
        model.style.top = topOffset + 'px';
    })

   

    </script>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/datatables-demo.js"></script>
</body>

</html>
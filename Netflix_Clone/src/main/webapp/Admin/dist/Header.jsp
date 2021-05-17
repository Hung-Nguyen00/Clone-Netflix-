<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import ="model.Account, java.util.*" %>
<%@page import ="model.AdminAccount" %>
<%@page import ="DAO.AccountDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <c:set var="root" value="${pageContext.request.contextPath}" />
</head>
<body>
<% AccountDAO accDAO = new AccountDAO(); %>
<%
		AdminAccount admin = new AdminAccount();
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		response.setHeader("Pragma","no-cache");
		response.setHeader("Expires","0");
	
		if(session.getAttribute("user") == null)
		{
			response.sendRedirect("login.jsp");
		}
		if (session.getAttribute("user") != null)
		{
			admin = (AdminAccount) session.getAttribute("user");
		}
%>

    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand" href="${root}/Admin/dist/index.jsp">Netflix</a>
        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                <div class="input-group-append">
                    <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ml-auto ml-md-0">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">Settings</a>
                    <a class="dropdown-item" href="#">Activity Log</a>
                    <div class="dropdown-divider text-center"></div>
                    <form action="${root}/ManagerAdmin">
                    <button type="submit" class="border-0" style="margin-left: 20px;">Logout</button>
                    </form>
                </div>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Core</div>
                        <a class="nav-link" href="${root}/Admin/dist/index.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Dashboard
                        </a>
                        <div class="sb-sidenav-menu-heading">Interface</div>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Pages
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Home
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="${root}/Admin/dist/movie_Home.jsp">Movies</a>
                                    </nav>
                                </div>
                                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth1" aria-expanded="false" aria-controls="pagesCollapseAuth1">
                                    TVShow
                                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                </a>
                                <div class="collapse" id="pagesCollapseAuth1" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="${root}/Admin/dist/categories_Movie.jsp?menu_id=1">Categories</a>
                                        <a class="nav-link" href="${root}/Admin/dist/movie_TVShow.jsp">Movies</a>
                                    </nav>
                                </div>
                                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth2" aria-expanded="false" aria-controls="pagesCollapseAuth2">
                                    Movie
                                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                </a>
                                <div class="collapse" id="pagesCollapseAuth2" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="${root}/Admin/dist/categories_Movie.jsp?menu_id=2">Categories</a>
                                        <a class="nav-link" href="${root}/Admin/dist/movie_Movie.jsp">Movies</a>
                                    </nav>
                                </div>

                            </nav>
                        </div>
                          <a class="nav-link collapsed" href="${root}/Admin/dist/banner.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                            Banner
                        </a>
                         <a class="nav-link collapsed" href="${root}/Admin/dist/actor.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-user-injured"></i></div>
                            Actor
                        </a>
                         <a class="nav-link collapsed" href="${root}/Admin/dist/allofmovie.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-film"></i></div>
                            Movies
                        </a>
                        <a class="nav-link collapsed" href="${root}/Admin/dist/account.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-user-circle"></i></div>
                            Account
                        </a>
                        <div class="sb-sidenav-menu-heading">Administrator</div>
                        <a class="nav-link" href="${root}/Admin/dist/account_admin.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Account Admin
                        </a>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    <%=admin.getFirstName() +" " + admin.getLastName() %>
                </div>
            </nav>
        </div>
     
</body>
</html>
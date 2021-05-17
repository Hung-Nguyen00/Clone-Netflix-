<%@page import="DAO.CategoryDAO"%>
<%@page import="DAO.MovieDAO" %>

<%@page import="model.Movie"%>
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
    <title>Update Category</title>
     <link href="${root}/Admin/dist/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body class="sb-nav-fixed hideScroll">
<jsp:include page="Header.jsp"></jsp:include>

	<% CategoryDAO cateDAO = new CategoryDAO(); %>
	<% String category_id = request.getParameter("category_id");
		int menu_id = Integer.parseInt(request.getParameter("menu_id"));
		Category category = new Category();
		if(category_id != null)
		{
			category = cateDAO.getCategory(Integer.parseInt(category_id));
		}
	
	%>
   <div class="modelAcc open">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Edit Category of Movie</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
                    <form action="${root}/ManagerCategoryServlet" method="post">
                        <div class="form-group">
                            <label for="first_Name">Name</label>
                            <input type="text" class="form-control" name="category_name" id="first_Name" value="<%=category.getNameCategory()%>" placeholder="Category's name...">
                        </div>
                        <input type="hidden" value="<%=category_id%>" name="category_id">
                         <input type="hidden" value="<%=menu_id%>" name="menu_id">
                        <input type="hidden" value="update" name="command">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Categories</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="${root}/Admin/dist/index.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item">Movie</li>
                        <li class="breadcrumb-item active">Categories</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i>Categories
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
                                    <tbody>
                                    <%if(cateDAO.getCategorybyMenu(menu_id).size() > -1){ %>
                                    	<% int i = 0;  %>
                                       <%for(Category cate : cateDAO.getCategorybyMenu(menu_id)){ %>
                                        <tr>
                                            <td><%=++i %></td>
                                            <td><%= cate.getNameCategory()%></td>
                                            <td><%=cate.getCreate_date()%></td>
                                            <td class="text-center">
                                            <%if(!cateDAO.checkMovieHasCate(cate.getCategoryId())){ %>
                                                <button class="btn-trash btn-danger border-0">
                                                    <a class="text-decoration-none text-light" href="${root}/ManagerCategoryServlet?menu_id=<%=menu_id %>&command=delete&category_id=<%=cate.getCategoryId()%>">
                                                    <i class="fas fa-trash"></i>
                                                    </a>
                                                </button>
                                             <%} %>
                                              <button class="btn-wrench bg-info border-0">
                                                  <a class="text-decoration-none text-light" 
                                                  href="${root}/Admin/dist/update_category.jsp?menu_id=<%=menu_id %>&command=update&category_id=<%=cate.getCategoryId()%>">
                                                   <i class="fas fa-wrench"></i>
                                                   </a>
                                                </button>
                                            </td>
                                        </tr>
                                        <%} %>
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
	<script type="text/javascript">
		const model = document.querySelector('.modelAcc'),
		    body = document.querySelector('body'),
		    btnAdd = document.querySelector('.btn-add')
		    
		    
	 	btnAdd.addEventListener('click', () => {
	        model.classList.add('open')
	        body.classList.add('hideScroll');
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
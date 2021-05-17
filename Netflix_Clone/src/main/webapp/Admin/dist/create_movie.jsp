<%@page import="model.DetailMovie"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="DAO.ActorDAO"%>
<%@page import="DAO.MovieDAO" %>
<%@page import="DAO.Movie_ActorDAO" %>
<%@page import="DAO.Movie_Category" %>

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
    <title>Create Movie</title>
     <link href="${root}/Admin/dist/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body class="sb-nav-fixed">
		<jsp:include page="Header.jsp"></jsp:include>
		<% MovieDAO movieDAO = new MovieDAO(); %>
		<% Movie_ActorDAO actormovieDAO = new Movie_ActorDAO(); %>
		<% Movie_Category movieCateDAO = new Movie_Category(); %>
		<% CategoryDAO cateDAO = new CategoryDAO(); %>
		<% ActorDAO actorDAO = new ActorDAO(); %>
		<% String param = request.getParameter("movie_id"); %>
        <div class="modelAcc">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Add Actor</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
                    <form action="${root}/ManagerMovie" method="post">
                        <div class="form-group">
                            <label>Name Actor</label>
                            <input list="browActor" name="browActor" class="w-100 mt-2 pt-0" placeholder="Choose name">
                            <datalist id="browActor">
                            <%if(param != null){ %>
                          	<% for(Actor ac : actorDAO.getListActorOfMovie(Integer.parseInt(param))){ %>
                          		<%int id = ac.getActorId(); %>  
                                <option value="<%= id %>"> <%=ac.getFirstName() + " " +  ac.getLastName() %></option>
                               <%} %>
                             <%} %>
                            </datalist>
                        </div>
                        	<input type="hidden" name="movie_id" value ="<%=param%>">
                        	<input type="hidden" name="command" value="insertActor">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="modelCate">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Category</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
                    <form action="${root}/ManagerMovie" method="post">
                        <div class="form-group">
                            <label>Name Category</label>
                            <input list="browCate" name="browCate" class="w-100 mt-2 pt-0" placeholder="Choose name">
                            <datalist id="browCate">
                              <%if(param != null){ %>
                          	<% for(Category ac : cateDAO.getListCategoryForMovie(Integer.parseInt(param),2)){ %>
                          		<%int id = ac.getCategoryId(); %>  
                                <option value="<%= id %>"> <%= ac.getNameCategory() %></option>
                               <%} %>
                             <%} %>
                            </datalist>
                        </div>
                        <input type="hidden" name="movie_id" value ="<%=param%>">
                        	<input type="hidden" name="command" value="insertCate">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
   
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Information of Movies</h1>
                    <ol class="breadcrumb mb-4">
                         <li class="breadcrumb-item"><a href="${root}/Admin/dist/index.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="${root}/Admin/dist/movie_home.jsp">Movie</a></li>
                        <li class="breadcrumb-item active">Movie Details</li>
                    </ol>
                    <div class="d-flex flex-lg-wrap">
                        <div class="bgc-white p-20 bd border pr-3 pl-3 col-md-6">
                            <h4 class="c-grey-900 text-center pt-3 mb-4">Movie Information</h4>
                            <div class="mT-30">
                                <form class="needs-validation pb-2" novalidate action="${root}/ManagerMovie" method="post">
                                	<p class="text-danger">${error}</p>
                           
                                    <div class="form-row">
                                        <div class="form-group col-md-9">
                                            <label for="name">Name</label>
                                            <input type="text" name="name"  class="form-control"  id="name">

                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="duration">Duration</label>
                                            <input type="text" name="duration" placeholder="2h10m" class="form-control" id="duration">
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label for="maturity_rate">Maturity Rate</label>
                                        <input type="text"  class="form-control" name="maturity_rate" placeholder="Match for more than 18 ages">
                                    </div>
                                    <div class="form-group">
                                        <label for="trailer">Trailer</label>
                                        <input type="text" name="trailer" placeholder="https://github.com/John-Nguyen0411/Clone-Netflix-/blob/main/Inner-Website/lib/js/app.js" class="form-control" id="trailer" placeholder="1234 Main St">
                                    </div>
                                    <div class="form-group">
                                        <label for="Image">Image</label>
                                        <input type="text" name="image" placeholder="https://github.com/John-Nguyen0411/Clone-Netflix-/blob/main/Inner-Website/lib/js/app.js" class="form-control" id="trailer" placeholder="1234 Main St">
                                    </div>
                                    <div class="form-group">
                                        <label for="movie">Movie</label>
                                        <input type="text" name="movie" value="https://github.com/John-Nguyen0411/Clone-Netflix-/blob/main/Inner-Website/lib/js/app.js" class="form-control" id="movie">
                                    </div>
                                    <div class="form-group">
                                        <label for="Description">Description</label>
                                        <textarea class="form-control" name="description" id="Description" rows="3"> Hello</textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="Logo">Logo</label>
                                        <input type="text" name="logo" value="https://github.com/John-Nguyen0411/Clone-Netflix-/blob/main/Inner-Website/lib/js/app.js" class="form-control" id="logo">
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                            <input type="checkbox" id="inputCall2" name="top_hot" class="peer">
                                            <label for="inputCall2" class="peers peer-greed js-sb ai-c">
                                                <span class="peer peer-greed">Top Hot</span>
                                            </label>
                                        </div>
                                    </div>
                                   <%if(param != null){ %>
                                     <input type="hidden" name="command" value="update">
                                     <input type="hidden" name="movie_id" value="<%=param%>">
                                     <input type="hidden" name="validation" value="">
                                    <%}else { %>
                                    <input type="hidden" name="command" value="insert">
                                    <input type="hidden" name="validation" value="">
                                    <%} %>
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </form>
                            </div>
                        </div>
                        <div class="card mb-4 pl-2 col-6 pr-2">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i> Actors
                                <%if(param != null){ %>
                                <button class="btn-add float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                                    <i class="fas fa-plus"></i>
                                    <span>Add</span>
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
                                       		<%if(actormovieDAO.getListMovie_Actor(Integer.parseInt(param)).size() > 0){%>
                                       	<tbody>
                                       		 <% int sttActor = 0; %>
                                            <%for(ActorMovie am : actormovieDAO.getListMovie_Actor(Integer.parseInt(param))){ %>
                                            <tr>
                                                <td><%=++sttActor %></td>
                                                <td><%=am.getLastName() + " " + am.getFirstName() %></td>
                                                <td><%=am.getLast_update() %></td>
                                                <td class="text-center">
                                                  <button class="btn-trash btn-danger border-0">
                                                   <a class="text-decoration-none text-light" 
                                                   href="${root}/ManagerMovie?command=deleteActor&stt=<%=am.getStt()%>&movie_id=<%=param%>">
                                                    	<i class="fas fa-trash"></i>
                                                   </a>
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
                    <div class="d-flex mt-2">
                        <div class="card mb-4 pl-2 col-6 pr-2">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i> Categories
                                 <%if(param != null){ %>
                                <button class="btn-add-Category float-right w-auto btn-info border-0 p-1 pr-2 pl-2">
                                <div>
                                    <i class="fas fa-plus"></i>
                                    <span>Add</span>
                                </div>
                           	 	</button>
                            	<%} %>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Name</th>
                                               
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>STT</th>
                                                <th>Name</th>
                                                
                                                <th>Edit</th>
                                            </tr>
                                        </tfoot>
                                         <%if(param != null){ %>
                                       		<%if(movieCateDAO.getListCategoryOfMovie(Integer.parseInt(param),2).size() > 0){%>
                                       	<tbody>
                                       		 <% int sttActor = 0; %>
                                            <%for(DetailMovie am : movieCateDAO.getListCategoryOfMovie(Integer.parseInt(param),2)){ %>
                                            <tr>
                                                <td><%=++sttActor %></td>
                                                <td><%=am.getcategory_name()%></td>
                                                <td class="text-center">
                                                  <button class="btn-trash btn-danger border-0">
                                                   <a class="text-decoration-none text-light" 
                                                   href="${root}/ManagerMovie?command=deleteCate&sttCate=<%=am.getStt()%>&movie_id=<%=param%>">
                                                    	<i class="fas fa-trash"></i>
                                                   </a>
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
    
     <script type="text/javascript">
	const model = document.querySelector('.modelAcc'),
		    body = document.querySelector('body'),
		    btnAdd = document.querySelector('.btn-add'),
		    modelCate = document.querySelector('.modelCate'),
    		btnAddCate = document.querySelector('.btn-add-Category'),
    		listActor = document.querySelector('.list_actor_id')
    		
    		
	btnAddCate.addEventListener('click', () => {
    modelCate.classList.add('open');
    body.classList.add('hideScroll');
    let topOffset = window.pageYOffset;
    modelCate.style.top = topOffset + 'px';
})
    btnAdd.addEventListener('click', () => {
        model.classList.add('open');
        body.classList.add('hideScroll');
        let topOffset = window.pageYOffset;
        model.style.top = topOffset + 'px';
    })
	modelCate.addEventListener("click", function(e) {
    if (e.target.classList.contains('modelCate')) {
        modelCate.classList.remove("open");
        body.classList.remove('hideScroll');
    }
	});
    model.addEventListener("click", function(e) {
        if (e.target.classList.contains('modelAcc')) {
            model.classList.remove("open");
            body.classList.remove('hideScroll');
        }
    });
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="${root}/Admin/dist/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="${root}/Admin/dist/assets/demo/datatables-demo.js"></script>
</body>

</html>
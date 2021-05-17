<%@page import="model.Account, java.util.*" %>
<%@page import="DAO.AccountDAO" %>
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
    <title>Account</title>
    <link href="${root}/Admin/dist/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<% AccountDAO accDAO = new AccountDAO(); %>
	<%
		String error = "";
		if(request.getParameter("error") != null)
		{
			error = (String) request.getParameter("error");
		}
	%>
	
    <jsp:include page="Header.jsp"></jsp:include>
        <div class="modelAcc open">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Create Account</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
                <h6 class="text-danger">${error}</h6>
                    <form action="${root}/ManagerAccountServlet" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="email" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">          	               	
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword">Password</label>
                            <input type="password" name="password" size="50" class="form-control"  placeholder="Password">
                            
                        </div>
                        <div class="form-group">
                            <label for="expiration">Expiration Date</label>
                            <input type="date" value="2013-01-08" name="date" class="form-control">
                           
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" name="phone" maxlength="11" size="11" class="form-control" placeholder="Phone">
                           	
                        </div>
                         <input type="hidden" name="command" value="insert">
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
                        <li class="breadcrumb-item active">Accounts</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i> Data Table Accounts
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
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Expiration Date</th>
                                            <th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>STT</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Expiration Date</th>
                                            <th>Edit</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <%
                                    for(model.Account ac : accDAO.getListAccount()){
                                    %>
                                        <tr> 
                                        	<td><%=ac.getStt() %></td>
                                            <td><%=ac.getEmail() %></td>
                                            <td><%=ac.getPhone() %></td>
                                            <td><%=ac.getExpiration_date()%></td>
                                            <td class="text-center">
                                                <button class="btn-trash btn-danger border-0">  
                                                     <a class="text-decoration-none text-light" href="${root}/ManagerAccountServlet?command=delete&email=<%=ac.getEmail()%>">
                                                     <i class="fas fa-trash"></i>
                                                     </a>                                                
                                                     </button>
                                                <button class="btn-wrench bg-info border-0">
                                                  <a class="text-decoration-none text-light" href="${root}/Admin/dist/update_account.jsp?command=update&email=<%=ac.getEmail()%>">
                                                   <i class="fas fa-wrench"></i>
                                                   </a>
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

      <script type="text/javascript">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="${root}/Admin/dist/js/scripts.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="${root}/Admin/dist/assets/demo/datatables-demo.js"></script>
</body>

</html>
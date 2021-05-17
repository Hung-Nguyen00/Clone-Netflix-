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
<body class="sb-nav-fixed hideScroll">
	<% AccountDAO accDAO = new AccountDAO(); 
		Account account = new Account();
		String email = "";
		if(request.getParameter("email")!= null){
			email = request.getParameter("email");
			account = accDAO.getAccount(email);
		}
		
	%>
	
    <jsp:include page="function_header.jsp"></jsp:include>
        <div class="modelAcc open">
            <div class="model-account bgc-white p-20 bd">
                <h6 class="c-grey-900 pt-3 text-center">Edit Account</h6>
                <div class="mT-30 pr-2 pl-2 pb-2">
     
                    <form action="${root}/ManagerAccountServlet" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="email_edit" class="form-control" required disabled value="<%=account.getEmail()%>">     	               	
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword">Password</label>
                            <input type="text" name="password" size="50" class="form-control"  value="<%=account.getPasswordAccount() %>" placeholder="Password">
                            
                        </div>
                         
                        <div class="form-group">
                            <label for="expiration">Expiration Date</label>
                            <input type="date"  value="<%=account.getExpiration_date()%>" required name="date" class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" name="phone" size="11" required value="<%=account.getPhone()%>" class="form-control" placeholder="Phone">
                           
                        </div>
                         <input type="hidden" name="command" value="update">
                     	<input type="hidden" name="email_account" value="<%=request.getParameter("email")%>">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <div id="layoutSidenav_content">
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
    <script src="${root}/Admin/dist/js/scripts.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="${root}/Admin/dist/assets/demo/datatables-demo.js"></script>
</body>

</html>
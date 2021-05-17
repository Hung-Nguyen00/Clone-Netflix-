<%@page import="model.Account"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="model.Menu" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ page import="DAO.Account_ChildDAO" %>
<%@ page import="model.AccountChild" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Inner-Website/lib/css/inner-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <title>Browse</title>
</head>
<body>
<c:set var = "root" value="${pageContext.request.contextPath}"/>
<%
response.setHeader("Cache-Control","no-cahe, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
	if(session.getAttribute("email")==null){
		response.sendRedirect("/Netflix_Clone/Inner-Website/firstHome.jsp");
	}
%>
<%
	Account_ChildDAO ac_dao = new Account_ChildDAO();
	String email= String.valueOf(session.getAttribute("email"));
	 %>
    <header>	
        <a href="#" class="logo"><img src="https://truecostmovie.com/img/TTC/wp-content/uploads/2015/10/netflix_logo_digitalvideo-1.png" alt=""></a>
    </header>
    <div class="browse-tab">
        <div class="browse-tab-header">
            <h1>Who's watching </h1>
        </div>
        <div class="browse-tab-accounts">
        	<% for(AccountChild ac : ac_dao.getAccountChildsbyEmail(email)) { %>
            <div class="account-container">
                <div class="account-avatar">
                <form action="${root}/logintoid?account_id=<%=ac.getAccountId() %>" method="post">
                	<button type="submit">
                		<img src="<%=ac.getAvatar()%>" alt="">
                	</button>    	
                </form>
                </div>
                <h1><%=ac.getNameAccount()%></h1>
            </div>
            <%} %>
            <%if(ac_dao.getAccountChildsbyEmail(email).size()<5) {%>
            <div class="account-container">
                <div class="account-avatar">
                    <a href="../Inner-Website/createAccount.jsp"><i class="fas fa-plus"></i></a>
                </div>
                <h1>New account</h1>
            </div>
            <%} %>
        </div>
        <div class="browse-tab-manage">
            <button class="browse-manage-button">
                MANAGE PROFILES
            </button>
        </div>
    </div>

</body>
</html>
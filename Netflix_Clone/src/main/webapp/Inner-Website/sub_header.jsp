<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.CategoryDAO" %>
<%@ page import="model.Category" %>
<%@ page import="DAO.MenuDAO" %>
<%@ page import="model.Menu" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<c:set var = "root" value="${pageContext.request.contextPath}"/>
<title>Insert title here</title>
</head>
<body>
  <%
	MenuDAO menu_dao = new MenuDAO();
  CategoryDAO category_dao = new CategoryDAO();
	int menu_id=-1;
	if(request.getParameter("menu_id")!=null)
	{
		menu_id= Integer.parseInt(request.getParameter("menu_id")) ;
	}
	
	 %>
    <div class="sub-header">
 	<% for(Menu m : menu_dao.getListMenu((byte)menu_id)) { %>
        <div class="sub-header-title">
            <h1><%=m.getNameMenu()%></h1>
        </div>
        <%} %>
        <div class="sub-header-genres">
            <h5>Genres</h5>
            <span></span>
            
            <div class="sub-header-menu">
               <ul>
                <% int index =0; %>
                <% for(Category c : category_dao.getCategorybyMenu(menu_id)) { %>
                <%index++ ;%>
                <li> <a href="${root}/Inner-Website/detail_category.jsp?category_id=<%=c.getCategoryId() %>"><%=c.getNameCategory() %></a></li>
                	<%if(index % 5 == 0 && index < category_dao.getCategorybyMenu(menu_id).size() ){ %>
                	</ul>
                	<ul>
                	<%} %>
               	 <%} %>       
               	</ul>
            </div>
            
        </div>

    </div>
    <!-- header end -->
</body>
</html>
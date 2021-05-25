<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./lib/css/login.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <c:set var = "root" value="${pageContext.request.contextPath}"/>
    <title>Netflix signup</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="./lib/js/login.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" 
type="text/javascript"></script>
 <script type="text/javascript">
 $(document).ready(function () {
 var x_timer;
 $("#email").keyup(function (e) {
 clearTimeout(x_timer);
 var user_name = $(this).val();
 x_timer = setTimeout(function () {
 check_username_ajax(user_name);
 }, 1000);
 });
 function check_username_ajax(username) {
 $("#user-result").html('<img src="img/ajax-loader.gif" />');
 $.post('CheckEmailServlet', {'username': username}, function (data) {
 $("#user-result").html(data);
 });
 }
 });
 </script>
    
</head>

<body>
    <div class="container-fluid d-flex flex-column">
        <div class="header row pt-3 pl-5">
            <img src="../Inner-Website/data/img/logo1.png" alt="Weflix" />
        </div>
        <div class="body row">
            <div class="px-2">
                <div class="login-box">
                    <div class="pb-3">
                        <h1 class="text-white m-0"><b>Sign Up</b></h1>
                    </div>
                    <form action="${root}/signup" method="post">
                    <div class="sign-up">
                        <div class="form-group input-group my-3">
                            <input type="email" class="form-control bg-dark text-light w-100" name="email" id="input-username" aria-describedby="help-username" placeholder="Email or phone number" onfocus="showElement('usernameTip')" onblur="hideElement('usernameTip')" />
                            <small id="usernameTip" class="text-warning" style="display: none;">
                  <i class="fa fa-info-circle" aria-hidden="true"></i>
                  Please enter a valid email.
                </small>
                        </div>
                        <div class="form-group input-group my-3">
                            <input type="password" class="form-control bg-dark text-light w-100" name="password" id="input-password" aria-describedby="help-password" placeholder="Password" onfocus="showElement('pwdTip')" onblur="hideElement('pwdTip')" />
                            <small id="pwdTip" class="text-warning" style="display: none;">
                  <i class="fa fa-info-circle" aria-hidden="true"></i>
                  Your password must contain at least 8 characters (containing at least an uppercase letter, a lowercase letter, a number and a symbol).
                </small>
                        </div>
                        <div class="form-group input-group my-3">
                            <input type="password" class="form-control bg-dark text-light w-100" name="input-confirm" id="input-confirm" aria-describedby="help-confirm" placeholder="Confirm password" onfocus="showElement('pwdConfirmTip')" onblur="hideElement('pwdConfirmTip')" />
                            <small id="pwdConfirmTip" class="text-warning" style="display: none;">
                  <i class="fa fa-info-circle" aria-hidden="true"></i>
                  Both passwords must match.
                </small>
                        </div>
                    </div>
                    <button id="signup-btn" type="submit" class="btn btn-danger w-100">
              Sign Up
            </button>
            </form>
                    <div class="description">
                        <div class="mt-4">
                            <a href="login.jsp" class="text-light pt-4">Back to log in</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    	<jsp:include page="footer_first_Home.jsp"></jsp:include>
    </div>
</body>

</html>
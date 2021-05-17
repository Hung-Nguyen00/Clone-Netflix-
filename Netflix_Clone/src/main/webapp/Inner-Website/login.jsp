<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Inner-Website/lib/css/login.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>Netflix login page</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="./lib/js/login.js"></script>
    <c:set var = "root" value="${pageContext.request.contextPath}"/>
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
                        <h1 class="text-white m-0"><b>Sign In</b></h1>
                    </div>
                    <form action="${root}/ManagerAccountServlet" method="post">
                    <div class="sign-in">
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
                    </div>
                    
                    <div class="form-below">
                        <div class="form-check col">
                            <label class="form-check-label text-light">
                  <input
                    type="checkbox"
                    class="form-check-input"
                    name="check-remember"
                    id="check-remember"
                    value="remember"
                    checked
                  />
                  Remember me
                  
                </label>
                <input type= "hidden" name= "command" value="login">
                <button id="login" type="submit"  class="btn btn-danger w-100 mb-3">
              Sign In
            </button>
                </form>
                        </div>
                        <div class="form-help col">
                            <a href="#" class="text-light">Need help?</a>
                        </div>
                    </div>
                    <div class="description pt-4">
                        <div class="des-fb mt-4">
                            <a href="#" class="text-secondary">
                    <!--Login with Facebook-->
                    <i class="fa fa-facebook"></i>
                  </a>
                        </div>
                        <div class="des-signup mt-2 text-secondary">
                            New to Weflix?
                            <a href="sigup.jsp"class=" text-light ">Sign up now.</a>
                        </div>
                        <div class="des-captcha mt-2 text-secondary ">
                            This page is protected by Google reCAPTCHA to ensure you're not a bot.
                            <a class="text-primary " href="javascript:toggleElement( 'captchaTip') ">Learn more.</a>
                            <small id="captchaTip " style="display: none; ">The information collected by Google reCAPTCHA is subject to the Google Privacy Policy and Terms of Service, and is used for providing, maintaining, and improving the reCAPTCHA service and for general security purposes (it is not used for personalized advertising by Google).</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
  	<jsp:include page="footer_first_Home.jsp"></jsp:include>
</body>

</html>
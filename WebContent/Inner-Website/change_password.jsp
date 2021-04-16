<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Inner-Website/lib/css/account.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <title>Activity</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="./lib/js/login.js"></script>
</head>

<body>
    <div class="container">
       <jsp:include page="headerAccount.jsp"></jsp:include>
        <div class="row mt-4 align-items-end">
            <h1>Change Password</h1>
            <div class="change-pwd">
                <div class="form-group input-group my-3 py-4">
                    <input type="password" class="form-control bg-light text-dark w-100" name="input-current" id="input-current" aria-describedby="help-current" placeholder="Current password" />
                    <a href="#"><small class="text-primary">Forgot password?</small></a>
                </div>
                <div class="form-group input-group my-3 py-4">
                    <input type="password" class="form-control bg-light text-dark w-100" name="input-password" id="input-password" aria-describedby="help-password" placeholder="New password" onfocus="showElement('pwdTip')" onblur="hideElement('pwdTip')" />
                    <small id="pwdTip" class="text-muted" style="display: none;">
                    <i class="fa fa-info-circle" aria-hidden="true"></i>
                    Your password must contain at least 8 characters (containing at least an uppercase letter, a lowercase letter, a number and a symbol).
                  </small>
                </div>
                <div class="form-group input-group my-3 py-4">
                    <input type="password" class="form-control bg-light text-dark w-100" name="input-confirm" id="input-confirm" aria-describedby="help-confirm" placeholder="Confirm new password" onfocus="showElement('pwdConfirmTip')" onblur="hideElement('pwdConfirmTip')"
                    />
                    <small id="pwdConfirmTip" class="text-muted" style="display: none;">
                    <i class="fa fa-info-circle" aria-hidden="true"></i>
                    Both passwords must match.
                  </small>
                </div>
                <div class="form-check col my-3 py-4">
                    <label class="form-check-label text-dark">
                    <input
                      type="checkbox"
                      class="form-check-input"
                      name="check-require"
                      id="check-require"
                      value="require"
                      checked
                    />
                    Require all devices to sign in again with new password.
                  </label>
                </div>
            </div>
            <div class="buttons my-3 py-4">
                <a id="login" type="submit" href="javascript:changePassword()" class="btn btn-primary mb-3">
                Save
              </a>
                <a id="login" type="submit" href="./account.html" class="btn btn-light mb-3">
                Cancel
              </a>
            </div>
        </div>

        <footer class="footer container-fluid px-5">
            <p>Questions? Call 1-866-579-7172</p>
            <div class="footer-cols">
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Investor Relations</a></li>
                    <li><a href="#">Ways To Watch</a></li>
                    <li><a href="#">Corporate Information</a></li>
                    <li><a href="#">Netflix Originals</a></li>
                </ul>
                <ul>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Jobs</a></li>
                    <li><a href="#">Terms Of Use</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
                <ul>
                    <li><a href="#">Account</a></li>
                    <li><a href="#">Redeem Gift Cards</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Speed Test</a></li>
                </ul>
                <ul>
                    <li><a href="#">Media Center</a></li>
                    <li><a href="#">Buy Gift Cards</a></li>
                    <li><a href="#">Cookie Preferences</a></li>
                    <li><a href="#">Legal Notices</a></li>
                </ul>
            </div>
        </footer>
    </div>
</body>

</html>
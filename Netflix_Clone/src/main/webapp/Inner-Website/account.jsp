<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Inner-Website/lib/css/account.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <title>Accounts</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">
			<jsp:include page="headerAccount.jsp"></jsp:include>
        <div class="row">
            <div class="h1">Account</div>
        </div>
        <div class="row py-3">
            <div id="membership" class="col-12 col-md-2">
                <div class="h2 text-uppercase">membership</div>
                <a href="#" class="btn btn-light">Cancel Membership</a>
            </div>
            <div id="membership-info" class="col-12 col-md-8">
                <div id="email">abc@xyz.com</div>
                <div id="pwd">password:****</div>
                <div id="phone">phone:0123456789</div>
            </div>
            <div id="change-options" class="col-12 col-md-2">
                <a href="./change-password.html">Change password</a></br>
                <a href="#">Change account email</a></br>
                <a href="#">Change phone number</a></br>
            </div>
        </div>
        <div class="row py-3">
            <div id="settings" class="col-12 col-md-2">
                <div class="h2 text-uppercase">settings</div>
            </div>
            <div id="settings-options" class="col-12 col-md-10">
                <a href="#">Test participation</a></br>
                <a href="#">Manage download devices</a></br>
                <a href="#">Activate a device</a></br>
                <a href="#">Recent device streaming activity</a></br>
                <a href="#">Sign out of all devices</a></br>
                <a href="#">Download your personal information</a></br>
            </div>
        </div>
        <div class="row py-3">
            <div id="profile" class="col-12 col-md-2">
                <div class="h2 text-uppercase">profile</div>
            </div>
            <div id="profile-options" class="col-12 col-md-10" role="tablist" aria-multiselectable="true">
                <div class="card">
                    <div class="card-header" role="tab" id="profileHeader1">
                        <h5 class="mb-0">
                            <a class="dropdown row" data-toggle="collapse" data-parent="#profile-options" href="#profileUser1" aria-expanded="true" aria-controls="profileUser1">
                                <img src="https://occ-0-395-64.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAABUqy-FKaqC_UTCHKRnqVxEoax4Bl_EHRvEYR0PdDDecAIlJQDQaQck8fFN2P6p7J5PL8EGKpusCFm7mCtLaI7iA.png?r=f08" alt="avt1" class="col-2">
                                <div class="profile-info col-8">
                                    <div class="profile-header">User 1</div>
                                </div>
                                <div class="profile-dropdown col-2">
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </div>
                            </a>
                        </h5>
                    </div>
                    <div id="profileUser1" class="collapse in row" role="tabpanel" aria-labelledby="profileHeader1">
                        <div class="card-body">
                            <div class="col-2"></div>
                            <div class="col-10 container-fluid">
                                <div class="profile-option row">
                                    <div class="col-10">
                                        <div class="profile-header">Viewing Activity</div>
                                    </div>
                                    <div class="col-2 justify-content-center align-items-center">
                                        <a href="./activity.html#watching">View</a>
                                    </div>
                                </div>
                                <div class="profile-option row">
                                    <div class="col-10">
                                        <div class="profile-header">Ratings</div>
                                    </div>
                                    <div class="col-2 justify-content-center align-items-center">
                                        <a href="./activity.html#rating">View</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" role="tab" id="profileHeader2">
                        <h5 class="mb-0">
                            <a class="dropdown row" data-toggle="collapse" data-parent="#profile-options" href="#profileUser2" aria-expanded="true" aria-controls="profileUser2">
                                <img src="https://occ-0-395-64.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAABUqy-FKaqC_UTCHKRnqVxEoax4Bl_EHRvEYR0PdDDecAIlJQDQaQck8fFN2P6p7J5PL8EGKpusCFm7mCtLaI7iA.png?r=f08s" alt="avt2" class="col-2" />
                                <div class="profile-info col-8">
                                    <div class="profile-header">User 2</div>
                                </div>
                                <div class="profile-dropdown col-2">
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </div>
                            </a>

                        </h5>
                    </div>
                    <div id="profileUser2" class="collapse in row" role="tabpanel" aria-labelledby="profileHeader2">
                        <div class="card-body">
                            <div class="col-2"></div>
                            <div class="col-10 container-fluid">
                                <div class="profile-option row">
                                    <div class="col-10">
                                        <div class="profile-header">Viewing Activity</div>
                                    </div>
                                    <div class="col-2 justify-content-center align-items-center">
                                        <a href="./activity.html#watching">View</a>
                                    </div>
                                </div>
                                <div class="profile-option row">
                                    <div class="col-10">
                                        <div class="profile-header">Ratings</div>
                                    </div>
                                    <div class="col-2 justify-content-center align-items-center">
                                        <a href="./activity.html#rating">View</a>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
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


</body>

</html>
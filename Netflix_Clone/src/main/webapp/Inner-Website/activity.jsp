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
</head>

<body>
    <div class="container">
		<jsp:include page="headerAccount.jsp"></jsp:include>
        <div class="row mt-4 align-items-end">
            <div class="h1 col-4">Activity for <span id="user">User 1</span></div>
            <!-- TODO: Thêm ngăn cách -->
            <ul class="nav nav-tabs col-6 justify-content-end" id="activityTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="watching-tab" data-bs-toggle="tab" data-bs-target="#watching" type="button" role="tab" aria-controls="watching" aria-selected="true">
              Watching
            </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="rating-tab" data-bs-toggle="tab" data-bs-target="#rating" type="button" role="tab" aria-controls="rating" aria-selected="false">
              Rating
            </button>
                </li>
            </ul>
            <div class="col-2">
                <a href="#">
                    <img style="max-width: 48px; max-height: 48px" class="img-border-radius" src="https://occ-0-395-64.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAABUqy-FKaqC_UTCHKRnqVxEoax4Bl_EHRvEYR0PdDDecAIlJQDQaQck8fFN2P6p7J5PL8EGKpusCFm7mCtLaI7iA.png?r=f08"
                        alt="avt1" />
                </a>
            </div>
            <div class="tab-content mt-4 py-4" id="activityTabsContent">
                <div class="tab-pane fade show active" id="watching" role="tabpanel" aria-labelledby="watching-tab">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-1">03/08/21</div>
                            <div class="col-8"><a href="#">Movie Name</a></div>
                            <div class="col-3">
                                <a href="#" class="text-dark px-3">Report a problem</a>
                                <a href="#" class="text-dark"><i class="fa fa-ban" aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1">03/08/21</div>
                            <div class="col-8"><a href="#">Movie 2 Name</a></div>
                            <div class="col-3">
                                <a href="#" class="text-dark px-3">Report a problem</a>
                                <a href="#" class="text-dark"><i class="fa fa-ban" aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1">03/07/21</div>
                            <div class="col-8"><a href="#">Movie 3 Name</a></div>
                            <div class="col-3">
                                <a href="#" class="text-dark px-3">Report a problem</a>
                                <a href="#" class="text-dark"><i class="fa fa-ban" aria-hidden="true"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div>
                                <a href="#" class="btn btn-primary disabled">Show More</a>
                                <a href="./account.html" class="btn btn-light">Back to Account</a>
                </div>
              </div>
            </div>
          </div>
          <div
            class="tab-pane fade"
            id="rating"
            role="tabpanel"
            aria-labelledby="rating-tab"
          >
            <div class="container-fluid">
              <div class="row">
                <div class="col-1">03/08/21</div>
                <div class="col-9"><a href="#">Movie Name</a></div>
                            <div class="col-2">
                                <a href="#" class="text-dark"><i class="fa fa-thumbs-up" aria-hidden="true"></i
                  ></a>
                                <a href="#" class="text-dark"><i class="far fa-thumbs-down" aria-hidden="true"></i
                  ></a>
                                <a href="#" class="text-dark">X</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1">01/12/21</div>
                            <div class="col-9"><a href="#">Show Name</a></div>
                            <div class="col-2">
                                <a href="#" class="text-dark"><i class="fa fa-thumbs-up" aria-hidden="true"></i
                  ></a>
                                <a href="#" class="text-dark"><i class="far fa-thumbs-down" aria-hidden="true"></i
                  ></a>
                                <a href="#" class="text-dark">X</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1">01/08/21</div>
                            <div class="col-9"><a href="#">Documentary Name</a></div>
                            <div class="col-2">
                                <a href="#" class="text-dark"><i class="fa fa-thumbs-up" aria-hidden="true"></i
                  ></a>
                                <a href="#" class="text-dark"><i class="far fa-thumbs-down" aria-hidden="true"></i
                  ></a>
                                <a href="#" class="text-dark">X</a>
                            </div>
                        </div>
                        <div class="row">
                            <div>
                                <a href="#" class="btn btn-primary disabled">Show More</a>
                                <a href="./account.html" class="btn btn-light">Back to your Account</a
                  >
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
                        </div>
</body>

</html>
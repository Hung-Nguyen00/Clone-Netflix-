<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../Inner-Website/lib/css/first_style.css" />
    <title>Netflix Vietnam - Watch TV Shows Online, Watch Movies Online</title>
</head>

<body>
    <header class="showcase">
        <div class="showcase-top">
            <a href="firstHome.jsp"> <img src="../Inner-Website/data/img/logo1.png" alt="Netflix" /></a>
            <a href="login.jsp" class="btn"> Sign In </a>
        </div>
        <div class="showcase-content">
            <h1>Unlimited movies, TV shows, and more.</h1>
            <p>Watch anywhere. Cancel anytime</p>
            <h2>
                Ready to watch? Enter your email to create or restart your membership.
            </h2>
            <div class="email-form">
                <div class="email-input-container">
                    <input type="text" name="" id="" />
                    <label for="">Email Address</label>
                </div>
                <button onclick="signup()">Get started</button>
            </div>
        </div>
    </header>
    <div class="Enjoy description-tab">
        <div class="description-tab-text">
            <h1>Enjoy on your TV.</h1>
            <p>
                Watch on Smart TVs, Playstation, Xbox, Chromecast, Apple TV, Blu-ray players, and more.
            </p>
        </div>
        <div class="description-tab-gif">
            <img src="../Inner-Website/data/img/TV.gif" alt="" />
        </div>
    </div>

    <div class="Download description-tab">
        <div class="description-tab-gif">
            <img src="../Inner-Website/data/img/Download.gif" alt="" />
        </div>
        <div class="description-tab-text">
            <h1>Download your shows to watch offline.</h1>
            <p>Save your favorites easily and always have something to watch.</p>
        </div>
    </div>

    <div class="Watch description-tab">
        <div class="description-tab-text">
            <h1>Watch everywhere.</h1>
            <p>
                Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV without paying more.
            </p>
        </div>
        <div class="description-tab-gif">
            <img src="../Inner-Website/data/img/Everywhere .gif" alt="" />
        </div>
    </div>
    <div class="FAQ-tab">
        <h1>Frequently Asked Questions</h1>
        <ul class="FAQ-list">
            <li class="FAQ-item">
                <button class="FAQ-question" value="What-is-Netflix">
            What is Netflix?
          </button>
                <div class="FAQ-answer" id="What-is-Netflix">
                    <span id="" data-uia="">Netflix is a streaming service that offers a wide variety of
              award-winning TV shows, movies, anime, documentaries, and more on
              thousands of internet-connected devices.<br /><br />You can watch
              as much as you want, whenever you want without a single commercial
              – all for one low monthly price. There's always something new to
              discover and new TV shows and movies are added every week!</span
            >
          </div>
        </li>
        <li class="FAQ-item">
          <button class="FAQ-question" value="How-much-does-Netflix-cost">
            How much does Netflix cost?
          </button>
          <div class="FAQ-answer" id="How-much-does-Netflix-cost">
            <span id="" data-uia=""
              >Watch Netflix on your smartphone, tablet, Smart TV, laptop, or
              streaming device, all for one fixed monthly fee. Plans range from
              180,000&nbsp;₫ to 260,000&nbsp;₫ a month. No extra costs, no
              contracts.</span
            >
          </div>
        </li>
        <li class="FAQ-item">
          <button class="FAQ-question" value="Where-can-I-watch">
            Where can I watch?
          </button>
          <div class="FAQ-answer" id="Where-can-I-watch">
            <span id="" data-uia=""
              >Watch anywhere, anytime, on an unlimited number of devices. Sign
              in with your Netflix account to watch instantly on the web at
              netflix.com from your personal computer or on any
              internet-connected device that offers the Netflix app, including
              smart TVs, smartphones, tablets, streaming media players and game
              consoles.<br /><br />You can also download your favorite shows
              with the iOS, Android, or Windows 10 app. Use downloads to watch
              while you're on the go and without an internet connection. Take
              Netflix with you anywhere.</span
            >
          </div>
        </li>
        <li class="FAQ-item">
          <button class="FAQ-question" value="How-do-I-cancel">
            How do I cancel?
          </button>
          <div class="FAQ-answer" id="How-do-I-cancel">
            <span id="" data-uia=""
              >Netflix is flexible. There are no pesky contracts and no
              commitments. You can easily cancel your account online in two
              clicks. There are no cancellation fees – start or stop your
              account anytime.</span
            >
          </div>
        </li>
        <li class="FAQ-item">
          <button class="FAQ-question" value="What-can-I-watch-on-Netflix">
            What can I watch on Netflix?
          </button>
          <div class="FAQ-answer" id="What-can-I-watch-on-Netflix">
            <span id="" data-uia=""
              >Netflix has an extensive library of feature films, documentaries,
              TV shows, anime, award-winning Netflix originals, and more. Watch
              as much as you want, anytime you want.</span
            >
          </div>
        </li>
      </ul>
      <p>
        Ready to watch? Enter your email to create or restart your membership.
      </p>
      <div class="email-form">
        <div class="email-input-container">
          <input type="text" name="" id="" />
          <label for="">Email Address</label>
        </div>
        <button>Get started ></button>
      </div>
    </div>
    <footer class="footer">
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
    <script src="../Inner-Website/lib/js/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">

function signup() {
var email = $("input").val();
location.replace("signup.jsp");
}

</script>
  </body>
</html>
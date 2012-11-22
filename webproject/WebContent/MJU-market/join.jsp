<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="EUC-KR">
    <title>RECYCLE Market</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="./css/style.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">

  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logged in as <a href="#" class="navbar-link">Username</a>
            </p>
            <ul class="nav">
              <li class="active"><a href="main.jsp">Home</a></li>
              <li><a href="login.jsp">Log in</a></li>
              <li><a href="Join.jsp">Join us</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">BOOKS</li>
              <li class="active"><a href="#">전공서적</a></li>
              <li><a href="#">교양서적</a></li>
              <li><a href="#">기타서적</a></li>
              <li class="nav-header">CLOTHES</li>
              <li><a href="#">outer</a></li>
              <li><a href="#">top</a></li>
              <li><a href="#">bottom</a></li>
              <li><a href="#">acc/bags</a></li>
              <li><a href="#">shoes</a></li>
              <li class="nav-header">ELECTRONICS</li>
              <li><a href="#">핸드폰 관련 전자기기</a></li>
              <li><a href="#">컴퓨터 관련 전자기기</a></li>
              <li><a href="#">기타 전자기기</a></li>
              <li class="nav-header">ETC</li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit">
            <a href="main.jsp">main logo</a>
          </div>
          <div class="row-fluid">
            <div class="span4">
           <jsp:include page="signup.jsp">
  <jsp:param name="current" value="sing UP"/>
</jsp:include>
                          </div><!--/span-->
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; Myeong-ji univ. Computer Engineering 60092457 Han taehee | 60092389 Park joonbyeong</p>
      </footer>

    </div><!--/.fluid-container-->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./js/jquery.js"></script>
    <script src="./js/bootstrap-transition.js"></script>
    <script src="./js/bootstrap-alert.js"></script>
    <script src="./js/bootstrap-modal.js"></script>
    <script src="./js/bootstrap-dropdown.js"></script>
    <script src="./js/bootstrap-scrollspy.js"></script>
    <script src="./js/bootstrap-tab.js"></script>
    <script src="./js/bootstrap-tooltip.js"></script>
    <script src="./js/bootstrap-popover.js"></script>
    <script src="./js/bootstrap-button.js"></script>
    <script src="./js/bootstrap-collapse.js"></script>
    <script src="./js/bootstrap-carousel.js"></script>
    <script src="./js/bootstrap-typeahead.js"></script>

  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <title>RECYCLE-Market</title>
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
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
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
          <a class="brand" href="#">Recycle-Market</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              <a href="#" class="navbar-link">Username</a>님 환영합니다.
            </p>
            <ul class="nav">
              <li><a href="main.jsp">Home</a></li>
              <li><a href="login.jsp">Log in</a></li>
              <li><a href="flogin">Log in as facebook</a><li>
              <li class="active"><a href="join.jsp">Join us</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">BOOKS</li>
              <li class="active"><a href="#">전공서적</a></li>
              <li><a href="#">교양서적</a></li>
              <li><a href="#">기타서적</a></li>
              <li class="nav-header">CLOTHES</li>
              <li><a href="#">outer</a></li>
              <li><a href="#">top</a></li>
              <li><a href="#">bottom</a></li>
              <li><a href="#">acc/bags</a></li>
              <li><a href="#">shoes</a></li>
              <li class="nav-header">ELECTRONICS</li>
              <li><a href="#">핸드폰 관련 기기</a></li>
              <li><a href="#">컴퓨터 관련 기기</a></li>
              <li><a href="#">기타 전자기기</a></li>
              <li class="nav-header">ETC</li>
            </ul>
          </div>
        </div>
        <div class="span9">
          <div class="hero-unit">
            <a href="main.jsp"><img src="./images/logo.jpg" alt="main logo"/></a>
          </div>
          <div class="row-fluid">      
          <% String log_check = (String)session.getAttribute("userid");
					boolean login = log_check == null ? false : true;
					%>

					<%if(login){
					session.invalidate();
					%>
					로그아웃되었습니다
					<a href="main.jsp">Home으로가기</a>
					<% }else { %>
					로그인이 되어있지 않습니다
					<jsp:forward page="login.jsp"/>
					<% } %>
          </div>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; Myeong-ji univ. Computer Engineering 60092457 Han taehee | 60092389 Park joonbyeong</p>
      </footer>

    </div>
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

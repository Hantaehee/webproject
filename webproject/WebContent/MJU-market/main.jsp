<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<% 
String userid =request.getParameter("userid");
String name = "";
session.setAttribute(name,"userid");
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <title>RECYCLE-Market</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="./css/style.css" rel="stylesheet">
    <script src='jquery=1.8.2.min.js'></script>
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
    <script src="//connect.facebook.net.en_US/all.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.2.min.js" charset="utf-8"></script>  
<script type="text/javascript">  
window.fbAsyncInit = function() {  
    FB.init({appId: '179854965488472', status: true, cookie: true,xfbml: true});      
};  
      
(function(d){  
   var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];  
   if (d.getElementById(id)) {return;}  
   js = d.createElement('script'); js.id = id; js.async = true;  
   js.src = "//connect.facebook.net/en_US/all.js";  
   ref.parentNode.insertBefore(js, ref);  
 }(document));     
              
function facebooklogin() {    
        FB.login(function(response) {  
            var fbname;  
            var accessToken = response.authResponse.accessToken;  
        }, {scope: 'publish_stream,user_likes'});  
}  
</script>  
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
              <a href="#" class="navbar-link">Guest</a>님 환영합니다.
            </p>
            <ul class="nav">
              <li class="active"><a href="main.jsp">Home</a></li>
              <li><a href="login.jsp">Log in</a></li>
              <li>
              <a onclick="facebooklogin()" style="cursor: pointer;">  
   						<img src="./images/facebook.jpg"/></a>  <li>
              <li><a href="join.jsp">Join us</a></li>
              
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
              <li><a href="book-major.jsp">전공서적</a></li>
              <li><a href="book-cul.jsp">교양서적</a></li>
              <li><a href="book-etc.jsp">기타서적</a></li>
              <li class="nav-header">CLOTHES</li>
              <li><a href="clothes-outer.jsp">outer</a></li>
              <li><a href="clothes-top.jsp">top</a></li>
              <li><a href="clothes-bottom.jsp">bottom</a></li>
              <li><a href="clothes-acc.jsp">acc/bags</a></li>
              <li><a href="clothes-shoes.jsp">shoes</a></li>
              <li class="nav-header">ELECTRONICS</li>
              <li><a href="elec-phone.jsp">핸드폰 관련 기기</a></li>
              <li><a href="elec-com.jsp">컴퓨터 관련 기기</a></li>
              <li><a href="elec-etc.jsp">기타 전자기기</a></li>
              <li class="nav-header">ETC</li>
              <li><a href="etc.jsp">기타물품</a></li>
            </ul>
          </div>
        </div>
        <div class="span9">
          <div class="hero-unit">
            <a href="main.jsp"><img src="./images/logo1.jpg"/></a>
          </div>
          <div class="row-fluid">
            <div class="span6">
              <h2>공지사항</h2>
              <p>*사이트 이용전 필독사항*</p>
                <ul>
            <li>이 사이트는 중고물품 거래를 위한 중고장터입니다</li>
            <li>광고글은 통보하지 않고 삭제합니다</li>
            <li>제품명이 없는 경우 확인 후 하루 뒤에 삭제합니다</li>
            <li>도난품 거래를 절대 금합니다</li>
            <li>이메일주소를 정확히 입력해주세요</li>
            <li>모든 기능은 로그인 후 이용가능합니다</li>
            </ul>
            </div>
            
          </div>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; Myeong-ji univ. Computer Engineering 60092457 <a href="mailto:djutty@naver.com">Han taehee</a> | 60092389 <a href="mailto:artroy1990@naver.com">Park joonbyeong</a></p>
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
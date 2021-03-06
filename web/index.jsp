<%@ page import="dto.UDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
  UDto user = (UDto) session.getAttribute("user");
  if(user != null)
    System.out.println(user.getuName());
  else
    System.out.println("아직 로그인 안됨");
%>
<html lang="en"><head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>New Age - Start Bootstrap Theme</title>

  <!-- jQuery -->
  <script src="vendor/jquery/jqueµry.min.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

  <!-- Theme JavaScript -->
  <script src="js/new-age.min.js"></script>

  <!-- Bootstrap Core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <!-- Custom Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">

  <!-- Plugin CSS -->
  <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
  <link rel="stylesheet" href="vendor/device-mockups/device-mockups.min.css">

  <!-- Theme CSS -->
  <link href="css/new-age.min.css" rel="stylesheet">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body id="page-top">

<nav id="mainNav" class="navbar navbar-default navbar-fixed-top affix-top" style="background:#000000">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
      </button>
      <a class="navbar-brand page-scroll" href="#page-top">Start Bootstrap</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li class="">
          <a class="page-scroll" href="#download">Download</a>
        </li>
        <li class="">
          <a class="page-scroll" href="#features">Features</a>
        </li>
        <li class="">
          <a class="page-scroll" href="#contact">Contact</a>
        </li>
        <li class="">
          <a class="page-scroll" href="list.do">게시판</a>
        </li>
        <li class="">
          <a class="page-scroll" id="login" href="go_login.do" >로그인</a>
        </li>
        <li class="">
          <a class="page-scroll" id="join" href="go_join.do" >회원가입</a>
        </li>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container-fluid -->
</nav>

<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-7">
        <div class="header-content">
          <div class="header-content-inner">
            <h1>New Age is an app landing page that will help you beautifully showcase your new mobile app, or anything else!</h1>
            <a href="#download" class="btn btn-outline btn-xl page-scroll">Start Now for Free!</a>
          </div>
        </div>
      </div>
      <div class="col-sm-5">
        <div class="device-container">
          <div class="device-mockup iphone6_plus portrait white">
            <div class="device">
              <div class="screen">
                <!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
                <img src="img/demo-screen-1.jpg" class="img-responsive" alt="">
              </div>
              <div class="button">
                <!-- You can hook the "home button" to some JavaScript events or just remove it -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>

<section id="download" class="download bg-primary text-center">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <h2 class="section-heading">Discover what all the buzz is about!</h2>
        <p>Our app is available on any mobile device! Download now to get started!</p>
        <div class="badges">
          <a class="badge-link" href="#"><img src="img/google-play-badge.svg" alt=""></a>
          <a class="badge-link" href="#"><img src="img/app-store-badge.svg" alt=""></a>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="features" class="features">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <div class="section-heading">
          <h2>Unlimited Features, Unlimited Fun</h2>
          <p class="text-muted">Check out what you can do with this app theme!</p>
          <hr>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="device-container">
          <div class="device-mockup iphone6_plus portrait white">
            <div class="device">
              <div class="screen">
                <!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
                <img src="img/demo-screen-1.jpg" class="img-responsive" alt=""> </div>
              <div class="button">
                <!-- You can hook the "home button" to some JavaScript events or just remove it -->
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-8">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6">
              <div class="feature-item">
                <i class="icon-screen-smartphone text-primary"></i>
                <h3>Device Mockups</h3>
                <p class="text-muted">Ready to use HTML/CSS device mockups, no Photoshop required!</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="feature-item">
                <i class="icon-camera text-primary"></i>
                <h3>Flexible Use</h3>
                <p class="text-muted">Put an image, video, animation, or anything else in the screen!</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="feature-item">
                <i class="icon-present text-primary"></i>
                <h3>Free to Use</h3>
                <p class="text-muted">As always, this theme is free to download and use for any purpose!</p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="feature-item">
                <i class="icon-lock-open text-primary"></i>
                <h3>Open Source</h3>
                <p class="text-muted">Since this theme is MIT licensed, you can use it commercially!</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div></section>

<section class="cta">
  <div class="cta-content">
    <div class="container">
      <h2>Stop waiting.<br>Start building.</h2>
      <a href="#contact" class="btn btn-outline btn-xl page-scroll">Let's Get Started!</a>
    </div>
  </div>
  <div class="overlay"></div>
</section>

<section id="contact" class="contact bg-primary">
  <div class="container">
    <h2>We <i class="fa fa-heart"></i> new friends!</h2>
    <ul class="list-inline list-social">
      <li class="social-twitter">
        <a href="#"><i class="fa fa-twitter"></i></a>
      </li>
      <li class="social-facebook">
        <a href="#"><i class="fa fa-facebook"></i></a>
      </li>
      <li class="social-google-plus">
        <a href="#"><i class="fa fa-google-plus"></i></a>
      </li>
    </ul>
  </div>
</section>

<footer>
  <div class="container">
    <p>© 2016 Start Bootstrap. All Rights Reserved.</p>
    <ul class="list-inline">
      <li>
        <a href="#">Privacy</a>
      </li>
      <li>
        <a href="#">Terms</a>
      </li>
      <li>
        <a href="#">FAQ</a>
      </li>
    </ul>
  </div>
</footer>


<script >
  var state = <%= user.getuKey()%>
  $(document).ready(function(){
    console.log(state);
      if(state ) {
        $("#login").html('<%=user.getuName()%>' + "님").attr("href","미정");
        $("#join").html("로그아웃하기").attr("href","logout.do").click(function(){
          if(confirm("로그아웃 하시겠습니까?") ){
             location.href="logout.do";
            return true;
          }else{
            return false;
          }
        });
      }
      else{
        $("#login").html("로그인").attr("href","go_login.do").click(function(){
          location.href="go_login.do";
          return true;
        });
        $("#join").html("회원가입").attr("href","go_join.do");
      }
  });




</script>


</body></html>
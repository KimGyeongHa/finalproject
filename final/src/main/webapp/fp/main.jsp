<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>
<html lang="en">
<head>


  <title>project.bb &mdash; </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@400;700&family=Roboto+Mono:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
  <link rel="stylesheet" href="css/jquery-ui.css" type="text/css">
  <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css"type="text/css" >
  <link rel="stylesheet" href="css/lightgallery.min.css"type="text/css" >    
  <link rel="stylesheet" href="css/bootstrap-datepicker.css"type="text/css" >
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css"type="text/css" >
  <link rel="stylesheet" href="css/swiper.css" type="text/css">
  <link rel="stylesheet" href="css/aos.css" type="text/css">

  <link rel="stylesheet" href="css/style.css"type="text/css" >

</head>
<body>
	
	

	
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    


    <header class="site-navbar py-3" role="banner">

          <div class="col-6 col-xl-2" data-aos="fade-down">
            <h1 class="mb-0"><a href="main" class="text-white h2 mb-0">
            <img src="images/AHDD2.jpg" alt="" />
     		</a></h1>
          </div>

      <div class="container-fluid">
        <div class="row align-items-center">

          <div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
            <nav class="site-navigation position-relative text-right text-lg-center" role="navigation">

              <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block" >
                <li class="active"><a href="main">Home</a></li>
                <li class="has-children">
                  <a href="single.html">SEASON</a>
                  <ul class="dropdown">
                    <li><a href="spring">Spring</a></li>
                    <li><a href="summer">Summer</a></li>
                    <li><a href="fall">Fall</a></li>
                    <li><a href="winter">Winter</a></li>
                    <li><a href="recommended">Recommended Travel</a></li>
                    <li><a href="best10">Best10</a></li>
                  </ul>
                </li>
                <sec:authorize access="isAuthenticated()">
                <li><a href='<c:url value="/Cslist" />' >Services</a></li>
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                <li><a href='<c:url value="/trinfotest" />'>여행지정보등록</a></li>
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
                </sec:authorize>
              </ul>
            </nav>
          </div>
	      <div class="col-6 col-xl-2" data-aos="fade-down" style="width: 530px;">
	    
	    <!-- security 로그인시  --> 
	      <h2><c:url value="${logout }"></c:url></h2>	
		
		<sec:authorize access="isAuthenticated()">
			<form action="<c:url value='/Logout' />" method="post">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
			<input style="background-color: black;" class="btn btn-outline-white py-2 px-4" type="submit" value="로그아웃" />	
			</form>
		</sec:authorize>
		
		
	
		
		  </div>	
          <div class="col-6 col-xl-2 text-left" data-aos="fade-down">
            <div class="d-none d-xl-inline-block">
              <ul class="site-menu js-clone-nav ml-auto list-unstyled d-flex text-center mb-0" data-class="social">
                <li>
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                </li>
                <li>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                </li>
                <li>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                </li>
                <li>
                  <a href="#" class="pl-3 pr-3"><span class="icon-youtube-play"></span></a>
                </li>
              </ul>
            </div>

            <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

          </div>

        </div>
      </div>
      
    </header>



    <div class="container-fluid" data-aos="fade" data-aos-delay="500">
      <div class="row">
        <div class="col-lg-4">

          <div class="image-wrap-2">
            <div class="image-info">
              <h2 class="mb-3">
              <a href="spring?type=1" class="text-white h2 mb-0">
              Spring</h2>
              <a href="spring?type=1" class="btn btn-outline-white py-2 px-4">Go In</a>
            </div>
            <img src="images/spring.jpg" alt="Image" class="img-fluid">
          </div>

        </div>
        <div class="col-lg-4">
          <div class="image-wrap-2">
            <div class="image-info">
              <h2 class="mb-3">
              <a href="summer?type=2" class="text-white h2 mb-0">
              Summer</h2>
              <a href="summer?type=2" class="btn btn-outline-white py-2 px-4">Go In</a>
            </div>
            <img src="images/summer.jpg" alt="Image" class="img-fluid">
          </div>
        </div>
        <div class="col-lg-4">
          <div class="image-wrap-2">
            <div class="image-info">
              <h2 class="mb-3">
              <a href="fall" class="text-white h2 mb-0">
              Fall</h2>
              <a href="fall?type=3" class="btn btn-outline-white py-2 px-4">Go In</a>
            </div>
            <img src="images/fall.jpg" alt="Image" class="img-fluid">
          </div>
        </div>
	
        <div class="col-lg-4">
          <div class="image-wrap-2">
            <div class="image-info">
              <h2 class="mb-3">
              <a href="winter" class="text-white h2 mb-0">
              Winter</h2>
              <a href="winter?type=4" class="btn btn-outline-white py-2 px-4">Go In</a>
            </div>
            <img src="images/winter.jpg" alt="Image" class="img-fluid">
          </div>
        </div>

        <div class="col-lg-4">
          <div class="image-wrap-2">
            <div class="image-info">
              <h2 class="mb-3">
              <a href="recommended" class="text-white h2 mb-0">
              Recommended Travel</h2>
              <a href="recommended" class="btn btn-outline-white py-2 px-4">Go In</a>
            </div>
            <img src="images/travel.jpg" alt="Image" class="img-fluid">
          </div>
        </div>

        <div class="col-lg-4">
              <a href="best10" class="text-white h2 mb-0">
          <div class="image-wrap-2">
            <div class="image-info">
              <h2 class="mb-3">
              Best10</h2>
              <a href="best10" class="btn btn-outline-white py-2 px-4">Go In</a>
            </div>
            <img src="images/Best10.jpg" alt="Image" class="img-fluid">
          </div>
          </a>
        </div>

      </div>
    </div>

    <div class="footer py-4">
      <div class="container-fluid text-center">
        <p style="color: white;">
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
         	 Project.bb  김경하 김태현 박세호 (with.이승준) 의 프로젝트 ♡ <br /> 
         	 <ul>
         	 	<li><a href="" >| 회사소개 |</a>   <a href="" >인재채용 |</a> <a href="" >제휴제안 |</a> <a href="" >이용약관 |</a> <a href="" >개인정보처리방침 |</a> <a href="" >고객센터 |</a></li>
         	 </ul>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </p>
      </div>
    </div>

    

    
    
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/swiper.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/picturefill.min.js"></script>
  <script src="js/lightgallery-all.min.js"></script>
  <script src="js/jquery.mousewheel.min.js"></script>

  <script src="js/main.js"></script>
  
  <script>
    $(document).ready(function(){
      $('#lightgallery').lightGallery();
    });
  </script>

</body>
</html>
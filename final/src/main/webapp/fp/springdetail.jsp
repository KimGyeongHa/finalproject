<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>spring detail</title>
<style>
   
   .test-class {
       float: left;
       width : 30%;
   }
   
   .footer {
      clear:left;
   }
   
   .border {
    border-style:solid;
    border-width:20px;  
    border-color:transparent;
   }
   
   .detail-header {
    width: 50%;
    float: right;
    border-top: 3px solid #66dea8;
    padding: 0.8% 1%;
   }
   .detail-nav{
   width: 100%;
    border-top: 1px solid ;
    border-bottom: 1px solid ;
    text-align: center;
    margin: 30px auto 60px auto;
   }
   
   .detail-body{
    display: block;
    font-size: 20px;
    font-weight: 600;
    margin-bottom: 20px;
   }
   .detail-title{
    display: block;
    font-size: 20px;
    font-weight: 600;
    margin-bottom: 20px;
   }
   
</style>
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

<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
   <div>
      
      
      <header class="site-navbar py-3" role="banner">

         <div class="col-6 col-xl-2" data-aos="fade-down">
            <h1 class="mb-0">
               <a href="main" class="text-white h2 mb-0"> <img
                  src="images/AHDD2.jpg" alt="" />
               </a>
            </h1>
         </div>

         <div class="container-fluid">
            <div class="row align-items-center">

               <div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
                  <nav
                     class="site-navigation position-relative text-right text-lg-center"
                     role="navigation">

                     <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
                        <li class="active"><a href="main">Home</a></li>
                        <li class="has-children"><a href="single.html">Season</a>
                           <ul class="dropdown">
                              <li><a href="spring">Spring</a></li>
                              <li><a href="summer">Summer</a></li>
                              <li><a href="fall">Fall</a></li>
                              <li><a href="winter">Winter</a></li>
                              <li><a href="recommended">Recommended Travel</a></li>
                              <li><a href="best10">Best10</a></li>
                           </ul></li>
                        <li><a href='<c:url value="/Cslist" />' >Services</a></li>
                              <li><a href='<c:url value="/trinfotest" />'>여행지정보등록</a></li>
                     </ul>
                  </nav>
               </div>
                  <div class="col-6 col-xl-2" data-aos="fade-down">
                  <h2><c:url value="${logout }"></c:url></h2>   
               
                  <sec:authorize access="isAuthenticated()">
                  <form action="<c:url value='/Logout' />" method="post">
                  <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
                  <input style="background-color: black;" class="btn btn-outline-white py-2 px-4" type="submit" value="LOGOUT" />   
                  </form>
               </sec:authorize>
                 </div>   
               <div class="col-6 col-xl-2 text-right" data-aos="fade-down">
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

                  <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
                     style="position: relative; top: 3px;">
                     <a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
                        class="icon-menu h3"></span></a>
                  </div>

               </div>

            </div>
         </div>
      </div>

      </header>
</head>
<body>
   <div>
      

   
         <div id="sub-content">
                     
                  <div>
                  <img src="${dto.trdeimg}" width="600px" height="400px" style="margin-left:200px" alt="" />
                     
            <section class="detail-header">
               <figure>
                  </a>
               <figcation>
               <ul>
                  <li id="addr">
                     <strong>주소</strong>
                     <span>${dto.adrs}
                         <!-- <a href="">길찻기</a> -->
                     </span>
                  </li>
                  <li id="tel">
                     <strong>안내전화</strong>
                     <p>${dto.hp}</p>
                  </li>
                  <li id="playtime">
                     <strong>이용시간</strong>
                     <span>${dto.time}</span>
                  </li>
                  <li id="holiday">
                     <strong>휴무일</strong>
                     <span>${dto.holi}</span>
                  </li>
                  <li id="homepage">
                     <strong>${dto.inqu}</strong>
<!--                            <a href="javascript:;" onclick="javascript:window.open('http://playtime.co.kr/store/store_kor_view.php?idx=124&amp;page=24&amp;s_area=&amp;s_areadatil=&amp;s_keyword=', '_system')">http://playtime.co.kr/store/store_kor_view.php?idx=124&amp;page=24&amp;s_area=&amp;s_areadatil=&amp;s_keyword=</a>
 -->                  
                   </li>
               </ul>
            </figcation>         
         </figure>
      </section>
   </div>
</div>
<section class="detail-body">
   <nav class="detail-nav">
      <p>${dto.trdetail}</p>
   </nav>
   <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/sp5.jpg" alt="" width="750" height="500" /></strong>
            <p>두모마을은 친환경 농법으로 제초제를 일절 사용하지 않고 농사를 짓고 있으며 마을 앞 푸른 바다에서는 여러 해조류와 제철 고기를 잡아볼 수 있습니다.</p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/sp1.jpg" alt="" width="750" height="500" /></strong>

         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
           <strong><img src="images/sp2.jpg" alt="" width="750" height="500" /></strong>
            <p>
때 묻지 않은 고향 시골의 인심과 다양한 체험 그리고 아름다운 경치를 가슴에 담아 가시길 바랍니다. 
</p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/sp3.jpg" alt="" width="750" height="500" /></strong>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/sp4.jpg" alt="" width="750" height="500" /></strong>
     
         </span>
      </div>
   </div>
   


<div class="menup row" id="menuup_list_a"></div>   


<div align="center">
   <a name="map" class="detail-title">
  <img src="images/MAP3.JPG" alt="" width="1700" height="500"  />
   </a>
   
      
</div>
</section>         

      </header>
   </div>
   <div class="footer py-4">
      <div class="container-fluid text-center">
        <p>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
           Project.bb  김경하 김태현 박세호 (with.이승준) 의 프로젝트 ♡ <br /> 
             <ul>
                <li><a href="" >| 회사소개 |</a>   <a href="" >인재채용 |</a> <a href="" >제휴제안 |</a> <a href="" >이용약관 |</a> <a href="" >개인정보처리방침 |</a> <a href="" >고객센터 |</a></li>
             </ul>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </p>
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
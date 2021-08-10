<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>summer detail</title>
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
            <strong><img src="images/4737_DSC_0074.jpg" alt="" width="750" height="500" /></strong>
            <p>서울 종로구 세종로에 있는 조선시대의 정궁 경복궁을 소개합니다.<br>
경복궁은 조선시대에 만들어진 다섯개의 궁궐 중 첫번째로 만들어진 곳으로, 조선 왕조의 법궁입니다.<br>
겨울이면 새하얀 눈으로 뒤덮힌 아름다운 경복궁의 모습을 만나볼 수 있습니다.</p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/4737_DSC_0123.jpg" alt="" width="750" height="500" /></strong>
            <p>'큰 복을 누리라'는 뜻을 가진 '경복'이라는 이름은 정도전이 지은 것으로
왕자의 난 등이 일어나면서 <br />조선 초기 혼란한 정치 상황 속 경복궁은 궁궐로서 그 역할을 제대로 못하다가<br />
세종때 이르러 정치 상황이 안정되고 비로소 조선 왕조의 중심지로 역할을 하게 되었다합니다.</p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
           <strong><img src="images/4737_DSC_0125.jpg" alt="" width="750" height="500" /></strong>
            <p>
연회장으로 사용되었던 경회루는 인공연못 위로 지어진 2층 누각 건물로
남아있는 목조 건축물 중 크기로도 가장 아름답기로 손에 꼽히는 건물이랍니다. <br>
경회루는 1592년 한양의 백성들에 의해 전부 불타버렸다 1865년 경복궁 중건 공사 때 다시 짓기 시작해 1867년 완공되었는데요,<br />
경회루의 겨울은 꽁꽁 언 연못 위 하얀 눈으로 뒤덮힌 모습을 하고 있으며 주변 산봉과 어울려 아름다운 건축미가 더 돋보인답니다. 
</p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/4737_DSC_0067.jpg" alt="" width="750" height="500" /></strong>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/4737_DSC_0132.jpg" alt="" width="750" height="500" /></strong>
            <p>
경복궁은 관람시간이 정해져 있습니다. <br>
1월부터 2월, 11월부터 12월은 오전 9시부터 오후 5시까지이며 3월부터 5월, 9월부터 10월은 오후 6시까지,<br />
그리고 6월부터 8월은 오후 6시 30분까지 관람이 가능합니다. <br>
또한, 매주 화요일은 휴궁일이며, 성인 3,000원의 관람요금이 있으니 참고하셔서 관람하시길 바랍니다. <br>
겨울이면 새하얀 눈과 함께 아름다운 건축미가 더 돋보이는 경복궁에서 오랜 역사를 느끼며 고궁 나들이를 즐겨보시길 바랍니다^^
</p>
         </span>
      </div>
   </div>
   


<div class="menup row" id="menuup_list_a"></div>   


<div align="center">
   <a name="map" class="detail-title">
  <img src="images/MAP1.JPG" alt="" width="1700" height="500"  />
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
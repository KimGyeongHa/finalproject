<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fall detail</title>
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

         <div class="container-fluid border" >
            <div class="row align-items-center">

               <div class="col-10 col-md-8 d-none d-xl-block" data-aos="fade-down">
                  <nav
                     class="site-navigation position-relative text-right text-lg-center"
                     role="navigation">

                     <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
                        <li class="active"><a href="main">Home</a></li>
                        <li class="has-children"><a href="single.html">Gallery</a>
                           <ul class="dropdown">
                              <li><a href="spring">Spring</a></li>
                              <li><a href="summer">Summer</a></li>
                              <li><a href="fall">Fall</a></li>
                              <li><a href="winter">Winter</a></li>
                              <li><a href="recommended">Recommended Travel</a></li>
                              <li><a href="best10">Best10</a></li>
                           </ul></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="contact.html">Contact</a></li>
                     </ul>
                  </nav>
               </div>

               <div class="col-6 col-xl-2 text-right" data-aos="fade-down">
                  <div class="d-none d-xl-inline-block">
                     
                  </div>

                  <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
                     style="position: relative; top: 3px;">
                     <a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
                        class="icon-menu h3"></span></a>
                  </div>

               </div>

            </div>
         </div>
   
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
            <strong><img src="images/96_DSC_5646.jpg" alt="" width="750" height="500" /></strong>
            <p>주자장이 넓게 마련되어 있고, 주차장에서 입구까지의 길도 잘 만들어져 있습니다. 계단 양옆으로 흐르는 시원한 물 소리가 매우 듣기 좋은 곳입니다. </p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/96_DSC_5678.jpg" alt="" width="750" height="500" /></strong>
            <p>흔히 수족관에서 볼 수 있는 어류와 희귀생물이 모두 전시되어 있어 해양생물의 교육 장소로도 손색 없습니다.</p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
           <strong><img src="images/96_DSC_5705.jpg" alt="" width="750" height="500" /></strong>
            <p>펭귄들입니다 사랑스러운 펭귄들이라고요</p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/96_DSC_5738.jpg" alt="" width="750" height="500" /></strong>
            <p> 귀여운 도롱뇽의 후예들입니다.특히 많은 사람들에게 인기 있는 우파루파는 신체의 일부를 잃어버려도 쉽게 재생할 수 있다고 하는데요,
           	<br /> 일반 도롱뇽과 다르게 올챙이의 모습 그대로 성장하기 때문에 성체가 되어도
			겉아가미와 지느러미 모양의 꼬리를 가지고 있습니다.
            </p>
         </span>
      </div>
   </div>
    <div>
      <div style="text-align: center;">
      <div style="text-align: center;">
      <div style="text-align: center;"></div>
         <span style="font-size: 18pt;">
            <strong><img src="images/96_메인사진.jpg" alt="" width="750" height="500" /></strong>
            <p>이 밖에 돌고래 '세나'와 함께 바다 별 VIP 투어, 생생하고 짜릿한 모험 3D 영상관도 준비되어 있으니<br />
관심 있으신 분들은 홈페이지를 참고해보시기 바랍니다.</p>
         </span>
      </div>
   </div>
   


<div class="menup row" id="menuup_list_a"></div>   


<div>
   <a name="map" class="detail-title">
   <img src="images/MAP2.JPG" alt="" width="1700" height="500" />
   </a>
   
      
</div>
</section>         

      </header>
   </div>


</body>
</html>
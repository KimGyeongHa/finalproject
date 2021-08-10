<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html lang="en">
	<head>
	<title>게시판등록</title>
	<meta charset="UTF-8">
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
                <li><a href='<c:url value="/Cslist" />' >Services</a></li>
                <li><a href='<c:url value="/trinfotest" />'>여행지정보등록</a></li>
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
			<div class="site-section aos-init aos-animate" data-aos = "fade">
				<div class= "container-fluid">
					<div class="row justify-content-center">
						<div class="col-md-7" >
							<div class="row mb-5">
								<div class="col-12">
									<form:form method="post" action="trinfotest?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
		
	
									<h1 class="site-section-heading text-center" style="margin-bottom: 60px;">
									Register bulletin board
									</h1>
								
									<table border="0" aline="center" style="margin-left: 200px;">
									<tr style="color: white;">
										<th>카테고리타입</th>
										<td><select name="type">
												<option value="1">봄</option>
												<option value="2">여름</option>
												<option value="3">가을</option>
												<option value="4">겨울</option>
												<option value="5">여행지추천</option>
						
										</select></td>
									</tr>
									
									<tr style="color: white;">
										<th>위치</th>
										<td><input type="text" name="loc" value="서울" /></td>
									</tr>
									<tr style="color: white;">
										<th>제목</th>
										<td><input type="text" name="trtitle" value="1번" /></td>
									</tr>
									<tr style="color: white;">
										<th>주소</th>
										<td><input type="text" name="adrs" value="경기도 시흥시" /></td>
									</tr>
						
									<tr style="color: white;">
										<th>상세정보</th>
										<td><textarea rows="10" cols="30" name="trdetail"></textarea></td>
									</tr>
									<tr style="color: white;">
										<th>연락처</th>
										<td><input type="text" name="hp" value="01055555555" /></td>
									</tr>
									<tr style="color: white;">
										<th>이용시간</th>
										<td><input type="text" name="time" value="폐업" /></td>
									</tr>
						
						
									<tr style="color: white;">
										<th>메인이미지</th>
										<td>
											<input class="btn btn-outline-white py-1 px-3" type="file" name="file" id="" />
										</td>
										<form:errors path="file" />
									</tr>
						
									<tr style="color: white;">
										<th >이용가격</th>
										<td><input type="text" name="cost" value="비쌈" /></td>
									</tr>
						
									<tr style="color: white;">
										<th>주차시설</th>
										<td><input type="text" name="park" value="가능" /></td>
									</tr>
						
									<tr style="color: white;">
										<th>문의</th>
										<td><input type="text" name="inqu" value="홈페이지주소" /></td>
									</tr>
						
									<tr style="color: white;">
										<th>편의시설</th>
										<td><input type="text" name="conv" value="500m앞cu" /></td>
									</tr>
									<tr style="color: white;">
										<th>휴무일</th>
										<td><input type="text" name="holi" value="20일" /></td>
									</tr>
									<tr style="color: white;">
										<th>기타특이사항</th>
										<td><input type="text" name="etc" value="엄청기네" /></td>
									</tr>
									<tr style="color: white;">
									<td><input type="hidden" value="${dto.mno}" name="mno" /></td>
									</tr>
									<tr style="color: white;">
										<td colspan="3" align="right" style="width:502px;">
										<input style="background-color: black;" class="btn btn-outline-white py-1 px-3" type="submit" value="등록" />
										<input style="background-color: black;" class="btn btn-outline-white py-1 px-3" type="reset" value="초기화" />
										</td>
									</tr>
									</table>
									</form:form>
								</div>
							</div>								
						</div>
					</div>
				</div>
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
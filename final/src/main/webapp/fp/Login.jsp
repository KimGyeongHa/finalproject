<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
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
<form action="<c:url value='/login' />" method="post">
	<table border="0" align="center" >	
		<div class="site-section aos-init aos-animate" data-aos="fade" style="padding-bottom: 40px;">
			<div class="container-fluid">
				<div class="row justify-content-center">
					<div class="col-md-7">
						<div class="row mb-5">
							<div class="col-12">
								<h2 class="site-section-heading text-center">
									<a class="text-white h2 mb-0"></a> <img
										src="images/AHDD2.jpg" width="850px" height="500px" alt=""
										align="center" />
								</h2>

								<h1 align="center" style="color: white;">어화둥둥 LOGIN</h1>

								<h2>
									<c:url value="${error }"></c:url>
								</h2>
				

								<!-- spring security : CSRF 공격을 막기위해 랜덤토큰 인증방식을제공 -->

										<tr align="left" style="color: white;">
											<th>ID  :</th>
											<td><input type="text" name="username" id="" size="40"/>
											<input style="background-color: black;"  type="submit" class="btn btn-outline-white py-2 px-4" value="LOGIN" size="10" /></td> 
										</tr>
										<tr style="color: white;">
											<th style="width: 50px;">PW :</th>
											<td><input type="password" name="password" id="" size="40"/> 
											<a href="addmember">SIGN UP!</a>
											<input
												type="hidden" name="${_csrf.parameterName }"
												value="${_csrf.token }" /></td>
										</tr>
										
							</div>					
						</div>
					</div>
				</div>
			</div>
		</div>
	</table>
</form>

	<%
            // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
            // LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
            String msg=request.getParameter("msg");
            
            if(msg!=null && msg.equals("0")) 
            {
                out.println("<br>");
                out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
            }
            else if(msg!=null && msg.equals("-1"))
            {    
                out.println("<br>");
                out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
            }
        %>     

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

	<script> $(document).ready(function(){
      $('#lightgallery').lightGallery();
      });
	</script>
</body>
</html>
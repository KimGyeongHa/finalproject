<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원가입</title>


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

<style>
   table tr{
   width: 300px
}
</style>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
   window.onload=function(){
      var btn = document.getElementById("btn");
      
      btn.onclick = openpost;
      
   }
   
   function openpost() {
      new daum.Postcode({
         oncomplete: function(data) {
            console.dir(data);
            document.getElementById("addrs").value = data.address;
            
         }
      }).open();
      
   }
</script>

</head>

<body>
   <form action="addmember" method="post">
      <table border="0" align="center">
         <div class="site-section aos-init aos-animate" data-aos = "fade">
            <div class= "container-fluid">
               <div class="row justify-content-center">
                  <div class="col-md-7" >
                     <div class="row mb-5">
                        <div class="col-12">
                           <h2 class="site-section-heading text-center">
                              <a href="main" class="text-white h2 mb-0"> 
                              <img src="images/AHDD2.jpg" width="550px" height="300px" alt="" align="center" /> 
                           </h2>
                           
                           <h1 align="center">
                           어화둥둥 회원가입
                           </h1>
   
                           <tr style="color: white;">
                              <th>ID :</th>
                              <td><input type="text" name="id" placeholder="아이디를 입력하세요"  size="50"/>
                              </td>
                           </tr>
                           <tr style="color: white;">
                              <th>PW :</th>
                              <div>
                              <td colspan="3"><input type="password" name="pw" placeholder="비밀번호를 입력하세요"   size="50"/></td>
                              </div>
                           </tr>
                           <tr style="color: white;">
                              <th>NAME :</th>
                              <td colspan="3"><input type="text" name="name" placeholder="이름을 입력하세요"       size="50" /></td>
                           </tr>
                           <tr style="color: white;">
                              <th>BIRTH :</th>
                              <td><input type="text" name="birth" placeholder="생일을 입력하세요" size="50"   /></td>
                           </tr>               
                           <tr style="color: white;">
                              <th>P/N :</th>
                              <td><input type="text" name="pn" placeholder="전화번호를 입력하세요" size="50"   /></td>
                           </tr>
                           <tr style="color: white;">
                              <th>NICKNAME :</th>
                              <td><input type="text" name="nickname" placeholder="별명을 입력하세요"   size="50" /></td>
                           </tr>
                           <tr style="color: white;">
                              <th>ADDRESS :</th>
                              <td>
                              <input type="text" name="addrs" placeholder="주소를 입력하세요"  id="addrs" onfocus="this.placeholder" size="50">
                              <input type="button" class="btn btn-outline-black py-1 px-3" value="SERCH" id="btn">
                              </td>
                              
                           </tr>
                           
                           <tr style="color: white;">
                              <th>EMAIL : </th>
                              <td>
                               <input type="text" name="email" placeholder="이메일을 입력하세요"> @ <input type="text" name="emaildetail1">

                                        <select size="1" name="emaildetail2">
                                    <option value="직접입력">직접입력</option>

                                    <option value="naver.com">naver.com</option>

                                    <option value="gmail.com">gmail.com</option>

                                    <option value="daum.com">daum.com</option>


                                        </select>
                              </td>
                           </tr>
                           <tr style="color: white;">
                              <th>GENDER : </th>
                              <td>
                              <input type="checkbox" name="gender"  value="남자"/>남자
                              <input type="checkbox" name="gender"  value="여자"/>여자
                              </td>
                           </tr>
                           <tr style="color: white;">
                              <th>MARRY : </th>
                              <td>
                              <input type="checkbox" name="marr"  value="기혼"/>기혼
                              <input type="checkbox" name="marr"  value="미혼"/>미혼
                              </td>
                           </tr>
                           <tr style="color: white;">
                              <th>CHI : </th>
                              <td>
                              <input type="checkbox" name="chi"  value="있다"/>있다
                              <input type="checkbox" name="chi"  value="없다"/>없다
                              
                              </td>
                           </tr>
                           
                           <tr style="color: white;">
                              <td><input type="hidden" name="${_csrf.parameterName }"
                                 value="${_csrf.token }" /></td>
                           </tr>
                           
                           <tr>
                              <td colspan="3" align="center">
                              <input style="background-color: black;"  type="submit"  class="btn btn-outline-white py-2 px-4"  value="  Join  " /> 
                              <a href="main" class="btn btn-outline-white py-2 px-4">Go Back</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </table>
   </form>
   
     <div class="footer py-4">
      <div class="container-fluid text-center">
        <p style="color: white;">
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
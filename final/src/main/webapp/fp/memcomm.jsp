<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>

		<h2><c:url value="${logout }"></c:url></h2>	
		
		<sec:authorize access="isAuthenticated()">
				<form action="<c:url value='/Logout' />" method="post">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<input type="submit" value="로그아웃" />	
			</form>
		</sec:authorize>

	<h1>TRINFO INSERT TEST</h1>
	<form:form method="post" action="trinfotest?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
		<table>
			<tr>
				<th>카테고리타입</th>
				<td><select name="type">
						<option value="1">봄</option>
						<option value="2">여름</option>
						<option value="3">가을</option>
						<option value="4">겨울</option>
						<option value="5">여행지추천</option>

				</select></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="trtitle" value="1번" /></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="adrs" value="경기도 시흥시" /></td>
			</tr>

			<tr>
				<th>상세정보</th>
				<td><textarea rows="10" cols="30" name="trdetail"></textarea></td>
			</tr>
		
			<tr>
				<th>이미지</th>
				<td><input type="file" name="file" id="" /></td>
				<form:errors path="file" />
			</tr>


			
		</table>
	</form:form>



</body>
</html>
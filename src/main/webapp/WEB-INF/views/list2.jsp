<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 소수점 뒷자리 버리려고 사용 -->

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


<!-- 부트스트랩 디자인 넣는용 -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<title> 여론조작 페이지 </title>
</head>


<body>
	<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
		<h5 class="my-0 mr-md-auto font-weight-normal"> 설문조사 </h5>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="./inputForm"> 리얼미터 여론조사 </a> 
			<a class="p-2 text-dark" href="./list"> 리얼미터 통계 </a> 
			<a class="p-2 text-dark" href="./list2"> 여론조작 </a>
		</nav>
		
		<a class="btn btn-outline-primary" href="http://13.124.66.163:8080/BBS/main.jsp"> 국민청원 </a>
	</div>	<br>

	<div align="center">
		<h2> 여론조작 페이지 </h2>
		<hr width="500" />


		<table class="table table-hover table-dark" border="1">
			<tr>
				<td align="center">번호</td>
				<td align="center">내용</td>
				<td align="center">결과</td>
				<td align="center">메뉴</td>
			</tr>

			<c:forEach var="mybatisMember" items="${mybatisMembers}">
				<tr>
					<td align="center">${mybatisMember.answernum}</td>
					<td align="center">${mybatisMember.question}</td>
					<td align="center">${mybatisMember.answer}</td>
					<td align="center">
						<input type="button"
							   onClick="location.href='${pageContext.request.contextPath}/modifyMember/${mybatisMember.answernum}'"
							   value="수정" /> 
						
						<input type="button" 
							   onClick="location.href='${pageContext.request.contextPath}/delMember/${mybatisMember.answernum}'"
							   value="삭제" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
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


<title> 리얼미터 여론조사 통계</title>
</head>

<body>
	<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
		<h5 class="my-0 mr-md-auto font-weight-normal">설문조사</h5>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="./inputForm"> 리얼미터 여론조사 </a> <a
				class="p-2 text-dark" href="./list"> 리얼미터 통계 </a> <a
				class="p-2 text-dark" href="./list2"> 여론조작 </a>
		</nav>
		<a class="btn btn-outline-primary" href="http://13.124.66.163:8080/BBS/main.jsp"> 국민청원 </a>
	</div>	<br>


	<div align="center">
		<h2>항목별 답변자 수</h2>
		<hr width="500" />

		<table class="table table-hover table-dark" border="1">
			<c:set var="total" value="0" />
			<c:forEach var="mybatisMember3" items="${mybatisMembers3}">
				<tr>
					<td style="width: 50%" align="center">
						${mybatisMember3.answer}번 선택</td>
					<td style="width: 50%" align="center">${mybatisMember3.result}</td>
				</tr>

				<c:set var="total" value="${total + mybatisMember3.result}" />
			</c:forEach>

			<tr>
				<td style="width: 50%" align="center">전체 인원</td>
				<td style="width: 50%" align="center"><c:out value="${total}" />
				</td>
			</tr>
		</table>
		<br>
		<br>


		<h2> 리얼미터 여론조사 통계</h2>
		<hr width="500" />
		<table class="table table-hover table-dark" border="1">
			<c:forEach var="mybatisMember3" items="${mybatisMembers3}">
				<tr>
					<c:set var="percentage" value="${(mybatisMember3.result / total) }" />
					<td style="width: 50%" align="center">${mybatisMember3.answer}번 	통계</td>
					<td style="width: 50%" align="center">
					<fmt:formatNumber value="${percentage}" type="percent" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
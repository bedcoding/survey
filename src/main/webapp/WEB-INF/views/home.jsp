<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	<!-- 부트스트랩 디자인 넣는용 --> <!-- https://www.bootstrapcdn.com/에서 버전 확인 -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
	<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
		<h5 class="my-0 mr-md-auto font-weight-normal"> 설문조사</h5>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="./inputForm"> 리얼미터 여론조사 </a> <a
				class="p-2 text-dark" href="./list"> 리얼미터 통계 </a> <a
				class="p-2 text-dark" href="./list2"> 여론조작 </a>
		</nav>
		<a class="btn btn-outline-primary" href="http://13.124.66.163:8080/BBS/main.jsp"> 국민청원 </a>
	</div>
</body>
</html>

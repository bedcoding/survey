<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>수정 페이지</title>

	<!-- 부트스트랩 디자인 넣는용 -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>


<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
	<h5 class="my-0 mr-md-auto font-weight-normal"> 설문조사</h5>
	<nav class="my-2 my-md-0 mr-md-3">
		<a class="p-2 text-dark" href="/mybatisSurvey/inputForm"> 리얼미터 여론조사 </a> <a
			class="p-2 text-dark" href="/mybatisSurvey/list"> 리얼미터 통계 </a> <a
			class="p-2 text-dark" href="/mybatisSurvey/list2"> 여론조작 </a>
	</nav>
	<a class="btn btn-outline-primary" href="http://13.124.66.163:8080/BBS/main.jsp"> 국민청원 </a>
</div>


<div align="center">
	<h2> 수정 페이지 </h2>
	<hr width="500"> 
	
	<table class="table table-hover table-dark" border="1">
		<form:form modelAttribute="mybatisMember" method="post"
				   action="${pageContext.request.contextPath}/modifyOk">
			<tr>
				<td align="center"><form:input path="question" readonly="true" style="border: none; background: transparent; color:white;"/></td>
			</tr>
			
			<tr>
				<td align="center"><form:radiobutton path="answer" value="1" checked="true"/> 1. 자겸박 </td>
			</tr>
			
			<tr>
				<td align="center"><form:radiobutton path="answer" value="2"/> 2. 아이유 </td>
			</tr>
	
			<tr>
				<td align="center">		
					<input type="submit" value="수정" />
				</td>
			</tr>
		</form:form>
	</table>
</div>
</body>
</html>
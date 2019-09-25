<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <!-- 소수점 뒷자리 버리려고 사용 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">



<!-- 부트스트랩 디자인 넣는용 -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




<title> 통계 </title>
</head>
<body>

<div align="center">
	<h2> 항목별 답변자 수 </h2>
	<hr width="500"/>

	<table class="table table-hover table-dark" border="1" cellpadding="0" cellspacing="0">
		<c:set var="total" value="0" />
		<c:forEach var="mybatisMember3" items="${mybatisMembers3}">
			<tr>
				<td align="center"> ${mybatisMember3.answer}번 선택 </td>
				<td align="center">${mybatisMember3.result}</td>
			</tr>
			
			<c:set var="total" value="${total + mybatisMember3.result}" />		
		</c:forEach>
		
		<tr> 
			<td align="center"> 전체 인원 </td>
			<td align="center"> <c:out value="${total}"/> </td>
		</tr>
	</table> <br><br>



	<h2> 통계 </h2>
	<hr width="500"/>
	<table class="table table-hover table-dark" border="1" cellpadding="0" cellspacing="0">
		<c:forEach var="mybatisMember3" items="${mybatisMembers3}">
			<tr>
				<c:set var="percentage" value="${(mybatisMember3.result / total) }" />
				<td align="center">${mybatisMember3.answer}번 통계 </td>
				<td align="center"> <fmt:formatNumber value="${percentage}" type="percent"/> </td>
			</tr>
		</c:forEach>
	</table>
</div>


</body>
</html>
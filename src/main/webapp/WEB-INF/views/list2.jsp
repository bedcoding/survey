<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 소수점 뒷자리 버리려고 사용 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">



<!-- 부트스트랩 디자인 넣는용 -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title> 관리자 페이지 </title>
</head>
<body>
	<div align="center">
		<h2> 관리자 페이지 </h2>
		<hr width="500" />


		<table class="table table-hover table-dark" border="1" width="80%"
			cellpadding="0" cellspacing="0">
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
					<td align="center"><input type="button"
						onClick="location.href='${pageContext.request.contextPath}/modifyMember/${mybatisMember.answernum}'"
						value="수정" /> <input type="button"
						onClick="location.href='${pageContext.request.contextPath}/delMember/${mybatisMember.answernum}'"
						value="삭제" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> 리스트</title>
</head>
<body>
<div align="center">
<h2> 리스트</h2>
<hr width="500"/>
	<table border="1" width="80%" cellpadding="0" cellspacing="0">

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
				value="수정"/>
				 
			 <input type="button" 
			    onClick="location.href='${pageContext.request.contextPath}/delMember/${mybatisMember.answernum}'" 
			    value="삭제"/>
			</td>
		</tr>
	</c:forEach>
	</table>
</div>


</body>
</html>
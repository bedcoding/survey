<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정 페이지</title>
	<style type="text/css">
		.errMsg {font-size:9pt; color:red"}
	</style>
</head>
<body>
<div align="center">
<h2> 수정 페이지 </h2>
<hr width="500"> 

<table border="1" cellpadding="2" cellspacing="0" width="500">
<%-- 	<form:form commandName="mybatisMember"
			   method="post"
			   action="${pageContext.request.contextPath}/modifyOk">
 --%>
	<form:form modelAttribute="mybatisMember"
			   method="post"
			   action="${pageContext.request.contextPath}/modifyOk">
		<tr>
			<td colspan="2" align="center"> <form:input path="question" readonly="true" style="text-align:right;"/> </td>
		</tr>
		
		<tr>
			<td align="center"><form:radiobutton path="answer" value="1" checked="true"/> 1. 호랑이! </td>
			<td align="center"><form:radiobutton path="answer" value="2"/> 2. 원숭이 </td>			
		</tr>

		<tr>
			<td colspan="2" align="center">		
				<input type="submit" value="수정" />
				<!-- &nbsp;&nbsp;&nbsp; <input type="reset" value="취소" /> -->
			</td>
		</tr>
	</form:form>
</table>
</div>
</body>
</html>
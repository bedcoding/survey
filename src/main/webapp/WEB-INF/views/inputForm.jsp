<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 설문 조사 </title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<script>
		// 맨 처음에는 내가 콤보박스에서 선택한 값을 자동으로 못 가져와서 이렇게 따로 넣어준다.
	   	$(document).ready(function() {
	   		var text = $("#selectBox option:selected").val();
	        $('#test').val(text);
	    });
	</script>
	
	
	<script>
	function change(){
		var text = $("#selectBox option:selected").val();
		$('#test').val(text);
	}
	</script>
</head>
<body>




<div align="center">
	<h2> 설문조사 </h2>
	<hr width="500" color="green"/>
	
	<!-- 질문 목록 -->	
	<table border="1" cellpadding="2" cellspacing="0" width="500">
	<form:form commandName="mybatisMember" method="post" action="insertOk">
		<tr>
			<td colspan="2" align="center">
				<!-- 질문 목록 -->
				<select id="selectBox" name="selectBox" size="1" onchange="change()">
					<c:forEach var="Q" items="${mybatisMembers2}"> <!-- onchange 용도: 선택 바꿀 때마다 test라는 ID 값의 value 값을 바꿔준다 -->
						<option value="${Q.q}"> ${Q.q} </option>
					</c:forEach>
				</select>
			</td>
		</tr>
		
		<tr>
			<!-- 위에서 선택한 질문 내용도 같이 db로 보낸다: 사용자가 수정할 수 없도록 숨김 -->
			<form:input path="question" id="test" type="hidden" />	
			<%-- <form:input  path="question" id="test" />  --%>
		</tr>
		
		<tr>
			<td align="center"><form:radiobutton path="answer" value="1" checked="true"/> 1. 호랑이 </td>
			<td align="center"><form:radiobutton path="answer" value="2"/> 2. 원숭이 </td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="답안 제출하기">&nbsp;&nbsp;
				<!-- <input type="reset" value="취소"/> -->
			</td>
		</tr>
	</form:form>
	</table>
</div>
</body>
</html>
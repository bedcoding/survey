<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- 부트스트랩 디자인 넣는용 --> <!-- https://www.bootstrapcdn.com/에서 버전 확인 -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


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







<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <h5 class="my-0 mr-md-auto font-weight-normal"> 설문조사 </h5>
  <nav class="my-2 my-md-0 mr-md-3">
    <a class="p-2 text-dark" href="./inputForm"> 설문 </a>
    <a class="p-2 text-dark" href="./list"> 통계 </a>
    <a class="p-2 text-dark" href="./list2"> 여론조작 </a>
  </nav>
  <a class="btn btn-outline-primary" href="#">Sign up</a>
</div>

<div class="container">	
	<form:form commandName="mybatisMember" method="post" action="insertOk">
      
      <div class="form-group">
		<!-- 질문 목록 --> <!-- class="form-control은 부트스트랩을 적용함" -->
		<select class="form-control" id="selectBox" name="selectBox" size="1" onchange="change()">
			<c:forEach var="Q" items="${mybatisMembers2}"> <!-- onchange 용도: 선택 바꿀 때마다 test라는 ID 값의 value 값을 바꿔준다 -->
				<option value="${Q.q}"> ${Q.q} </option>
			</c:forEach>
		</select>
      </div>
      
		<!-- 위에서 선택한 질문 내용도 같이 db로 보낸다: 사용자가 수정할 수 없도록 숨김 -->
		<form:input path="question" id="test" type="hidden" />
		<%-- <form:input  path="question" id="test" /> --%>
		
		<tr>
			<td align="center"><form:radiobutton path="answer" value="1" checked="true"/> 1. 호랑이 <br> </td> 
			<td align="center"><form:radiobutton path="answer" value="2"/> 2. 원숭이 <br> </td>
		</tr>
      
      	<br> <button type="submit" class="btn btn-outline-primary"> 답안 제출하기 </button>
    </form:form>
</div>










<%-- 
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
			<form:input path="question" id="test" /> 
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
 --%>
</body>
</html>
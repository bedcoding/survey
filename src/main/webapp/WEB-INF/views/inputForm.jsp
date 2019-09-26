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
	function change() {
		var text = $("#selectBox option:selected").val();
		$('#test').val(text);
	}
	</script>
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

<div class="container">	
	<form:form commandName="mybatisMember" method="post" action="insertOk">
		<table class="table table-hover " border="1">
			<tr> <td align="center" colspan="2"> 성별을 선택하시오 </td> </tr>
			
			<tr>
				<!-- 아직 구현 안함 -->
				<td align="center" style="width: 50%"><form:radiobutton path="answer" value="1" checked="true"/> 남자 <br> </td> 
				<td align="center" style="width: 50%"><form:radiobutton path="answer" value="2"/> 여자 <br> </td>
			</tr>
		</table>
      
      	<br><br>
		      
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
				<td align="center"><form:radiobutton path="answer" value="1" checked="true"/> 1. 자겸박 <br> </td> 
				<td align="center"><form:radiobutton path="answer" value="2"/> 2. 아이유 <br> </td>
			</tr>

      	<br> <button type="submit" class="btn btn-outline-primary"> 제출하기 </button>
    </form:form>
</div>
</body>
</html>
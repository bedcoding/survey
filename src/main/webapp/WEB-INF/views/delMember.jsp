<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<!-- 부트스트랩 디자인 넣는용 -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<title>삭제</title>
</head>

<body>
	<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
		<h5 class="my-0 mr-md-auto font-weight-normal"> 설문조사 </h5>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="/mybatisSurvey/inputForm"> 리얼미터 여론조사 </a> 
			<a class="p-2 text-dark" href="/mybatisSurvey/list"> 리얼미터 통계 </a> 
			<a class="p-2 text-dark" href="/mybatisSurvey/list2"> 여론조작 </a>
		</nav>
		
		<a class="btn btn-outline-primary" href="http://13.124.66.163:8080/BBS/main.jsp"> 국민청원 </a>
	</div>


	<div align="center">
		<h2> 삭제 </h2>
		<hr width="300" />
		<table class="table table-hover table-dark" border="1">
			<form:form commandName="mybatisMember" name="frm" method="post"
				action="${pageContext.request.contextPath}/deleteOk">
				<tr>
					<td align="center"><br> 삭제 : 
						<form:input path="answernum" readonly="true" />
						<span id="del" style="display: none"> <input type="submit" value="삭제" /> </span> <br> <br>
					</td>
				</tr>
			</form:form>
		</table>
	</div>
	 
	<script type="text/javascript">
		if(document.frm.id.value !="") 
		{
			document.getElementById("del").style.display="";
		}
	</script>	
</body>
</html>
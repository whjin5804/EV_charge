<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

/* 사이드크기 */
.btn-group, .btn-group-vertical {
    position: relative;
    display: -ms-inline-flexbox;
    display: table;
    vertical-align: middle;
    margin-bottom: 0.8px;
}

/* 사이드버튼들 간격 */
.sideBtn{
	width: 120px;
}
</style>
</head>
<body>

	<!-- 소개 -->
	<div class="btn-group dropright">
	  <button type="button" class="btn <c:if test="${sideMenu eq 1 }">btn-success</c:if> dropdown-toggle sideBtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    전기차 소개
	  </button>
	  <div class="dropdown-menu">
		  <a class="dropdown-item" href="/intro/introEvCar">전기차 소개</a>
		  <a class="dropdown-item active" href="#">Active link</a>
		  <a class="dropdown-item" href="#">Another link</a>
		</div>
	</div>
	
	
	<!-- 정보마당 -->
	<div class="btn-group dropright">
	  <button type="button" class="btn <c:if test="${sideMenu eq 2 }">btn-success</c:if> dropdown-toggle sideBtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    정보마당
	  </button>
	  <div class="dropdown-menu">
		  <a class="dropdown-item" href="#">Regular link</a>
		  <a class="dropdown-item active" href="#">Active link</a>
		  <a class="dropdown-item" href="#">Another link</a>
		</div>
	</div>
	
	
	<!-- 참여마당 -->
	<div class="btn-group dropright">
	  <button type="button" class="btn <c:if test="${sideMenu eq 3 }">btn-success</c:if> dropdown-toggle sideBtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    참여마당
	  </button>
	  <div class="dropdown-menu">
		  <a class="dropdown-item" href="#">Regular link</a>
		  <a class="dropdown-item active" href="#">Active link</a>
		  <a class="dropdown-item" href="#">Another link</a>
		</div>
	</div>



</body>
</html>
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
	width: 160px;
}
</style>
</head>
<body>

	<!-- 소개 -->
	<div class="btn-group dropright">
	  <button type="button" class="btn <c:if test="${sideMenu eq 11 ||sideMenu eq 12 || sideMenu eq 13}">btn-success</c:if> dropdown-toggle sideBtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    전기차 소개
	  </button>
	  <div class="dropdown-menu">
		  <a class="dropdown-item <c:if test="${sideMenu eq 11}">active</c:if>" href="/intro/introEvCar">전기차 소개</a>
		  <a class="dropdown-item <c:if test="${sideMenu eq 12}">active</c:if>" href="/intro/supplyGoal">전기차 보급목적</a>
		  <a class="dropdown-item <c:if test="${sideMenu eq 13}">active</c:if>" href="/intro/chargeInfo">전기차 충전정보</a>
		</div>
	</div>
	
	
	<!-- 정보마당 -->
	<div class="btn-group dropright">
	  <button type="button" class="btn <c:if test="${sideMenu eq 21 || sideMenu eq 22} }">btn-success</c:if> dropdown-toggle sideBtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    정보마당
	  </button>
	  <div class="dropdown-menu">
		  <a class="dropdown-item <c:if test="${sideMenu eq 21}">active</c:if>" href="#">충전소 찾기</a>
		  <a class="dropdown-item <c:if test="${sideMenu eq 22}">active</c:if>" href="#">충전소 등록</a>
		</div>
	</div>
	
	
	<!-- 참여마당 -->
	<div class="btn-group dropright">
	  <button type="button" class="btn <c:if test="${sideMenu eq 31 || sideMenu eq 32 || sideMenu eq 33 }">btn-success</c:if> dropdown-toggle sideBtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    참여마당
	  </button>
	  <div class="dropdown-menu">
		  <a class="dropdown-item <c:if test="${sideMenu eq 31}">active</c:if>" href="/board/publicBoard">공지사항</a>
		  <a class="dropdown-item <c:if test="${sideMenu eq 32}">active</c:if>" href="/board/freeBoard">자유게시판</a>
		</div>
	</div>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="ttps://code.jquery.com/jquery-latest.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/common/common.js?ver=1"></script>
<link rel="stylesheet" href="/resources/css/common/common.css?ver=1" type="text/css">
<style type="text/css">
ul, li{
	display: inline-block;
}

</style>
</head>
<body>
<div class="container">

	<!-- 로그인바 -->
	<!-- 미로그인시 -->
	<c:if test="${empty sessionScope.loginInfo }">
		<div class="row memberMenu">
			<div class="col md-3 offset-md-9">
				<a href="/member/loginForm">
					로그인
				</a>
				<a href="/member/joinForm">
					회원가입
				</a> 
			</div>
		</div>
	</c:if>
	
	<!-- 로그인 시 -->
	<c:if test="${not empty sessionScope.loginInfo }">
		<div class="row memberMenu">
			<div class="col md-3 offset-md-9">
				name님 반갑
			</div>
				<c:choose>
					<c:when test=""> <!-- 관리자면 관리자메뉴 -->
				
					</c:when>
					<c:otherwise> <!-- 일반회원면 관리자메뉴 -->
						
					</c:otherwise>
				</c:choose>
		</div>
	</c:if>
	
	<!-- 메뉴바 -->
	<div class="row menu">
		<div class="col-2 offset-1 logo">
			<a href="/home/goHome">
				<img alt="logo" src="/resources/image/tesla.jpg" width="30px" height="30px">
			</a>
		</div>
		<div class="col">
			<a href="#">
			소개
			</a>
		</div>
		<div class="col">
			<a href="#">
			자유게시판
			</a>
		</div>
		<div class="col">
			<a href="#">
			서비스
			</a>
		</div>
	</div>
	
	
</div>
</body>
</html>
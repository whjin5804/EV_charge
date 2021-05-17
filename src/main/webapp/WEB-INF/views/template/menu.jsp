<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/member/login.js?ver=12"></script>
<style type="text/css">
/* 로그인/회원가입 */
.menuCol {
	margin-top: 15px;
}

.loginModal {
	text-align: center;
	margin: 0 auto;
}

#homeToast{
	max-width: 100%;
}

#homeToastHeader{
    background-color: green;
    color: white;
}
</style>
</head>
<body>
	<div class="container">
		<div class="toast" role="alert" aria-live="assertive"
			aria-atomic="true" data-autohide="false" id="homeToast">
			<!-- data-autohide="false" -->
			<div class="toast-header" id="homeToastHeader">
			<strong class="mr-auto" style="text-align: center;">로그인 시 편리하게 이용하실 수 있습니다.</strong>
				<button type="button" class="ml-2 mb-1 close" data-dismiss="toast"
					aria-label="Close" style="color: white;">
					<span aria-hidden="true" style="color: white;">&times;</span>
				</button>
			</div>
		</div>
	
	

		<!-- 로그인바 -->
		<!-- 미로그인시 -->
		<c:if test="${empty sessionScope.loginInfo }">
			<div class="row memberMenu">
				<div class="col md-3 offset-md-9 menuCol">
					<!-- Button trigger modal -->
					<a href="" data-toggle="modal" data-target="#loginModal" onclick="checkCookie()"> 로그인 </a>
					<a href="/member/joinForm"> 회원가입 </a>
				</div>
			</div>
		</c:if>

		<!-- 로그인 시 -->
		<c:if test="${not empty sessionScope.loginInfo }">
			<div class="row memberMenu">
				<div class="col md-4 offset-md-8 menuCol">
					${sessionScope.loginInfo.memberName }님 반갑습니다.
					<c:choose>
						<c:when test="${sessionScope.loginInfo.isAdmin.equals('Y')}">
							<!-- 관리자면 관리자메뉴 -->
							<a href="admin/goAdmin"> 관리자메뉴 </a>
						</c:when>
						<c:otherwise>
							<!-- 일반회원면 마이페이지 -->
							<a href="member/myPage"> 마이페이지 </a>
						</c:otherwise>
					</c:choose>
					<a href="/member/logout"> 로그아웃 </a>
				</div>
			</div>
		</c:if>

		<!-- 로고 -->
		<div class="row menu">
			<div class="col-2 offset-1 logo">
				<a href="/home/goHome"> <img alt="logo"
					src="/resources/image/elCar.png" width="130px" height="70px">
				</a>
			</div>
			
			
			<!-- 소개 -->
			<div class="col menuCol">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 전기차 소개 </a>

					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<a class="dropdown-item <c:if test="${sideMenu eq 11}">active</c:if>" href="/intro/introEvCar">전기차 개요</a> <a
							class="dropdown-item <c:if test="${sideMenu eq 12}">active</c:if>" href="/intro/supplyGoal">전기차 보급목적</a> <a
							class="dropdown-item <c:if test="${sideMenu eq 13}">active</c:if>" href="/intro/chargeInfo">전기차 충전정보</a>
					</div>
				</div>
			</div>
			
			
			<!-- 정보마당 -->
			<div class="col menuCol">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 정보마당 </a>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<a class="dropdown-item" href="#">충전소 찾기</a> <a
							class="dropdown-item" href="#">충전소 등록</a>
					</div>
				</div>
			</div>
			
			<!-- 참여마당 -->
			<div class="col menuCol">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 참여마당 </a>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<a class="dropdown-item" href="/board/publicBoard">공지사항</a> <a
							class="dropdown-item" href="/board/freeBoard">자유게시판</a>
					</div>
				</div>
			</div>
		</div>





		<!-- Modal -->
		<div class="modal fade" id="loginModal" tabindex="-1"
			aria-labelledby="loginModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="loginModalLabel">로그인</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body loginModal">
						<!-- 로그인 모달 -->
						<form action="/member/login" method="post" id="loginForm">
							<div class="row">
								<div class="col">
									<div class="form-group col-md-12">
										<label for="memberId">아이디 입력</label> <input type="text"
											class="form-control" id="memberId" name="memberId"
											aria-describedby="emailHelp">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<div class="form-group col-md-12">
										<label for="memberPw">비밀번호</label> <input type="password"
											class="form-control" id="memberPw" name="memberPw">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<div class="form-group form-check col-md-12">
										<input type="checkbox" class="form-check-input" id="rememberId">
											<label class="form-check-label" for="rememberId">아이디 저장</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<button type="button" class="btn btn-primary" onclick="login()">로그인</button>
								</div>
							</div>
							<div class="row" style="margin-top: 5px;">
								<div class="col">
									<button type="button" class="btn btn-warning" onclick="location.href='/member/findIdForm';">아이디찾기</button>
									<button type="button" class="btn btn-danger" onclick="location.href='/member/findPwForm';">비밀번호찾기</button>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-info" onclick="location.href='/member/joinForm';">회원가입</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
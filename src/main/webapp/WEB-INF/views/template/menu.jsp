<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 로그인/회원가입 */
.menuCol {
	margin-top: 15px;
}

.loginModal {
	text-align: center;
	margin: 0 auto;
}
</style>
</head>
<body>
	<div class="container">

		<!-- 로그인바 -->
		<!-- 미로그인시 -->
		<c:if test="${empty sessionScope.loginInfo }">
			<div class="row memberMenu">
				<div class="col md-3 offset-md-9 menuCol">
					<!-- Button trigger modal -->
					<a href="" data-toggle="modal" data-target="#loginModal"> 로그인 </a>
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

		<!-- 메뉴바 -->
		<div class="row menu">
			<div class="col-2 offset-1 logo">
				<a href="/home/goHome"> <img alt="logo"
					src="/resources/image/elCar.png" width="130px" height="50px">
				</a>
			</div>
			
			
			<!-- 소개 -->
			<div class="col menuCol">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 전기차 소개 </a>

					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<a class="dropdown-item" href="/intro/introEvCar">전기차 개요</a> <a
							class="dropdown-item" href="#">전기차 보급목적</a> <a
							class="dropdown-item" href="#">전기차 충전정보</a>
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
						<a class="dropdown-item" href="#">공지사항</a> <a
							class="dropdown-item" href="#">자유게시판</a>
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
						<h5 class="modal-title" id="loginModalLabel">Modal title</h5>
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
											aria-describedby="emailHelp"> <small id="emailHelp"
											class="form-text text-muted">아이디를 정확히 입력해주세요.</small>
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
										<input type="checkbox" class="form-check-input"
											id="exampleCheck1" checked> <label class="form-check-label"
											for="exampleCheck1">반갑습니다.</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<button type="submit" class="btn btn-primary">로그인</button>
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
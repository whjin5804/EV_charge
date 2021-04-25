<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#loginForm {
	margin: 0 auto;
}
</style>
</head>
<body>
	<div class="container">
		<form action="/member/login" method="post" id="loginForm">
			<div class="form-group col-md-6">
				<label for="memberId">아이디 입력</label> <input type="text"
					class="form-control" id="memberId" name="memberId"
					aria-describedby="emailHelp"> <small id="emailHelp"
					class="form-text text-muted">아이디를 정확히 입력해주세요.</small>
			</div>
			<div class="form-group col-md-6">
				<label for="memberPw">비밀번호</label> <input type="password"
					class="form-control" id="memberPw" name="memberPw">
			</div>
			<div class="form-group form-check col-md-6">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">반갑습니다.</label>
			</div>
			<div class="row">
				<div class="col">
					<button type="submit" class="btn btn-primary">로그인</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
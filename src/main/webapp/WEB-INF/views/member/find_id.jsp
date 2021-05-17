<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/member/find_id.js?ver=1"></script>
</head>
<body>
<div class="container">
	<form  method="post" id="findId">
			<div class="row">
				<div class="col">
					<div class="form-group col-md-12">
						<label for="memberId">이름 입력</label> <input type="text"
							class="form-control" id="memberName" name="memberName"
							aria-describedby="emailHelp" required>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group col-md-12">
						<label for="memberPw">전화번호</label> <input type="text"
							class="form-control" id="memberTel" name="memberTel" required>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<button type="button" class="btn btn-primary" onclick="findId()">아이디 찾기</button>
				</div>
			</div>
	</form>
</div>
</body>
</html>
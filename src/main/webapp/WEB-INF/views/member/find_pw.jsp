<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/member/find_id.js?ver=11"></script>
<style type="text/css">
.mybtn{
  width:150px;
  height:40px;
  padding:0;
  display:inline; 
  border-radius: 4px; 
  background: #212529;
  color: #fff;
  margin-top: 20px;
  border: solid 2px #212529; 
  transition: all 0.5s ease-in-out 0s;
}
.mybtn:hover .mybtn:focus {
  background: white;
  color: #212529;
  text-decoration: none;
}
</style>
</head>
<body>
<div class="container">
	<form  method="post" id="findId">
			<div class="row">
				<div class="col">
					<div class="form-group col-md-12">
						<label for="memberId">아이디 입력</label>
						<input type="text" class="form-control" id="memberId1" name="memberId" aria-describedby="emailHelp" required> 
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group col-md-12">
						<label for="memberPw">차량 번호</label>
						<input type="number" class="form-control" id="carNum" name="carNum" min="0000" max="9999" maxlength="4" required>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group col-md-12">
						<label for="memberPw">이메일</label>
						<input type="email" class="form-control" id="memberEmail1" name="memberEmail" required>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<button type="button" class="btn btn-primary mybtn" onclick="findPw()">비밀번호 찾기</button>
				</div>
			</div>
	</form>
</div>
</body>
</html>
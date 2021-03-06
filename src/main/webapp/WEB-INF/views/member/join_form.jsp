<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/member/join_form.js?ver=12"></script>
<style type="text/css">
#submitBtn{
	width: 60%;
}

#essential{
	font-size: 13px;
}
</style>
</head>
<body>
	<div class="container ev_charge">
		
		<div class="row">
			<div class="col-2 welcome">
				회원가입
			</div>
			<div class="offset-7 col-3" id="essential">
				(<b style="color:red;">*</b> 표시된 항목은 필수입력 사항입니다.) 
			</div>
		</div>
		
		<hr style="margin-bottom:55px;" class="">
		
		
		<div class="joinForm1">
			<form action="/member/join" method="post" id="insertJoin">
				 <!-- 아이디/아이디중복확인 -->
				 
				<div class="form-row">
					<div class="form-group col-md-9">
						<label for="memberId">아이디 <b style="color : red;">*</b> </label>
						<input type="text" class="form-control" id="memberId1" name="memberId" required>
					</div>
					<div class="form-group col-md-2 align-self-end">
						<button type="button" id="checkIdBtn" class="btn btn-primary checkId" value="아이디 중복 확인" style="width: 100%">아이디 중복 확인</button>
					</div>
					<div class="form-group col-md-1 align-self-end">
						<input type="checkbox" disabled id="checkDup" value="">
					</div>
				</div>
				
				<!-- 비밀번호/비밀번호확인 -->
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="memberPw" >비밀번호 <b style="color : red;">*</b> </label>
						<input type="password" class="form-control" id="memberPw1" name="memberPw" required>
					</div>
					<div class="form-group col-md-6">
						<label for="memberPw2">비밀번호확인 <b style="color : red;">*</b> 
						<span style="color:" id="checkPw"> </span>
						</label>
						<input type="password" class="form-control" id="memberPw2" name="memberPw2" required>
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="memberName">이름</label>
					<input type="text" class="form-control" id="memberName" name="memberName" placeholder="ex) 홍길동">
				</div>
				
				<div class="form-group">
					<label for="carInfo">차량 종류</label>
					<input type="text" class="form-control" id="carInfo" name="carInfo" placeholder="ex) 현대 싼타페">
				</div>
				
				<div class="form-group">
					<label for="carNum">차량 번호 <b style="color : red;">*</b></label>
					<input type="number" class="form-control" id="carNum" name="carNum" placeholder="ex) 1234" required>
				</div>
				
				
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="memberTel">전화번호 <b style="color : red;">*</b></label> 
						<input type="tel" class="form-control" id="memberTel" name="memberTel" placeholder="01022223333">
					</div>
					<div class="form-group col-md-6">
						<label for="memberEmail">이메일 <a style="color : red; font-size: 10px;">아이디와 비밀번호 찾기에 사용됩니다.</a></label> 
						<input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="aaa@gmail.com">
					</div>
				</div>
				
				
				<div class="form-group">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck" checked>
						<label class="form-check-label" for="gridCheck"> 정성껏 작성해주셔서 감사합니다. </label>
					</div>
				</div>
				
				<div class="row">
					<div class="col-7 offset-4">
						<input type="submit" class="btn btn-primary align-self-center" id="submitBtn" value="회원가입">
					</div>
				</div>
			</form>
		</div>	<!-- joinForm -->
		
		
	</div>
</body>

</html>
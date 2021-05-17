/* 페이지 로딩 후 실행 */
$(document).ready(function() {

}); /*로딩화면 끝*/

/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ*/

/* 함수선언 영역*/
(function($) {

	findId = function(memberId) {
		let memberTel = $('#memberTel').val();
		let memberName = $('#memberName').val();
		
		$.ajax({
			url: '/member/findIdFromTelName', //요청경로, 어떤 controller로갈까
			type: 'post',
			data: { 'memberName': memberName, 'memberTel': memberTel }, //필요한 데이터
			success: function(result) {
				
				if(result != ''){
					let str = '아이디는 <b>' + result + '</b>입니다.';
					str += '<a href="" data-toggle="modal" data-target="#loginModal" onclick="checkCookie()"> 로그인하기 </a>';
					$('#findId').after(str);
				}else{
					alert('이름 혹은 전화번호가 틀립니다.');
				}
				
				
				//ajax 실행 성공 후 실행할 코드 작성

			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		}); //ajax
	};//aaa()


	findPw = function(){
		$.ajax({
			url: '/member/findPwFromIdCarNum', //요청경로, 어떤 controller로갈까
			type: 'post',
			data: { 'memberId': $('#memberId1').val(), 'carNum': $('#carNum').val(), 'memberEmail': $('#memberEmail1').val() }, //필요한 데이터
			success: function(result) {
				
				/*if(result != ''){
					let str = '아이디는 <b>' + result + '</b>입니다.';
					str += '<a href="" data-toggle="modal" data-target="#loginModal" onclick="checkCookie()"> 로그인하기 </a>';
					$('#findId').after(str);
				}else{
					alert('이름 혹은 전화번호가 틀립니다.');
				}*/
				
				
				//ajax 실행 성공 후 실행할 코드 작성

			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		}); //ajax
		
	}
	






})(jQuery); /*함수선언영역 끝*/


/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	//아이디 중복 확인
	$(document).on('click', '.checkId', function() { 
		const memberId = $('#memberId').val();	
		checkId(memberId);
	});
	
	//비밀번호 일치 확인
	//일치하면 자동으로 span태그의 속성값 바꿈
	$(document).on('keyup', '#memberPw2', function(){
		let memberPw = $('#memberPw').val();
		let memberPw2 = $('#memberPw2').val();
		if(memberPw == memberPw2){
			$('#checkPw').text('비밀번호가 일치합니다.');
			$('#checkPw').css('color', 'blue');
		}
		else{
			$('#checkPw').text('비밀번호가 일치하지 않습니다.');
			$('#checkPw').css('color', 'red');
		}

	})
	
	//회원가입 버튼 누를 시
	$(document).on('click', '#submitBtn', function(){
		const memberId = $('#memberId').val();	
		checkJoin(memberId);
	})
	
}); /*로딩화면 끝*/

/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ*/

/* 함수선언 영역*/
(function($){

     checkId = function(memberId){
            $.ajax({
            url: '/member/checkMemberId', //요청경로, 어떤 controller로갈까
            type: 'post',
            data:{'memberId':memberId}, //필요한 데이터
            success: function(result) {
				if(result == '' ){
					alert('사용하실 수 잇는 아이디입니다.')
				}
				else{
					alert('아이디가 중복되었습니다.')
					$('#memberId').focus();
					$('#memberId').css('color', 'red');
				}
               //ajax 실행 성공 후 실행할 코드 작성

            },
            error: function(){
             //ajax 실행 실패 시 실행되는 구간
               alert('실패');
            }
      }); //ajax
     };//aaa()


	 //아이디 중복체크 후 form태그를 submit한다.
     checkJoin = function(memberId){
            $.ajax({
            url: '/member/checkMemberId', //요청경로, 어떤 controller로갈까
            type: 'post',
            data:{'memberId':memberId}, //필요한 데이터
            success: function(result) {
				if(result == '' ){
					join();
				}
				else{
					alert('아이디 중복을 확인해주세요.')
					$('#memberId').focus();
					$('#memberId').css('color', 'red');
				}
               //ajax 실행 성공 후 실행할 코드 작성

            },
            error: function(){
             //ajax 실행 실패 시 실행되는 구간
               alert('실패');
            }
      }); //ajax
     };//aaa()



	join = function(){
		$('#insertJoin').submit();	
	};

})(jQuery); /*함수선언영역 끝*/

	
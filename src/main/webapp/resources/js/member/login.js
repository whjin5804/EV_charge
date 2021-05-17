/* 페이지 로딩 후 실행 */
$(document).ready(function() {

	

}); /*로딩화면 끝*/

/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ*/

/* 함수선언 영역*/
(function($) {


	login = function(){
		if($('#rememberId').is(':checked')){
			$('#loginForm').append('<input type="hidden" value="true" name="rememberId"> ');
			$('#loginForm').submit();
		}else{
			$('#loginForm').submit();
		}
	}

	checkCookie = function(){
		//쿠키정보가져오기
		 $.ajax({
            url: '/member/checkCookie', //요청경로, 어떤 controller로갈까
            type: 'post',
            data:{}, //필요한 데이터
            success: function(result) {
               //ajax 실행 성공 후 실행할 코드 작성
               if(result != null){
               	  $('#memberId').val(result);
               }

            },
            error: function(){
             //ajax 실행 실패 시 실행되는 구간
               alert('실패');
            }
      }); //ajax
		
	}//checkCookie



})(jQuery); /*함수선언영역 끝*/
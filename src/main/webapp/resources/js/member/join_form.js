/* 페이지 로딩 후 실행 */
$(document).ready(function() {

	//아이디 중복 확인
	$(document).on('click', '.checkId', function() {
		const memberId = $('#memberId').val();
		checkId(memberId);
	});

	//비밀번호 일치 확인
	//일치하면 자동으로 span태그의 속성값 바꿈
	$(document).on('keyup', '#memberPw2', function() {
		let memberPw = $('#memberPw').val();
		let memberPw2 = $('#memberPw2').val();
		if (memberPw == memberPw2) {
			$('#checkPw').text('비밀번호가 일치합니다.');
			$('#checkPw').css('color', 'blue');
		}
		else {
			$('#checkPw').text('비밀번호가 일치하지 않습니다.');
			$('#checkPw').css('color', 'red');
		}

	})

	//아이디에서 바뀌고 키보드 땔뗴
		$(document).on('keyup', '#memberId', function(){
			const memberId = $('#memberId').val();	
			
			$.ajax({
			url: '/member/checkMemberId', //요청경로, 어떤 controller로갈까
			type: 'post',
			data: { 'memberId': memberId }, //필요한 데이터
			success: function(result) {
				if (result == '') {
					$('#checkDup').prop('checked', true);
					$('#checkDup').val('true');
				}
				else {
					$('#checkDup').removeAttr('checked');
					$('#checkDup').val('');
					
				}
				//ajax 실행 성공 후 실행할 코드 작성

			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		}); //ajax
		})

	initValidation();
}); /*로딩화면 끝*/

/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ*/

/* 함수선언 영역*/
(function($) {

	checkId = function(memberId) {
		$.ajax({
			url: '/member/checkMemberId', //요청경로, 어떤 controller로갈까
			type: 'post',
			data: { 'memberId': memberId }, //필요한 데이터
			success: function(result) {
				if (result == '') {
					$('#memberId').css('color', 'black');
					alert('사용하실 수 잇는 아이디입니다.');
					$('#checkDup').prop('checked', true);
				}
				else {
					alert('아이디가 중복되었습니다.')
					$('#memberId').focus();
					$('#memberId').css('color', 'red');
				}
				//ajax 실행 성공 후 실행할 코드 작성

			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		}); //ajax
	};//aaa()



	initValidation = function() {
		//특수 문자는 제외하는 정규식을 validation에 추가 
		jQuery.validator.addMethod("alphanumeric", function(value, element) {
			return this.optional(element) || !/[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/.test(value);
		});

		jQuery.validator.addMethod("isalphanumeric", function(value, element) {
			return this.optional(element) || /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]+/.test(value);
		});

		jQuery.validator.addMethod("eng_number", function(value, element) {
			return this.optional(element) || /^[a-z]+[0-9]?/.test(value);
		}); // 추가

		jQuery.validator.addMethod("iseng_number", function(value, element) {
			return this.optional(element) || /^[a-z]+[0-9]/.test(value);
		}); // 추가



		jQuery.validator.addMethod("onlyKorean", function(value, element) {
			return this.optional(element) || /^[가-힣]+$/.test(value);
		});
		jQuery.validator.addMethod("secretNumber", function(value, element) {
			return this.optional(element) || /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$/.test(value);
		});

		jQuery.validator.addMethod("emailLogic", function(value, element) {
			return this.optional(element) || /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i.test(value);
		});

		//form태그의 id가 joinForm이고 submit버튼이 있어야한다.
		$("#insertJoin").validate({
			// 테스트를 위하여 유효성 검사가 완료되어도 submit을 처리하지 않음.
			debug: false,
			//유효성 검사를 제외할 엘레먼트를 넣는다.
			//ignore: ".ignore",
			//포커스가 떠날 때 유효성 검사를 한다.
			onfocusout: function(element) {
				$(element).valid();
			},
			//onfocusout: false,
			//각각의 input태그에 필요한 검증 조건 나열
			rules: {
				memberId: {
					required: true
					, minlength: 5
					, maxlength: 12
					, alphanumeric: true
					, eng_number: true
				},
				carInfo: {
					minlength: 3
					, maxlength: 10
					, alphanumeric: true
				},
				memberPw: {
					required: true
					, minlength: 6
					, maxlength: 12
					, equalTo: '#memberPw2'
					, isalphanumeric: true
					, iseng_number: true
					//equalTo : confirm_pw 이렇게 해도 됨
				},
				memberPw2: {
					required: true
				},
				memberName: {
					minlength: 2
					, maxlength: 20
					, onlyKorean: true
				},
				carNum: {
					required: true
					, digits: true
					, minlength: 4
					, maxlength: 4
				},
				memberTel: {
					required: true
					, minlength: 11
					, maxlength: 11
				},
				memberEmail: {
					email: true
				}
			},
			//검사를 충족하지 못할 경우 표시될 메시지의 나열                                                         
			messages: {
				memberId: {
					required: '필수 입력'
					, minlength: '5글자 이상 입력하세요.'
					, maxlength: '10글자 이하 입력하세요.'
					, alphanumeric: '특수 문자는 들어올 수 없습니다.'
					, eng_number: '영어와 숫자를 조합해서 적어주세요.'
				},
				carInfo: {
					minlength: '최소 3글자'
					, maxlength: '10글자 이하 입력하세요.'
					, alphanumeric: '특수 문자는 들어올 수 없습니다.'
				},
				memberPw: {
					required: '필수 입력'
					, minlength: '비밀번호는 최소 6글자 입니다.'
					, maxlength: '비밀번호는 최소 12글자 입니다.'
					, equalTo: '비밀번호를 우측에 한번더 입력해주세요.'
					, isalphanumeric: '영어와 숫자, 특수문자를 조합해서 만들어주세요.'
					, iseng_number: '영어와 숫자, 특수문자를 조합해서 만들어주세요.'
				},
				memberPw2: {
					required: '비밀번호를 확인해주세요.'
				},
				memberName: {
					minlength: '최소 2글자 입니다.'
					, maxlength: '최대 20글자 입니다.'
					, onlyKorean: '한글만 들어올 수 있습니다.'
				},
				carNum: {
					required: '필수 입력'
					, digit: '차량 번호 4자리를 입력해주세요.'
					, minlength: '차량 번호 4자리를 입력해주세요.'
					, maxlength: '차량 번호 4자리를 입력해주세요.'
				},
				memberTel: {
					required: '필수 입력'
					, minlength: '올바르게 입력해 주세요.'
					, maxlength: '올바르게 입력해 주세요.'
				},
				memberEmail: {
					email: '이메일 형식을 지켜주세요.'
				}
			},
			//조건 검사 후 검증 실패 시 실행되는 코드
			//마약 작성하지 않으면 기본적으로 input태그의 우측에 에러 메세지를 나타낸다.
			//errorPlacement: function(error, element){
			//alert(error);
			//},
			//validation처리가 성공하면 기본적으로 폼태그를 submit한다.
			//만약, 검증 후 submit이 아닌 다른 기능을 수행하고자 한다면 아래의 영역에 필요한 소스를 구현
			submitHandler: function() {
				let isTrue = $('#checkDup').val();
				if(isTrue == 'undefined' || isTrue == '' || isTrue == null || isTrue == NaN){
					alert('아이디가 중복되었습니다.');
					$('#memberId').focus();
				}
				else{
					alert('방문해주셔서 감사합니다.')
					join1();
				}
			}

		});
	}

		join1 = function(){
			let memberId = $('#memberId').val();
			let memberPw = $('#memberPw').val();
			let memberName = $('#memberName').val();
			let carInfo = $('#carInfo').val();
			let carNum = $('#carNum').val();
			let memberTel = $('#memberTel').val();
			let memberEmail = $('#memberEmail').val();
			
			location.href='/member/join?memberId=' + memberId + '&memberPw=' + memberPw +
			'&memberName=' + memberName + '&carInfo=' + carInfo + '&carNum=' + carNum + 
			'&memberTel=' + memberTel + '&memberEmail=' + memberEmail;
		}











})(jQuery); /*함수선언영역 끝*/


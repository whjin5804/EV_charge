package EV_charge.member.controller;

import java.io.Reader;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import EV_charge.member.service.MemberService;
import EV_charge.member.vo.MemberVO;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	@Resource(name = "memberService")
	MemberService memberService;
	
	//menu.jsp > 로그인으로 이동
	@GetMapping("/loginForm")
	public String loginForm() {
		
		return "member/login_form";
	}
	
	//login_form.jsp > 로그인DB
	
	/* 회원가입 */
	//menu.jsp > 회원가입으로 이동
	@GetMapping("/joinForm")
	public String joinForm() {
		return "member/join_form";
	}
	
	//아이디 중복확인 ajax
	@PostMapping("/checkMemberId")
	@ResponseBody
	public String checkMemberId(MemberVO memberVO) {
		//member테이블에 중복된 아이디가 있는지 체크
		return memberService.isExist(memberVO);
	}
	
	//Join_form.jsp > 회원가입 정보 insert
	@PostMapping("/join")
	public String insertNewMember(MemberVO memberVO) {
		System.out.println(123);
		memberService.insertNewMember(memberVO);
		
		return "template/home";
	}
	
	/* 회원가입 끝 */
	
	
	
}






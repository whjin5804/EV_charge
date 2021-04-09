package EV_charge.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	//menu.jsp > 로그인으로 이동
	@GetMapping("/loginForm")
	public String loginForm() {
		
		return "member/login_form";
	}
	
	//login_form.jsp > 로그인DB
	
	//menu.jsp > 회원가입으로 이동
	@GetMapping("/joinForm")
	public String joinForm() {
		
		return "member/join_form";
	}
	
}

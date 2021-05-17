package EV_charge.member.controller;


import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import EV_charge.member.service.MemberService;
import EV_charge.member.vo.LoginVO;
import EV_charge.member.vo.MemberVO;
import EV_charge.util.SHA_256;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	@Resource(name = "memberService")
	MemberService memberService;
	
	
	/* 로그인 */
	//menu.jsp > 로그인으로 이동
	@GetMapping("/loginForm")
	public String loginForm() {
		
		return "member/login_form";
	}
	
	//login_form.jsp > 로그인DB
	@PostMapping("/login")
	public String login(HttpSession session, LoginVO loginVO, MemberVO memberVO, HttpServletResponse response) {
		
		//아이디에 맞는 salt값을 가져온다.
		String salt = memberService.getSaltById(loginVO.getMemberId());
		
		//비밀번호가 틀렸으면
		if(salt == null) {
			return "member/noLogin";
		}else {
			//비밀번호가 맞았을 떄, 암호화된 비밀번호와 난수(salt)를 합쳐준다.
			String encryptPw = SHA_256.getEncrypt(loginVO.getMemberPw(), salt);
			
			//비밀번호에 encryptPw를 넣는다.
			loginVO.setMemberPw(encryptPw);
			
			MemberVO loginInfo = memberService.login(loginVO);
			
			//세션에 넣음
			session.setAttribute("loginInfo", loginInfo);
			
			//아이디 저장에 체크했을 경우 쿠키에 넣음
			if(memberVO.getRememberId() != null) {
				Cookie memberIdCookie = new Cookie("memberIdCookie", loginVO.getMemberId());
				memberIdCookie.setPath("/");
				memberIdCookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(memberIdCookie);
			}
		}
		
		return "redirect:/home/goHome";
	}
	
	@PostMapping("/checkCookie")
	@ResponseBody
	public String checkCookie(Model model, HttpServletRequest request, @CookieValue(name = "memberIdCookie", required = false)String cookie) {
		
		//memberIdCookie라는 이름의 쿠키를 들고온다.
		cookie = request.getHeader("memberIdCookie");
		
		String rememberId = "";
		
		//쿠키안에있는 것들을 가져온다.
		Cookie cookies[] = request.getCookies();
			
		//for문을 돌려서 쿠키이름과 memberIdCookie가 같은것의 값을 가져온다.
		for (int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("memberIdCookie")) {
				rememberId = cookies[i].getValue();
			}
		}
			
		
		return rememberId;
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginInfo");
		return "redirect:/home/goHome";
	}
	
	/* 로그인 끝*/
	
	
	/* 아이디 비번 찾기 */
	
	@GetMapping("/findIdForm")
	public String findIdForm() {
		
		return "member/find_id";
	}
	
	@ResponseBody
	@PostMapping("/findIdFromTelName")
	public String findIdFromTelName(MemberVO memberVO, Model model) {
		return memberService.findIdFromTelName(memberVO);
	}
	
	@GetMapping("/findPwForm")
	public String findPwForm() {
		return "member/find_pw";
	}
	
	@ResponseBody
	@PostMapping("/findPwFromIdCarNum")
	public int findPwFromIdCarNum(MemberVO memberVO, HttpServletResponse response) throws Exception {
			return memberService.findPwFromIdCarNum(memberVO, response);
	}
	
	
	/* 아이디 비번 찾기 끝 */
	
	
	/* 회원가입 */
	//menu.jsp > 회원가입으로 이동
	@GetMapping("/joinForm")
	public String joinForm() {
		return "member/join_form";
	}
	
	//아이디 중복확인 ajax
	@PostMapping("/checkMemberId")
	@ResponseBody
	public MemberVO checkMemberId(MemberVO memberVO) {
		//member테이블에 중복된 아이디가 있는지 체크
		return memberService.isExist(memberVO.getMemberId());
	}
	
	//Join_form.jsp > 회원가입 정보 insert
	@RequestMapping("/join")
	public String insertNewMember(MemberVO memberVO) {
		System.out.println(memberVO.getMemberId());
		memberService.insertNewMember(memberVO);
		
		return "template/home";
	}
	
	/* 회원가입 끝 */
	
	
	
}






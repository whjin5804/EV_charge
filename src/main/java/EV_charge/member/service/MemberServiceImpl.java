package EV_charge.member.service;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import EV_charge.member.vo.LoginVO;
import EV_charge.member.vo.MemberVO;
import EV_charge.util.SHA_256;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Resource(name = "memberService")
	MemberService memberservice;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public MemberVO isExist(String memberId) {
		return sqlSession.selectOne("isExist", memberId);
	}

	//회원가입
	@Override
	public void insertNewMember(MemberVO memberVO) {
		String salt = SHA_256.generateSalt();
		memberVO.setSalt(salt);
		
		String password = memberVO.getMemberPw();
		password = SHA_256.getEncrypt(password, salt);
		
		memberVO.setMemberPw(password);
		
		sqlSession.insert("insertNewMember", memberVO);
	}

	//로그인
	@Override
	public MemberVO login(LoginVO loginVO) {
		return sqlSession.selectOne("selectLogin", loginVO);
	}

	//아이디에 맞는 salt값 가져온다.
	@Override
	public String getSaltById(String memberId) {
		return sqlSession.selectOne("getSaltById", memberId);
	}

	//아이디 찾기
	@Override
	public String findIdFromTelName(MemberVO memberVO) {
		return sqlSession.selectOne("findIdFromTelName", memberVO);
	}

	@Override
	public void sendEmail(MemberVO memberVO, String str) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = "서버 이메일 주소(보내는 사람 이메일 주소)";
		String hostSMTPpwd = "서버 이메일 비번(보내는 사람 이메일 비번)";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "보내는 사람 이메일주소(받는 사람 이메일에 표시됨)";
		String fromName = "프로젝트이름 또는 보내는 사람 이름";
		String subject = "";
		String msg = "";

		if(str.equals("findpw")) {
			subject = "전기차 충전소 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += memberVO.getMemberId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += memberVO.getMemberPw() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = memberVO.getMemberEmail();
		mail = mail.trim();
		System.out.println(mail + " ///");
		//이메일에 공백이 포함되잇다는 오류가 뜬다..?
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}

	@Override
	public int findPwFromIdCarNum(MemberVO memberVO, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		MemberVO memberOfId = memberservice.isExist(memberVO.getMemberId());
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if(memberservice.idCheck(memberVO.getMemberId()) == null) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		// 가입된 차량번호가 아니면
		else if(memberVO.getCarNum() != memberOfId.getCarNum()) {
			System.out.println(2);
			out.print("등록되지 않은 차량번호입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			memberVO.setMemberPw(pw);
			// 비밀번호 변경
			memberservice.updatePw(memberVO);
			// 비밀번호 변경 메일 발송
			sendEmail(memberVO, "findpw");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
			return 1;
		}
		return 0;
	}


	@Override
	public MemberVO idCheck(String memberId) {
		return sqlSession.selectOne("isCheck", memberId);
	}

	@Override
	public void updatePw(MemberVO memberVO) {
		sqlSession.update("updatePw", memberVO);
	}
	
	
}

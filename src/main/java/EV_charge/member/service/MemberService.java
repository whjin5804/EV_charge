package EV_charge.member.service;


import javax.servlet.http.HttpServletResponse;

import EV_charge.member.vo.LoginVO;
import EV_charge.member.vo.MemberVO;

public interface MemberService {

	MemberVO isExist(String memberId);

	void insertNewMember(MemberVO memberVO);

	MemberVO login(LoginVO loginVO);

	String getSaltById(String memberId);

	String findIdFromTelName(MemberVO memberVO);

	void sendEmail(MemberVO memberVO, String str) throws Exception;
	
	int findPwFromIdCarNum(MemberVO memberVO, HttpServletResponse response) throws Exception;

	MemberVO idCheck(String memberId);

	void updatePw(MemberVO memberVO);

}

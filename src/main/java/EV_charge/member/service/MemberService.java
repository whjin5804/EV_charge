package EV_charge.member.service;

import javax.servlet.http.HttpSession;

import EV_charge.member.vo.LoginVO;
import EV_charge.member.vo.MemberVO;

public interface MemberService {

	String isExist(MemberVO memberVO);

	void insertNewMember(MemberVO memberVO);

	MemberVO login(LoginVO loginVO);

	String getSaltById(String memberId);

}

package EV_charge.member.service;

import EV_charge.member.vo.MemberVO;

public interface MemberService {

	String isExist(MemberVO memberVO);

	void insertNewMember(MemberVO memberVO);

}

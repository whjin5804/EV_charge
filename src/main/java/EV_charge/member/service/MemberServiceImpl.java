package EV_charge.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import EV_charge.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public String isExist(MemberVO memberVO) {
		return sqlSession.selectOne("isExist", memberVO);
	}

	@Override
	public void insertNewMember(MemberVO memberVO) {
		sqlSession.insert("insertNewMember", memberVO);
	}
	
	
}

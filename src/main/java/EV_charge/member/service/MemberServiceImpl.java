package EV_charge.member.service;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import EV_charge.member.vo.LoginVO;
import EV_charge.member.vo.MemberVO;
import EV_charge.util.SHA_256;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public String isExist(MemberVO memberVO) {
		return sqlSession.selectOne("isExist", memberVO);
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
	
	
}

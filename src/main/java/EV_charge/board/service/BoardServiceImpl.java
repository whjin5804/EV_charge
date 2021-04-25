package EV_charge.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import EV_charge.board.vo.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<BoardVO> selectPublicBoardList() {
		return sqlSession.selectList("selectPublicBoardList");
	}
}

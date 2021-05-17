package EV_charge.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import EV_charge.board.vo.BoardVO;
import EV_charge.util.vo.PagingVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private SqlSessionTemplate sqlSession;

	//공지사항 열때 데이터 가져오기
	@Override
	public List<BoardVO> selectPublicBoardList() {
		return sqlSession.selectList("selectPublicBoardList");
	}

	//공지사항 클릭 후detail내용
	@Override
	public BoardVO detailBoard(BoardVO boardVO) {
		return sqlSession.selectOne("detailBoard", boardVO);
	}

	@Override
	public int countBoard() {
		return sqlSession.selectOne("countBoard");
	}

	@Override
	public List<BoardVO> selectBoard(PagingVO pagingVO) {
		return sqlSession.selectList("selectBoard", pagingVO);
	}

	//자유게시판
	@Override
	public List<BoardVO> selectFreeBoard(PagingVO pagingVO) {
		return sqlSession.selectList("selectFreeBoard", pagingVO);
	}
	//자유게시판
	@Override
	public int countFreeBoard() {
		return sqlSession.selectOne("countFreeBoard");
	}

	//자유게시판 글 작성
	@Override
	public int writeFreeBoard(BoardVO boardVO) {
		return sqlSession.insert("writeFreeBoard", boardVO);
	}
}

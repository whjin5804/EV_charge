package EV_charge.board.service;

import java.util.List;

import EV_charge.board.vo.BoardVO;
import EV_charge.util.vo.PagingVO;

public interface BoardService {

	List<BoardVO> selectPublicBoardList();

	BoardVO detailBoard(BoardVO boardVO);

	//공지사항
	int countBoard();
	List<BoardVO> selectBoard(PagingVO pagingVO);

	//자유게시판
	List<BoardVO> selectFreeBoard(PagingVO pagingVO);
	int countFreeBoard();

	int writeFreeBoard(BoardVO boardVO);

}

package EV_charge.board.service;

import java.util.List;

import EV_charge.board.vo.BoardVO;

public interface BoardService {

	List<BoardVO> selectPublicBoardList();

}

package EV_charge.board.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import EV_charge.board.service.BoardService;
import EV_charge.board.vo.BoardVO;
import EV_charge.member.vo.MemberVO;
import EV_charge.util.vo.PagingVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Resource(name = "boardService")
	BoardService boardService;
	
	//공지사항
	@RequestMapping("/publicBoard")
	public String selectPublicBoard(@RequestParam(name = "sideMenu", required = false, defaultValue = "31") String sideMenu, Model model, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, PagingVO pagingVO) {
		model.addAttribute("sideMenu", sideMenu);
		
		int total = boardService.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		String searchKeyword = pagingVO.getSearchKeyword();
		pagingVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		pagingVO.setSearchKeyword(searchKeyword);
		model.addAttribute("paging", pagingVO);
		model.addAttribute("boardList", boardService.selectBoard(pagingVO));
		
		
		
		return "side/board/public_board";
	}
	
	@GetMapping("/detailBoard")
	public String detailBoard(BoardVO boardVO, Model model) {
		model.addAttribute("detailBoard", boardService.detailBoard(boardVO));
		
		return "side/board/public_detail_board";
	}
	

	
	//자유게시판
	@RequestMapping("/freeBoard")
	public String selectFreeBoard(@RequestParam(name = "sideMenu", required = false, defaultValue = "31") String sideMenu, Model model, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, PagingVO pagingVO) {
		model.addAttribute("sideMenu", sideMenu);

		int total = boardService.countFreeBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		String searchKeyword = pagingVO.getSearchKeyword();
		pagingVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		pagingVO.setSearchKeyword(searchKeyword);
		model.addAttribute("paging", pagingVO);
		model.addAttribute("boardList", boardService.selectFreeBoard(pagingVO));
		
		
		return "side/board/free_board";
	}
	
	
	//자유게시판 글쓰기화면으로 이동
	@GetMapping("/writeFreeBoardForm")
	public String writeFreeBoard() {
		return "side/board/write_bord_form";
	}
	
	@GetMapping("/writeFreeBoard")
	public String writeFreeBoard(BoardVO boardVO, HttpSession session) {
		boardVO.setWriter(((MemberVO)session.getAttribute("loginInfo")).getMemberCode());
		System.out.println(boardVO.getIsLock() + "??");
		boardService.writeFreeBoard(boardVO);
		return "";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}//끝

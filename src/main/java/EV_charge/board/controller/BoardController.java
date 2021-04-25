package EV_charge.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import EV_charge.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Resource(name = "boardService")
	BoardService boardService;
	
	//공지사항
	@RequestMapping("/publicBoard")
	public String selectPublicBoard(@RequestParam(name = "sideMenu", required = false, defaultValue = "31") String sideMenu, Model model) {
		model.addAttribute("sideMenu", sideMenu);
		model.addAttribute("boardList", boardService.selectPublicBoardList());
		
		return "side/board/public_board";
	}

	
	//자유게시판
	@RequestMapping("/freeBoard")
	public String selectFreeBoard(@RequestParam(name = "sideMenu", required = false, defaultValue = "32") String sideMenu, Model model) {
		model.addAttribute("sideMenu", sideMenu);
		
		
		return "side/board/free_board";
	}
}

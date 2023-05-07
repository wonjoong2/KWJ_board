package kr.co.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;

	// 게시판 리스트
	@RequestMapping("/")
	public String BoardList(BoardVO vo, Model model) {

		model.addAttribute("BoardList", boardService.BoardList());

		return "/board/BoardList";

	}
	
	@RequestMapping(value = "/BoardRegister", method = RequestMethod.GET)
	public String BoardRegisterPage() {

		return "/board/BoardRegister";

	}

	@RequestMapping(value = "/BoardRegister", method = RequestMethod.POST)
	public String BoardRegister(BoardVO vo, Model model) {

		boardService.InsertBoard(vo);
		return "redirect:/";

	}
	
	@RequestMapping(value = "/BoardDetail/{id}")
	public String BoardDetail(BoardVO vo, Model model) {
		
		model.addAttribute("board", boardService.BoardDetail(vo));
		model.addAttribute("RelatedBoard",boardService.RelatedBoard());

		boardService.BoardDetail(vo);
		boardService.RelatedBoard();
		
		return "/board/BoardDetail";

	}
}

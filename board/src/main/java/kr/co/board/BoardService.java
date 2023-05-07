package kr.co.board;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BoardService {
	
	List<BoardVO> BoardList();
	
	void InsertBoard(BoardVO vo);
	
	BoardVO BoardDetail(BoardVO vo);
	
	List<BoardVO> RelatedBoard();
//	List<BoardVO> RelatedBoard(@Param("content") String content);

}

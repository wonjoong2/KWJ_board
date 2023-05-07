package kr.co.board;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BoardMapper {
	
	List<BoardVO> BoardList();
	
	void InsertBoard(BoardVO vo);
	
	BoardVO BoardDetail(BoardVO vo);
	
	List<BoardVO> RelatedBoard();
	

}

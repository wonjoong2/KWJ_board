package kr.co.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<BoardVO> BoardList() {

		BoardMapper mapper = sqlSessionTemplate.getMapper(BoardMapper.class);
		List<BoardVO> BoardList = mapper.BoardList();

		return BoardList;

	}

	public void InsertBoard(BoardVO vo) {

		BoardMapper mapper = sqlSessionTemplate.getMapper(BoardMapper.class);
		mapper.InsertBoard(vo);

	}

	
	public BoardVO BoardDetail(BoardVO vo) {
		
		BoardMapper mapper = sqlSessionTemplate.getMapper(BoardMapper.class);
		return mapper.BoardDetail(vo);
		
		
	}

	
	public List<BoardVO> RelatedBoard() {
		
		BoardMapper mapper = sqlSessionTemplate.getMapper(BoardMapper.class);
		List<BoardVO> RelatedBoard = mapper.RelatedBoard();
		
		return RelatedBoard;
	}

}

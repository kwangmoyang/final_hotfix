package com.Final.Final1.board.model;

import java.util.List;
import java.util.Map;

public interface BoardDAO {

	List<BoardDTO> list(BoardDTO dto);
	
	Object insert(BoardDTO dto);

	Map<String, Object> detail(BoardDTO dto);

	int update(BoardDTO dto);

	int delete(BoardDTO dto);

	void viewCount(BoardDTO dto);

	



}

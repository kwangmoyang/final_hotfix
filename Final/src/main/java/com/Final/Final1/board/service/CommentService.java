package com.Final.Final1.board.service;

import java.util.List;
import java.util.Map;

import com.Final.Final1.board.model.CommentDTO;
import com.Final.Final1.mypage.model.MypageDTO;

public interface CommentService {

	void insert(CommentDTO dto);

	List<CommentDTO> list(int postNum);

	void remove(Map<String, Object> map);

	int count(int post_num);

	void activeInsert(MypageDTO mydto);



}

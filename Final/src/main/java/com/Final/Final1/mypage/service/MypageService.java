package com.Final.Final1.mypage.service;

import java.util.List;
import java.util.Map;

import com.Final.Final1.board.model.BoardDTO;
import com.Final.Final1.board.model.MyCommentListDTO;
import com.Final.Final1.board.model.MyWriterListDTO;
import com.Final.Final1.comm.model.LoginDTO;
import com.Final.Final1.mypage.model.MypageDTO;
import com.Final.Final1.team.model.TeamlistDTO;

public interface MypageService {
	
	public List<MypageDTO> Userinfo(MypageDTO dto);
	
	public int UserPoint(MypageDTO dto);
	
	public void UserSetNickname(MypageDTO dto);
	
	
	public void UserSetPhone_num(MypageDTO dto);
	public void UserSetEmail_address(MypageDTO dto);
	public void UserSetUser_pw(MypageDTO dto);
	public void UserSetUser_introduce(MypageDTO dto);


	public void UserDelete(String userid);

	public List<BoardDTO> myRequestlist(MyWriterListDTO dto, int start, int end);

	public List<BoardDTO> myCommentlist(MyCommentListDTO dto, int start, int end);

	public int count(MyWriterListDTO dto);

	public int commentCount(MyCommentListDTO dto);

//	void insert(MypageDTO dto);
	
	
	void updateUserPhoto(MypageDTO dto);
	
	public String UserPhotoView(MypageDTO dto);
	
	public void UserContactSet(MypageDTO dto);

	public Map<String, Object> mypageUserinfo(String User_nickname);

	public Map<String, Object> teamnotmember_select(String User_nickname);

	public void teamnotmember_delete(String User_nickname);
	public void myBoardDelete(int boardDeleteMsg);

	public void myCommentDelete(int boardDeleteMsg);


	public int UserReq_cnt(MypageDTO dto);
	public int UserSol_cnt(MypageDTO dto);
	public int UserDrop_Req_cnt(MypageDTO dto);
	public int UserDrop_Sol_cnt(MypageDTO dto);

	public void teamlogo(MypageDTO dto);

	public String TeamPhotoView(MypageDTO dto);

	public List<TeamlistDTO> TeamPhotolist(MypageDTO dto);

	
	
	
}

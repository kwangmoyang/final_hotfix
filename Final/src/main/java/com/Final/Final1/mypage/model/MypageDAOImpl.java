package com.Final.Final1.mypage.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.Final.Final1.board.model.BoardDTO;
import com.Final.Final1.board.model.MyCommentListDTO;
import com.Final.Final1.board.model.MyWriterListDTO;
import com.Final.Final1.team.model.TeamlistDTO;



@Repository
public class MypageDAOImpl implements MypageDAO {
	
	@Inject
	SqlSessionTemplate sqlSession;

	@Override
	public List<MypageDTO> Userinfo(MypageDTO dto) {
		return sqlSession.selectList("userinfo.Userinfo",dto);
	}
	
	
	
	@Override
	public void UserSetNickname(MypageDTO dto) {
		sqlSession.selectOne("userinfo.UserSetNickname",dto);
	}

	@Override
	public void UserSetPhone_num(MypageDTO dto) {
		sqlSession.selectOne("userinfo.UserSetPhone_num",dto);
		
	}

	@Override
	public void UserSetEmail_address(MypageDTO dto) {
		sqlSession.selectOne("userinfo.UserSetEmail_address",dto);
		
	}

	@Override
	public void UserSetUser_pw(MypageDTO dto) {
		sqlSession.selectOne("userinfo.UserSetUser_pw",dto);
		
	}

	@Override
	public void UserSetUser_introduce(MypageDTO dto) {
		sqlSession.selectOne("userinfo.UserSetUser_introduce",dto);
		
	}

	@Override
	public int UserPoint(MypageDTO dto) {
		return sqlSession.selectOne("userinfo.UserPoint",dto);
	}

	@Override
	public void UserDelete(String userid) {
		sqlSession.selectOne("userinfo.UserDelete",userid);
	}	

//	마이페이지 게시글
	public List<BoardDTO> myRequestlist(MyWriterListDTO dto, int start, int end) {
		Map<String, Object> map = new HashMap<>();
		map.put("Post_writer", dto.getPost_writer());
		map.put("start", start);
		map.put("end", end);
		
		return sqlSession.selectList("userinfo.myWriterlist", map);
	}

	@Override
	public List<BoardDTO> myCommentlist(MyCommentListDTO dto,  int start, int end) {
		Map<String, Object> map = new HashMap<>();
		map.put("Comment_writer", dto.getComment_writer());
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("userinfo.myCommentlist", map);
	}

	@Override
	public int count(MyWriterListDTO dto) {
		// TODO Auto-generated method stub
	
		return sqlSession.selectOne("userinfo.count" , dto );
	}
	//마이페이지 댓글 
	@Override
	public int commentCount(MyCommentListDTO dto) {
		return sqlSession.selectOne("userinfo.commentCount" ,dto);
	}

//	@Override
//	public void insert(MypageDTO dto) {
//		sqlSession.insert("userinfo.insert" ,dto);
//		
//	}

	@Override
	public void updateUserPhoto(MypageDTO dto) {
		sqlSession.update("userinfo.updateUserPhoto" ,dto);
	}

	@Override
	public String UserPhotoView(MypageDTO dto) {
		return sqlSession.selectOne("userinfo.UserPhotoView",dto);
	}

	@Override
	public void UserContactSet(MypageDTO dto) {
		sqlSession.selectOne("userinfo.UserContactSet",dto);
		
	}

	@Override
	public Map<String, Object> mypageUserinfo(String User_nickname) {
		return sqlSession.selectOne("userinfo.mypageUserinfo", User_nickname);
	}

	@Override
	public  Map<String, Object> teamnotmember_select(String User_nickname) {
		return sqlSession.selectOne("userinfo.teamnotmember_select", User_nickname);
	}

	@Override
	public void teamnotmember_delete(String User_nickname) {
		sqlSession.delete("userinfo.teamnotmember_delete", User_nickname);
	}
	@Override
	public void myBoardDelete(int no) {
		sqlSession.delete("userinfo.myBoardDelete", no);
		
	}

	@Override
	public void myCommentDelete(int no) {
		sqlSession.delete("userinfo.myCommentDelete", no);
		
	}



	@Override
	public int UserReq_cnt(MypageDTO dto) {
		return sqlSession.selectOne("userinfo.UserReq_cnt",dto);
	}
	@Override
	public int UserSol_cnt(MypageDTO dto) {
		return sqlSession.selectOne("userinfo.UserSol_cnt",dto);
	}
	@Override
	public int UserDrop_Req_cnt(MypageDTO dto) {
		return sqlSession.selectOne("userinfo.UserDrop_Req_cnt",dto);
	}
	@Override
	public int UserDrop_Sol_cnt(MypageDTO dto) {
		return sqlSession.selectOne("userinfo.UserDrop_Sol_cnt",dto);
	}



	@Override
	public void teamlogo(MypageDTO dto) {
		sqlSession.update("userinfo.teamlogo" ,dto);
	}



	@Override
	public String TeamPhotoView(MypageDTO dto) {
		return sqlSession.selectOne("userinfo.TeamPhotoView",dto);
	}



	@Override
	public List<TeamlistDTO> TeamPhotolist(MypageDTO dto) {
		return sqlSession.selectList("userinfo.TeamPhotolist",dto);
	}



	
	
	
	
	
	
}

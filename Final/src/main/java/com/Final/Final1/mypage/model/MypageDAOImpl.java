package com.Final.Final1.mypage.model;

import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;



@Repository
public class MypageDAOImpl implements MypageDAO {
	
	@Inject
	SqlSessionTemplate sqlSession;

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
	
	
	
	
	
	
	
}
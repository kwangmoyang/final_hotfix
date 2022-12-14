package com.Final.Final1.comm.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Final.Final1.comm.model.LoginDAO;
import com.Final.Final1.comm.model.LoginDTO;
import com.Final.Final1.comm.service.LoginService;
import com.Final.Final1.mypage.model.MypageDTO;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDAO loginDao;
	
	@Override
	public Map<String, Object> UserInfo_Chk(Map<String, Object> map) {
		
		return loginDao.UserInfo_Chk(map);
	}

	@Override
	public Map<String, Object> UserOnlyId_Chk(Map<String, Object> map) {
		return loginDao.UserOnlyId_Chk(map);
	}

	@Override
	public void Change_User_pw(Map<String, Object> map) {
		loginDao.Change_User_pw(map);
		
	}

	@Override
	public int Pw_Mistake_cnt(LoginDTO dto) {
		
		return loginDao.Pw_Mistake_cnt(dto);
	}
	
	@Override
	public int Pw_Mistake_cnt2(LoginDTO dto) {
		return loginDao.Pw_Mistake_cnt2(dto);
	}
	
	@Override
	public void Mistake_cnt_Up(LoginDTO dto) {
		loginDao.Mistake_cnt_Up(dto);
	}

	

	@Override
	public void Mistake_cnt_Up2(LoginDTO dto) {
		loginDao.Mistake_cnt_Up2(dto);	
	}

	@Override
	public Map<String, Object> User_nickname_Chk(Map<String, Object> map) {
		return loginDao.User_nickname_Chk(map);
	}

	@Override
	public String UserEmailinfo(MypageDTO dto) {
		return loginDao.UserEmailinfo(dto);	
	}

	@Override
	public String UserEmailAndIDinfo(MypageDTO dto) {
		return loginDao.UserEmailAndIDinfo(dto);	
	}

	@Override
	public void activeInsert(MypageDTO mydto) {
		loginDao.activeInsert(mydto);	
		
	}

	@Override
	public int idcheck(String hotID) {
		return loginDao.idcheck(hotID);
	}

	@Override
	public int nicknamecheck(String hotNick) {
		return loginDao.nicknamecheck(hotNick);
	}

}

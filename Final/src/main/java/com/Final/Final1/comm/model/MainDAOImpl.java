package com.Final.Final1.comm.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAOImpl implements MainDAO{

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;


    @Override
    public List<MainDTO> list() {
        // TODO Auto-generated method stub
        return sqlSessionTemplate.selectList("main.list");
    }

    @Override
    public List<MainDTO> listTeam() {
        return sqlSessionTemplate.selectList("main.teamlist");
    }

    @Override
    public List<MainDTO> listBoard() {
        return sqlSessionTemplate.selectList("main.boardlist");
    }

	@Override
	public List<MainDTO> listNotice() {
		return sqlSessionTemplate.selectList("main.noticelist");
	}


}











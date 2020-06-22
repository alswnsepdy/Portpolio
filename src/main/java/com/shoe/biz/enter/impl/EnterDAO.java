package com.shoe.biz.enter.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoe.biz.enter.EnterVO;

@Repository
public class EnterDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void enterProduct(EnterVO enterVO) {
		mybatis.insert("EnterDAO.enterProduct", enterVO);
	}
	
	public List<EnterVO> getEnterProductById(String id) {
		return mybatis.selectList("EnterDAO.getEnterProductById", id);
	}
}

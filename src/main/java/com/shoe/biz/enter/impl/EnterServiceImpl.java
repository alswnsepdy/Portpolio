package com.shoe.biz.enter.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoe.biz.enter.EnterService;
import com.shoe.biz.enter.EnterVO;

@Service("enterService")
public class EnterServiceImpl implements EnterService {
	@Autowired
	private EnterDAO enterDAO;
	@Override
	public void enterProduct(EnterVO enterVO) {
		enterDAO.enterProduct(enterVO);
	}
	@Override
	public List<EnterVO> getEnterProductById(String id) {
		return enterDAO.getEnterProductById(id);
	}
	@Override
	public List<EnterVO> getEnterList(EnterVO enterVO) {
		return enterDAO.getEnterList(enterVO);
	}
	@Override
	public void updateEnterCondition(EnterVO enterVO) {
		enterDAO.updateEnterCondition(enterVO);
	}
	@Override
	public void updateEnterConditionFail(EnterVO enterVO) {
		enterDAO.updateEnterConditionFail(enterVO);
	}

}

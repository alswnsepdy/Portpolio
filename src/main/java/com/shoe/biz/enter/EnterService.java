package com.shoe.biz.enter;

import java.util.List;

public interface EnterService {
	void enterProduct(EnterVO enterVO);
	
	List<EnterVO> getEnterProductById(String id);
	
	public List<EnterVO> getEnterList(EnterVO enterVO);
	
	public void updateEnterCondition(EnterVO enterVO);
	
	public void updateEnterConditionFail(EnterVO enterVO);
}

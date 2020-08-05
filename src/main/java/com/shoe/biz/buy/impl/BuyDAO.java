package com.shoe.biz.buy.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoe.biz.buy.BuyVO;

@Repository
public class BuyDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void buyProduct(BuyVO buyVO) {
		mybatis.insert("BuyDAO.buyProduct", buyVO);
	}
	
	public List<BuyVO> getbuyProductById(String id){
		return mybatis.selectList("BuyDAO.getbuyProductById", id);
	}
	
	public void deleteBuyProduct(int bseq) {
		mybatis.delete("BuyDAO.deleteBuyProduct", bseq);
	}
	
	public List<BuyVO> getBuyList(BuyVO buyVO){
		return mybatis.selectList("BuyDAO.getBuyList", buyVO);
	}
	public void updateBuyCondition(BuyVO buyVO) {
		mybatis.update("BuyDAO.updateBuyCondition", buyVO);
	}
}

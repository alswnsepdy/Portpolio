package com.shoe.biz.buy.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoe.biz.buy.BuyService;
import com.shoe.biz.buy.BuyVO;

@Service("buyService")
public class BuyServiceImpl implements BuyService {

	@Autowired
	private BuyDAO buyDAO;
	
	@Override
	public void buyProduct(BuyVO buyVO) {
		buyDAO.buyProduct(buyVO);
	}

	@Override
	public List<BuyVO> getbuyProductById(String id) {
		return buyDAO.getbuyProductById(id);
	}

	@Override
	public void deleteBuyProduct(int bseq) {
		buyDAO.deleteBuyProduct(bseq);
	}

	@Override
	public List<BuyVO> getBuyList(BuyVO buyVO) {
		return buyDAO.getBuyList(buyVO);
	}

	@Override
	public void updateBuyCondition(BuyVO buyVO) {
		buyDAO.updateBuyCondition(buyVO);
	}

}

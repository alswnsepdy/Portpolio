package com.shoe.biz.buy;

import java.util.List;

public interface BuyService {
	
	public void buyProduct(BuyVO buyVO);
	
	public List<BuyVO> getbuyProductById(String id);
	
	public void deleteBuyProduct(int bseq);
	
	public List<BuyVO> getBuyList(BuyVO buyVO);
	
	public void updateBuyCondition(BuyVO buyVO);
}

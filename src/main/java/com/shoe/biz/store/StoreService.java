package com.shoe.biz.store;

import java.util.List;

public interface StoreService {
	public StoreVO getStoreProduct(StoreVO vo);
	
	public List<StoreVO> getStoreList();
	
	public List<StoreVO> searchStoreList(StoreVO storeVO);
	
	public void insertStore(StoreVO storeVO);
	
	public void deleteStore(StoreVO storeVO);
	
	public List<StoreVO> getStoreProductByKind(String skind);
}

package com.shoe.biz.store;

import java.util.List;

public interface StoreService {
	public StoreVO getStoreProduct(StoreVO vo);
	
	public List<StoreVO> getStoreList(StoreVO storeVO);
	
	public void insertStore(StoreVO storeVO);
	
	public void deleteStore(StoreVO storeVO);
	
	public List<StoreVO> getStoreProductByKind(String skind);
	
	public List<StoreVO> searchedStoreList(StoreVO storeVO);

	public void updateStoreProduct(StoreVO storeVO);
	
	public void deleteStoreProduct(int sseq);
}

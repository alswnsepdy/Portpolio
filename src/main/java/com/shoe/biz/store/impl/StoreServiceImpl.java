package com.shoe.biz.store.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoe.biz.store.StoreService;
import com.shoe.biz.store.StoreVO;

@Service("StoreService")
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreDAO storeDAO;
	@Override
	public StoreVO getStoreProduct(StoreVO vo) {
		return storeDAO.getStoreProduct(vo);
	}

	@Override
	public List<StoreVO> getStoreList() {
		return storeDAO.getStoreList();
	}

	@Override
	public List<StoreVO> searchStoreList(StoreVO storeVO) {
		return storeDAO.searchStoreList(storeVO);
	}

	@Override
	public void insertStore(StoreVO storeVO) {
		storeDAO.insertStore(storeVO);
	}

	@Override
	public void deleteStore(StoreVO storeVO) {
		storeDAO.deleteStore(storeVO);
	}

	@Override
	public List<StoreVO> getStoreProductByKind(String skind) {
		return storeDAO.getStoreProductByKind(skind);
	}

}

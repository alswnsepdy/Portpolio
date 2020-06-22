package com.shoe.biz.store.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoe.biz.store.StoreVO;

@Repository
public class StoreDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public StoreVO getStoreProduct(StoreVO vo) {
		System.out.println("==> Mybatis로 getStoreProduct() 기능처리");
		
		return mybatis.selectOne("StoreDAO.getStoreProduct", vo);
		
	}
	
	public List<StoreVO> getStoreList(){
		System.out.println("==>Mybatis로 getStoreList() 기능처리");
		
		return mybatis.selectList("StoreDAO.getStoreList");
	}
	
	public List<StoreVO> searchStoreList(StoreVO storeVO){
		System.out.println("==>Mybatis로 searchStoreList() 기능처리");
		
		return mybatis.selectList("StoreDAO.searchStoreList", storeVO);
	}
	
	public void insertStore(StoreVO storeVO) {
		System.out.println("==> Mybatis로 insertStore() 기능처리");
		
		mybatis.insert("StoreDAO.insertStore", storeVO);
	}
	
	public void deleteStore(StoreVO storeVO) {
		System.out.println("==>Mybatis로 deleteStore() 기능처리");
		
		mybatis.delete("StoreDAO.deleteStore", storeVO);
	}
	
	public List<StoreVO> getStoreProductByKind(String skind){
		System.out.println("==>Mybatis로 getStoreProductByKind() 기능처리");
		
		return mybatis.selectList("StoreDAO.getStoreProductByKind", skind);
	}
}

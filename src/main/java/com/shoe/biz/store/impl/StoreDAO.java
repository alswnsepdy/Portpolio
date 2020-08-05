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
		System.out.println("==> Mybatis�� getStoreProduct() ���ó��");
		
		return mybatis.selectOne("StoreDAO.getStoreProduct", vo);
		
	}
	
	public List<StoreVO> getStoreList(StoreVO storeVO){
		System.out.println("==>Mybatis�� getStoreList() ���ó��");
		
		return mybatis.selectList("StoreDAO.getStoreList");
	}
	
	public void insertStore(StoreVO storeVO) {
		System.out.println("==> Mybatis�� insertStore() ���ó��");
		
		mybatis.insert("StoreDAO.insertStore", storeVO);
	}
	
	public void deleteStore(StoreVO storeVO) {
		System.out.println("==>Mybatis�� deleteStore() ���ó��");
		
		mybatis.delete("StoreDAO.deleteStore", storeVO);
	}
	
	public List<StoreVO> getStoreProductByKind(String skind){
		System.out.println("==>Mybatis�� getStoreProductByKind() ���ó��");
		
		return mybatis.selectList("StoreDAO.getStoreProductByKind", skind);
	}
	
	public List<StoreVO> searchedStoreList(StoreVO storeVO){
		System.out.println("store�˻� ���");
		
		return mybatis.selectList("StoreDAO.searchedStoreList", storeVO);
	}
	
	public void updateStoreProduct(StoreVO storeVO) {
		mybatis.update("StoreDAO.updateStoreProduct", storeVO);
	}
	
	public void deleteStoreProduct(int sseq) {
		mybatis.update("StoreDAO.deleteStoreProduct", sseq);
	}
}

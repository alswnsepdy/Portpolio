package com.shoe.biz.product.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoe.biz.product.ProductVO;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProductVO getProduct(ProductVO vo) {
		System.out.println("==> Mybatis로 getProduct() 기능 처리");
		return mybatis.selectOne("ProductDAO.getProduct", vo);
	}
	
	public List<ProductVO> getDropProductList(){
		System.out.println("==> Mybatis로 getDropProduct() 기능 처리");
		
		return mybatis.selectList("ProductDAO.getDropProductList");
	}
	
	public List<ProductVO> getRestockProductList(){
		System.out.println("==> Mybatis로 getRestockProductList() 기능처리");
		
		return mybatis.selectList("ProductDAO.getRestockProductList");
	}
	
	public List<ProductVO> searchedProductList(ProductVO productVO){
		System.out.println("==> Mybatis로 searchedProductList() 기능처리");
		
		return mybatis.selectList("ProductDAO.searchedProductList", productVO);
	}
	
	public void insertProduct(ProductVO productVO) {
		System.out.println("==>Mybatis로 insertProduct() 기능처리");
		
		mybatis.insert("ProductDAO.insertProduct", productVO);
	}
	
	public void deleteProduct(ProductVO productVO) {
		System.out.println("==> Mybatis로 deleteProduct() 기능처리");
		
		mybatis.delete("ProductDAO.deleteProduct", productVO);
		}
}

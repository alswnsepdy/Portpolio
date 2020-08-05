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
		System.out.println("==> Mybatis�� getProduct() ��� ó��");
		return mybatis.selectOne("ProductDAO.getProduct", vo);
	}
	
	public List<ProductVO> getDropProductList(){
		System.out.println("==> Mybatis�� getDropProduct() ��� ó��");
		
		return mybatis.selectList("ProductDAO.getDropProductList");
	}
	
	public List<ProductVO> getRestockProductList(){
		System.out.println("==> Mybatis�� getRestockProductList() ���ó��");
		
		return mybatis.selectList("ProductDAO.getRestockProductList");
	}
	
	public List<ProductVO> searchedProductList(ProductVO productVO){
		System.out.println("==> Mybatis�� searchedProductList() ���ó��");
		
		return mybatis.selectList("ProductDAO.searchedProductList", productVO);
	}
	
	public void insertProduct(ProductVO productVO) {
		System.out.println("==>Mybatis�� insertProduct() ���ó��");
		
		mybatis.insert("ProductDAO.insertProduct", productVO);
	}
	
	public void deleteProduct(ProductVO productVO) {
		System.out.println("==> Mybatis�� deleteProduct() ���ó��");
		
		mybatis.delete("ProductDAO.deleteProduct", productVO);
		}
	public void updateProduct(ProductVO productVO) {
		System.out.println("=> mybatis�� updateProduct() ���ó��");
		
		mybatis.update("ProductDAO.updateProduct", productVO);
	}
	
	public void endProduct(int pseq) {
		System.out.println("=> mybatis�� endProduct() ���ó��");
		
		mybatis.update("ProductDAO.endProduct", pseq);
	}
	
	public List<ProductVO> getEndProductList(ProductVO productVO){
		System.out.println("=>mybatis�� getEndProductList() ���ó��");
		return mybatis.selectList("ProductDAO.getEndProductList", productVO);
	}
}

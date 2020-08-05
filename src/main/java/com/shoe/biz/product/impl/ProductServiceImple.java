package com.shoe.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoe.biz.product.ProductService;
import com.shoe.biz.product.ProductVO;

@Service("ProductService")
public class ProductServiceImple implements ProductService{

	@Autowired
	ProductDAO productDAO;
	@Override
	public ProductVO getProduct(ProductVO vo) {
		return productDAO.getProduct(vo);
	}

	@Override
	public List<ProductVO> getDropProductList() {
		return productDAO.getDropProductList();
	}

	@Override
	public List<ProductVO> getRestockProductList() {
		return productDAO.getRestockProductList();
	}

	@Override
	public List<ProductVO> searchedProductList(ProductVO productVO) {
		return productDAO.searchedProductList(productVO);
	}

	@Override
	public void insertProduct(ProductVO productVO) {
		productDAO.insertProduct(productVO);
	}

	@Override
	public void deleteProduct(ProductVO productVO) {
		productDAO.deleteProduct(productVO);
	}

	@Override
	public void updateProduct(ProductVO productVO) {
		productDAO.updateProduct(productVO);
	}

	@Override
	public void endProduct(int pseq) {
		productDAO.endProduct(pseq);
	}

	@Override
	public List<ProductVO> getEndProductList(ProductVO productVO) {
		return productDAO.getEndProductList(productVO);
	}

}

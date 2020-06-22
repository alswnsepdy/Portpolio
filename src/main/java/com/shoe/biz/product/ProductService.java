package com.shoe.biz.product;

import java.util.List;

public interface ProductService {
	
	public ProductVO getProduct(ProductVO vo);
	
	public List<ProductVO> getDropProductList();
	
	public List<ProductVO> getRestockProductList();
	
	public List<ProductVO> searchedProductList(ProductVO productVO);

	//상품 추가 처리
	public void insertProduct(ProductVO productVO);
	
	public void deleteProduct(ProductVO productVO);
}

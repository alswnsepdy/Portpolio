package com.shoe.biz.product;

import java.util.List;

public interface ProductService {
	
	public ProductVO getProduct(ProductVO vo);
	
	public List<ProductVO> getDropProductList();
	
	public List<ProductVO> getRestockProductList();
	
	public List<ProductVO> searchedProductList(ProductVO productVO);

	//��ǰ �߰� ó��
	public void insertProduct(ProductVO productVO);
	
	public void deleteProduct(ProductVO productVO);
}

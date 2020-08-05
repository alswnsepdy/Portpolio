package com.shoe.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoe.biz.member.MemberService;
import com.shoe.biz.member.MemberVO;
import com.shoe.biz.product.ProductService;
import com.shoe.biz.product.ProductVO;
import com.shoe.biz.store.StoreService;
import com.shoe.biz.store.StoreVO;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@Autowired
	MemberService memberService;
	
	@Autowired
	StoreService storeService;
	
	// �˻� ��� ����
	@RequestMapping(value = "product_search_list")
	String getProductSearchList(Model model, ProductVO productVO,StoreVO storeVO,
			@RequestParam(value = "key", defaultValue = "") String key, @RequestParam(value="searchKind") String searchKind) {
		System.out.println(key);
		if(searchKind.equals("1")) {
		productVO.setPname(key);
		List<ProductVO> searchList = productService.searchedProductList(productVO);
		model.addAttribute("searchList", searchList);
		model.addAttribute("kind", 1);
		}else if(searchKind.equals("2")) {
			storeVO.setSname(key);
			List<StoreVO> searchList = storeService.searchedStoreList(storeVO);
			model.addAttribute("searchList", searchList);
			model.addAttribute("kind", 2);
		}
		
		model.addAttribute("key", key);
		return "page/searchList";
	}

	// ��� ��ǰ ������ ȭ�� ���
	@RequestMapping(value = "drop_page_detail")
	String getDropProductDetailView(Model model, ProductVO vo) {
		ProductVO dropProduct = productService.getProduct(vo);

		model.addAttribute("dropProduct", dropProduct);

		return "page/dropDetail";

	}

	// ��ǰ ���� ȭ�� ���
	@RequestMapping(value = "product_enter", method=RequestMethod.POST)
	String getProductEnterView(Model model, ProductVO vo, HttpSession session, MemberVO memberVO) {
		System.out.println("==>>>> ��ǰ ���� ȭ�� ���");
		ProductVO enterProduct = productService.getProduct(vo);
		
		model.addAttribute("enterProduct", enterProduct);
		
		System.out.println("==>����� ���� ���");
		memberVO = (MemberVO) session.getAttribute("loginUser");
		MemberVO member = memberService.getMember(memberVO);
		model.addAttribute("user", member);
		return "enter/productEnter";

	}
	
	@RequestMapping(value="product_enter", method=RequestMethod.GET)
	String getProductEnter(Model model, ProductVO productVO) {
		return "enter/productEnter";
	}
	
	//����� drop ��ǰ ���
	@RequestMapping(value="end_product")
	String getEndProductList(Model model, ProductVO productVO) {
		List<ProductVO> endProduct = productService.getEndProductList(productVO);
		
		model.addAttribute("endProduct", endProduct);
		
		return "page/endDropProduct";
	}
	
}
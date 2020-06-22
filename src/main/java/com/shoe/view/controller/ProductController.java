package com.shoe.view.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shoe.biz.member.MemberService;
import com.shoe.biz.member.MemberVO;
import com.shoe.biz.product.ProductService;
import com.shoe.biz.product.ProductVO;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@Autowired
	MemberService memberService;
	
	// �˻� ��� ����
	@RequestMapping(value = "product_search_list")
	String getProductSearchList(Model model, ProductVO productVO,
			@RequestParam(value = "key", defaultValue = "") String key) {
		System.out.println(key);
		productVO.setPname(key);
		List<ProductVO> searchList = productService.searchedProductList(productVO);
		model.addAttribute("searchList", searchList);
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
	
	//��ǰ ��� ȭ�� ���
	@RequestMapping(value="plus_product_form")
	String addProductView(Model model) {
		String kindList[] = {"DROP","RESTOCK"};
		model.addAttribute("kindList", kindList);
		return "page/addProduct";
	}

	//��ǰ ����� ���� ���ε� ó��
	@RequestMapping(value="plus_product_action", method = RequestMethod.POST)
	public String plusProductAction(@RequestParam(value="images", required = false) MultipartFile uploadFile,ProductVO productVO, HttpSession session) throws IOException{
		
		//MultipartFile uploadFile = productVO.getUploadFile();
		String fileName = "";
		if(!uploadFile.isEmpty()) {
			String root_path = session.getServletContext().getRealPath("WEB-INF/resources/images/");
			fileName = uploadFile.getOriginalFilename();
			try {
				File file = new File(root_path + fileName);
				uploadFile.transferTo(file);
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		productVO.setImage(fileName);
		productService.insertProduct(productVO);
		
		return "redirect:drop_page";
	}
	
	//��ǰ ���� ��� 
	@RequestMapping(value="delete_product")
	public String deleteProductAction(ProductVO productVO) {
		productService.deleteProduct(productVO);
		return "redirect:drop_page";
	}
}
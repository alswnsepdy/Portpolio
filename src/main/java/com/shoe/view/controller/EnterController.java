package com.shoe.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoe.biz.enter.EnterService;
import com.shoe.biz.enter.EnterVO;
import com.shoe.biz.member.MemberVO;
import com.shoe.biz.product.ProductService;
import com.shoe.biz.product.ProductVO;

@Controller
public class EnterController {

	@Autowired
	EnterService enterService;

	@Autowired
	ProductService productService;

	// 응모 내역 불러오기
	@RequestMapping(value = "enter_product")
	public String enterProduct(EnterVO enterVO, ProductVO productVO, HttpSession session, Model model, @RequestParam(value="psize") int psize) {
		System.out.println("====>응모 내역 불러오기");
		MemberVO user = (MemberVO) session.getAttribute("loginUser");
		ProductVO product = productService.getProduct(productVO);
		
		
		enterVO.setPsize(psize);
		enterVO.setId(user.getId());
		enterVO.setName(user.getName());
		enterVO.setPname(product.getPname());
		enterVO.setPrice(product.getPrice());
		enterVO.setPseq(product.getPseq());
		
		enterService.enterProduct(enterVO);
		System.out.println(enterVO);
		
		return "redirect:enter_product_view";
	}

	@RequestMapping(value = "enter_product_view")
	public String enterProductView(HttpSession session, Model model) {
		MemberVO user = (MemberVO) session.getAttribute("loginUser");
		
		List<EnterVO> enterList = enterService.getEnterProductById(user.getId());
		System.out.println(enterList);
		model.addAttribute("enterList", enterList);

		
		return "enter/myEnterList";
	}

}

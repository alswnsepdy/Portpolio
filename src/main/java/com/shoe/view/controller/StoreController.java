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
import com.shoe.biz.store.StoreService;
import com.shoe.biz.store.StoreVO;

@Controller
public class StoreController {

	@Autowired
	StoreService storeService;

	@Autowired
	MemberService memberService;
	
	//스토어 페이지 출력
	@RequestMapping(value="store_view", method=RequestMethod.POST)
	public String StoreView() {
		System.out.println("==>Store page");
		
	
		return "store/storeMain";
	}
	@RequestMapping(value="store_view", method=RequestMethod.GET)
	public String Store(Model model, @RequestParam(value="skind", defaultValue="0") String skind , StoreVO storeVO) {
		System.out.println("==>Store page");
		
		List<StoreVO> storeList;
		
		if(skind.equals("0")) {
			storeList = storeService.getStoreList(storeVO);
		}else {
			storeList = storeService.getStoreProductByKind(skind);
		}
		
		System.out.println(storeList);
		
		model.addAttribute("storeList", storeList);
		
		
		return "store/storeMain";
	}
	
	// 상품 디테일 페이지
	@RequestMapping(value="store_detail", method=RequestMethod.GET)
	public String StoreDetail(Model model, StoreVO storeVO, MemberVO memberVO, HttpSession session) {
		StoreVO product = storeService.getStoreProduct(storeVO);
		
		System.out.println(product);
		
		model.addAttribute("storeProduct", product);
	
		memberVO = (MemberVO) session.getAttribute("loginUser");
		MemberVO member = memberService.getMember(memberVO);
		model.addAttribute("user", member);
	
		return "store/storeDetail";
	}
	
	@RequestMapping(value="store_detail", method=RequestMethod.POST)
	public String StoreDetailView() {
		System.out.println("==>Store Detail Page");
		return "store/storeDetail";
	}

	
}

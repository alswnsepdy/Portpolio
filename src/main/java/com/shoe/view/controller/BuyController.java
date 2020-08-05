package com.shoe.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoe.biz.buy.BuyService;
import com.shoe.biz.buy.BuyVO;
import com.shoe.biz.member.MemberVO;
import com.shoe.biz.store.StoreService;
import com.shoe.biz.store.StoreVO;

@Controller
public class BuyController {

	@Autowired
	private BuyService buyService;

	@Autowired
	private StoreService storeService;

	// 구매내역 바로 가기
	@RequestMapping(value = "buy_list_view")
	public String buyList(Model model, HttpSession session, StoreVO storeVO) {
		MemberVO user = (MemberVO) session.getAttribute("loginUser");

		List<BuyVO> buyList = buyService.getbuyProductById(user.getId());
		
		model.addAttribute("buyList", buyList);

		return "buy/buyList";
	}

	// 상품 디테일 -> 구매 내역
	
	@RequestMapping(value = "buy_list", method = RequestMethod.GET)
	public String myBuyList(Model model, MemberVO memberVO, BuyVO buyVO, StoreVO storeVO, HttpSession session,
			@RequestParam(value = "pmethod") String pmethod, @RequestParam(value = "quantity") String quantity,
			@RequestParam(value = "ssize") String ssize) {

		return "redirect:buy_list";
	}


	@RequestMapping(value = "buy_list", method=RequestMethod.POST)
	public String myBuyListView(Model model, MemberVO memberVO, BuyVO buyVO, StoreVO storeVO, HttpSession session,
			@RequestParam(value = "pmethod") String pmethod, @RequestParam(value = "quantity") int quantity,
			@RequestParam(value = "ssize") String ssize) {

		System.out.println("====>구매 내역 불러오기");
		MemberVO user = (MemberVO) session.getAttribute("loginUser");
		StoreVO store = storeService.getStoreProduct(storeVO);
		List<StoreVO> storeProduct = storeService.getStoreList(storeVO);
		buyVO.setId(user.getId());
		buyVO.setName(user.getName());
		buyVO.setSname(store.getSname());
		buyVO.setSsize(ssize);
		buyVO.setSprice(store.getSprice());
		buyVO.setSseq(store.getSseq());
		buyVO.setPmethod(pmethod);
		buyVO.setQuantity(quantity);
		buyVO.setSimage(store.getSimage());
		
		buyService.buyProduct(buyVO);

		model.addAttribute("storeProduct", storeProduct);
		return "redirect:buy_list_view";
	}

	
	//상품 삭제 ㅎㅎ
	@RequestMapping(value="buy_delete")
	public String deleteBuy(@RequestParam(value="bseq") int[] bseq) {
		for(int i=0;i<bseq.length;i++) {
			buyService.deleteBuyProduct(bseq[i]);
		}
		return "redirect:buy_list_view";
	}
}

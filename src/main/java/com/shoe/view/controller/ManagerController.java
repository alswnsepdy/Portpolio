package com.shoe.view.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shoe.biz.buy.BuyService;
import com.shoe.biz.buy.BuyVO;
import com.shoe.biz.enter.EnterService;
import com.shoe.biz.enter.EnterVO;
import com.shoe.biz.product.ProductService;
import com.shoe.biz.product.ProductVO;
import com.shoe.biz.store.StoreService;
import com.shoe.biz.store.StoreVO;

@Controller
public class ManagerController {

	@Autowired
	private ProductService productService;

	@Autowired
	private StoreService storeService;

	@Autowired
	private EnterService enterService;

	@Autowired
	private BuyService buyService;
	// drop ��ǰ ��� ȭ�� ���
	@RequestMapping(value = "plus_product_form")
	String addProductView(Model model) {
		return "page/addProduct";
	}

	// drop ��ǰ ����� ���� ���ε� ó��
	@RequestMapping(value = "plus_product_action", method = RequestMethod.POST)
	public String plusProductAction(@RequestParam(value = "images", required = false) MultipartFile uploadFile,
			ProductVO productVO, HttpSession session) throws IOException {

		String fileName = "";
		if (!uploadFile.isEmpty()) {
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

	// store ��ǰ ��� ȭ�� ���
	@RequestMapping(value = "plus_store_product_form")
	String addDropProductView() {
		return "store/addStoreProduct";
	}

	// store ��ǰ ��� �� ���� ���ε� ó��
	@RequestMapping(value = "plus_store_product_action", method = RequestMethod.POST)
	public String plusStoreProductAction(@RequestParam(value = "images", required = false) MultipartFile uploadFile,
			StoreVO storeVO, HttpSession session) {
		String fileName = "";
		if (!uploadFile.isEmpty()) {
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
		storeVO.setSimage(fileName);
		storeService.insertStore(storeVO);

		return "redirect:store_view";
	}

	// drop update list ���
	@RequestMapping(value = "drop_update_list")
	public String dropUpdateList(Model model) {
		List<ProductVO> dropProductList = productService.getDropProductList();

		System.out.println(dropProductList);
		model.addAttribute("dropProductList", dropProductList);

		return "page/productList";

	}

	// drop ��ǰ ������Ʈ jsp ���
	@RequestMapping(value = "drop_update")
	public String dropUpdateView(Model model, ProductVO productVO) {
		ProductVO product = productService.getProduct(productVO);
		model.addAttribute("product", product);
		return "page/updateProduct";
	}

	@RequestMapping(value = "drop_update_action", method = RequestMethod.POST)
	public String dropUpdateAction(ProductVO productVO, @RequestParam(value = "price") int price,
			@RequestParam(value = "content") String content, @RequestParam(value = "startdate") Date startdate,
			@RequestParam(value = "enddate") Date enddate) {

		productVO.setPrice(price);
		productVO.setContent(content);
		productVO.setStartdate(startdate);
		productVO.setEnddate(enddate);

		productService.updateProduct(productVO);

		return "redirect:drop_update_list";
	}

	// drop �������� �ϱ�
	@RequestMapping(value = "end_enter")
	public String endEnterProduct(ProductVO productVO) {
		System.out.println(productVO);
		productService.endProduct(productVO.getPseq());
		return "redirect:drop_page";
	}

	// store ��ǰ update list
	@RequestMapping(value = "store_update_list")
	public String storeUpdateList(Model model, StoreVO storeVO) {
		List<StoreVO> storeProductList = storeService.getStoreList(storeVO);

		System.out.println(storeProductList);
		model.addAttribute("storeProductList", storeProductList);

		return "store/updateStoreList";

	}

	// store ��ǰ ������Ʈ jsp ���
	@RequestMapping(value = "store_update")
	public String storeUpdateView(Model model, StoreVO storeVO) {
		StoreVO store = storeService.getStoreProduct(storeVO);
		model.addAttribute("store", store);
		return "store/updateStoreProduct";
	}

	@RequestMapping(value = "store_update_action", method = RequestMethod.POST)
	public String storeUpdateAction(StoreVO storeVO, @RequestParam(value = "sprice") int sprice,
			@RequestParam(value = "scontent") String scontent) {

		storeVO.setSprice(sprice);
		storeVO.setScontent(scontent);

		storeService.updateStoreProduct(storeVO);

		return "redirect:store_update_list";
	}

	// drop �������� �ϱ�
	@RequestMapping(value = "delete_store")
	public String deleteStoreProduct(StoreVO storeVO) {
		storeService.deleteStoreProduct(storeVO.getSseq());
		;
		return "redirect:store_view";
	}

	// �� ENTER list ó��
	// enterList ���
	@RequestMapping(value = "enter_list")
	public String enterListView(Model model, EnterVO enterVO) {
		List<EnterVO> enterList = enterService.getEnterList(enterVO);

		model.addAttribute("enterList", enterList);
		return "enter/enterList";
	}

	// ��÷ ó��
	@RequestMapping(value = "enter_suc")
	public String enterSuccess(EnterVO enterVO, @RequestParam(value="eseq") int[] eseq) {
		for(int i=0;i<eseq.length;i++) {
			enterVO.setEseq(eseq[i]);
			enterService.updateEnterCondition(enterVO);
		}
		

		return "redirect:enter_list";
	}

	// ��÷ ó��
	@RequestMapping(value = "enter_fail")
	public String enterFail(EnterVO enterVO, @RequestParam(value="eseq") int[] eseq) {
		for(int i=0;i<eseq.length;i++) {
			enterVO.setEseq(eseq[i]);
			enterService.updateEnterConditionFail(enterVO);
		}
			
		return "redirect:enter_list";
	}

	//�� buy listó��
	//buyList ���
	@RequestMapping(value="buy_list_update")
	public String buyListView(Model model, BuyVO buyVO) {
		List<BuyVO> buyList = buyService.getBuyList(buyVO);
		
		model.addAttribute("buyList", buyList);
		
		return "buy/buyListUpdate";
	}
	
	// ���� ó��
		@RequestMapping(value = "buy_suc")
		public String enterSuccess(BuyVO buyVO, @RequestParam(value="bseq") int[] bseq) {
			for(int i=0;i<bseq.length;i++) {
				buyVO.setBseq(bseq[i]);
				buyService.updateBuyCondition(buyVO);
			}
			

			return "redirect:buy_list_update";
		}
}

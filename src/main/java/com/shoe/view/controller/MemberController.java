package com.shoe.view.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.shoe.biz.address.AddressVO;
import com.shoe.biz.member.MemberService;
import com.shoe.biz.member.MemberVO;
import com.shoe.biz.product.ProductService;
import com.shoe.biz.product.ProductVO;

@Controller
@SessionAttributes("loginUser")
public class MemberController {

	@Autowired
	ProductService productService;
	@Autowired
	MemberService memberService;

	// 회원가입 화면 출력
	@RequestMapping(value = "/join_form", method = RequestMethod.GET)
	public String joinView() {
		return "member/join";
	}

	// 회원가입 화면 출력
	@RequestMapping(value = "/join_form", method = RequestMethod.POST)
	public String joinForm() {
		return "member/join";
	}

	// 드롭 페이지 화면 출력
	@RequestMapping(value = "/drop_page", method = RequestMethod.GET)
	public String dropPageView(Model model) {
		System.out.println(">>>>>>>>>dropPageView()");
		List<ProductVO> dropProductList = productService.getDropProductList();

		//상품리스트 toString 출력
//		for (int i = 0; i < dropProductList.size(); i++) {
//			System.out.println(dropProductList.get(i));
//		}
		model.addAttribute("dropProductList", dropProductList);

		return "page/dropPage";
	}

	@RequestMapping(value = "/drop_page", method = RequestMethod.POST)
	public String dropPageForm() {
		return "page/dropPage";
	}

	@RequestMapping(value = "/id_check_form", method = RequestMethod.GET)
	public String idCheckView(@RequestParam(value = "id", defaultValue = "", required = false) String id, Model model) {
		model.addAttribute("id", id);

		return "member/idCheckForm";
	}

	@RequestMapping(value = "id_check_form", method = RequestMethod.POST)
	public String idCheckAction(@RequestParam(value = "id", defaultValue = "", required = false) String id,
			Model model) {
		MemberVO vo = new MemberVO();
		vo.setId(id);

		MemberVO user = memberService.getMember(vo);

		if (user != null) {
			model.addAttribute("message", 1);
		} else {
			model.addAttribute("message", -1);
		}

		model.addAttribute("id", id);

		return "member/idCheckForm";
	}

	@RequestMapping(value = "/id_check_confirmed", method = RequestMethod.GET)
	public String idCheckConfirmed(MemberVO vo, Model model) {
		model.addAttribute("reid", vo.getId());

		return "member/join";
	}

	// 회원가입 요청 처리
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinAction(@RequestParam(value = "addr1") String addr1, @RequestParam(value = "addr2") String addr2,
			MemberVO vo) {
		vo.setAddress(addr1 + addr2);
		memberService.insertMember(vo);

		return "index";
	}

	// 주소 찾기 jsp호출 (조인시)
	@RequestMapping(value = "/find_zip_num", method = RequestMethod.GET)
	public String findZipNumView() {
		return "member/findZipNum";
	}

	// 주소 찾기 기능
	@RequestMapping(value = "/find_zip_num", method = RequestMethod.POST)
	public String findZipNumAction(AddressVO vo, Model model) {
		System.out.println("동이름 = " + vo.getDong());
		List<AddressVO> addList = memberService.selectAddressByDong(vo);

		model.addAttribute("addressList", addList);

		return "member/findZipNum";
	}

	//주소 찾기 jsp호출(정보 변경시)
	// 주소 찾기 jsp호출
		@RequestMapping(value = "/find_zip", method = RequestMethod.GET)
		public String findZipView() {
			return "mypage/findZipNum";
		}

		// 주소 찾기 기능
		@RequestMapping(value = "/find_zip", method = RequestMethod.POST)
		public String findZipAction(AddressVO vo, Model model) {
			System.out.println("동이름 = " + vo.getDong());
			List<AddressVO> addList = memberService.selectAddressByDong(vo);

			model.addAttribute("addressList", addList);

			return "mypage/findZipNum";
		}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, Model model) {
		String result = "";

		MemberVO loginUser = memberService.getMember(vo);

		System.out.println("아이디 : " + vo.getId() + "비밀번호 : " + vo.getPwd());
		System.out.println(loginUser);
		if (loginUser != null) {
			if (!loginUser.getPwd().equals(vo.getPwd())) {
				result = "member/password_fail";
			} else {
				model.addAttribute("loginUser", loginUser);

				result = "redirect:drop_page";

			}

		} else {
			result = "member/login_fail";
		}
		return result;
	}

	// 로그아웃 기능
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutAction(SessionStatus session) {
		session.setComplete();
		return "index";
	}

	// 회원 정보 페이지 접속
	@RequestMapping(value = "/my_info", method = RequestMethod.POST)
	public String myInfoView(Model model, MemberVO memberVO, HttpSession session) {

		MemberVO user = (MemberVO) session.getAttribute("loginUser");

		model.addAttribute("user", user);
		System.out.println(user);
		return "mypage/myInfo";

	}

	@RequestMapping(value = "/my_info", method = RequestMethod.GET)
	public String myInfoViewChange(Model model, MemberVO memberVO, HttpSession session) {
		memberVO = (MemberVO) session.getAttribute("loginUser");
		
		if(memberVO == null) {
			model.addAttribute("message", "세션이 만료되어 로그인페이지로 이동합니다.");
			return "redirect:index";
		} else {
		MemberVO member = memberService.getMember(memberVO);
		model.addAttribute("user", member);
		return "mypage/myInfo";
		}

	}
	//회원정보 변경 페이지
	@RequestMapping(value = "/my_info_change", method = RequestMethod.POST)
	public String myInfoChangeView(Model model, MemberVO memberVO, HttpSession session) {

		MemberVO user = (MemberVO) session.getAttribute("loginUser");
		
		MemberVO member = memberService.getMember(user);
		model.addAttribute("user", member);

		return "mypage/myInfoChange";

	}

	@RequestMapping(value = "/my_info_change", method = RequestMethod.GET)
	public String myInfoChange(Model model, MemberVO memberVO, HttpSession session) {
		MemberVO user = (MemberVO) session.getAttribute("loginUser");
		model.addAttribute("user", user);
		System.out.println("사용자 정보 = "+user);
		
		return "mypage/myInfoChange";

	}

	// 유저 회원정보 변경
	@RequestMapping(value = "info_change", method = RequestMethod.POST)
	public String userInfoChange(@RequestParam(value="addr1") String addr1, @RequestParam(value="pwd") String pwd, @RequestParam(value="email") String email, Model model, MemberVO vo, HttpSession session) {
		
		
		vo.setAddress(addr1);
		vo.setPwd(pwd);
		vo.setEmail(email);
		
		memberService.updateMember(vo);

		return "redirect:my_info";
	}
	
}

package com.shoe.biz.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoe.biz.address.AddressVO;
import com.shoe.biz.member.MemberService;
import com.shoe.biz.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo.getId());
	}

	//id와 pwd를 확인하는 메소드 
	@Override
	public MemberVO loginMember(MemberVO vo) {
		return memberDAO.loginMember(vo);
	}

	@Override
	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
	}

	@Override
	public List<AddressVO> selectAddressByDong(AddressVO vo) {
		return memberDAO.selectAddressByDong(vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		memberDAO.updateMember(vo);
	}
	

}

package com.shoe.biz.member;

import java.util.List;

import com.shoe.biz.address.AddressVO;

public interface MemberService {
	MemberVO getMember(MemberVO vo);
	
	MemberVO loginMember(MemberVO vo);
	
	void insertMember(MemberVO vo);
	
	List<AddressVO> selectAddressByDong(AddressVO vo);
	
	void updateMember(MemberVO vo);
}

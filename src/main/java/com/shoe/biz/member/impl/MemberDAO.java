package com.shoe.biz.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoe.biz.address.AddressVO;
import com.shoe.biz.member.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public MemberVO getMember(String id) {
		System.out.println("===> mybatis로 getMember() 기능처리");
		System.out.println("id="+id);
		
		return mybatis.selectOne("MemberDAO.getMember", id);
	}
	
	public MemberVO loginMember(MemberVO vo) {
		System.out.println("===> mybatis로 loginMember() 기능처리");
	
		return mybatis.selectOne("MemberDAO.loginMember 기능처리");
	}
	
	public void insertMember(MemberVO vo) {
		System.out.println("===> mybatis로 inserMember() 기능처리");
		
		mybatis.insert("MemberDAO.insertMember", vo);
	}
	
	public List<AddressVO> selectAddressByDong(AddressVO vo){
		System.out.println("===> mybatis로 selectAddressByDong() 기능처리");
		
		return mybatis.selectList("MemberDAO.selectAddressByDong", vo);
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println("===> mybatis로  updateMemeber() 기능처리");
		
		mybatis.update("MemberDAO.updateMemberInfo", vo);
	}
}

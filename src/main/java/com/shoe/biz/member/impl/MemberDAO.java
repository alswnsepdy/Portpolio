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
		System.out.println("===> mybatis�� getMember() ���ó��");
		System.out.println("id="+id);
		
		return mybatis.selectOne("MemberDAO.getMember", id);
	}
	
	public MemberVO loginMember(MemberVO vo) {
		System.out.println("===> mybatis�� loginMember() ���ó��");
	
		return mybatis.selectOne("MemberDAO.loginMember ���ó��");
	}
	
	public void insertMember(MemberVO vo) {
		System.out.println("===> mybatis�� inserMember() ���ó��");
		
		mybatis.insert("MemberDAO.insertMember", vo);
	}
	
	public List<AddressVO> selectAddressByDong(AddressVO vo){
		System.out.println("===> mybatis�� selectAddressByDong() ���ó��");
		
		return mybatis.selectList("MemberDAO.selectAddressByDong", vo);
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println("===> mybatis��  updateMemeber() ���ó��");
		
		mybatis.update("MemberDAO.updateMemberInfo", vo);
	}
}

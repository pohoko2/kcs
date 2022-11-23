package com.fish.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fish.web.dao.MemberDAO;
import com.fish.web.domain.MemberVO;
import com.fish.web.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	
	// DB와 연결 (의존성 주입)
	@Autowired
    private MemberDAO mdao;

	// 회원 가입
	@Override
	public void InsertMember(MemberVO member) 
	{
		System.out.println("회원가입 동작 : MemberServiceImpl");
		if(member == null) 
		{
			return; // 반환처리
		}
		mdao.InsertMember(member);
	}
	
	// 회원 ID 중복체크 여부 확인
	@Override
	public int DupleIdCk(MemberVO member) 
	{
		System.out.println("회원 ID중복 체크 동작 : MemberServiceImpl");
		return mdao.DupleIdCk(member);
	}

	// 회원 로그인
	@Override
	public MemberVO Login(MemberVO member) 
	{
		System.out.println("회원 로그인 체크 동작 : MemberServiceImpl");	
		return mdao.Login(member);
	}
}

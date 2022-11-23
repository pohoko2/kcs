package com.fish.web.dao;

import com.fish.web.domain.MemberVO;

public interface MemberDAO 
 {

    public void InsertMember(MemberVO member); // 회원가입 
	public int DupleIdCk(MemberVO member); 	   // 회원 ID 중복 여부 체크
    public MemberVO Login(MemberVO member);	   // 회원 로그인    
    
 }

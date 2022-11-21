package com.fish.web.dao;

import com.fish.web.domain.MemberVO;

public interface MemberDAO 
 {

    public void InsertMember(MemberVO member); // 회원가입 메서드
	public int DupleIdCk(MemberVO member);   // 회원 ID 중복 여부 체크
    
    
 }

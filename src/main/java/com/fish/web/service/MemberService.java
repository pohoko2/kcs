package com.fish.web.service;

import com.fish.web.domain.MemberVO;

public interface MemberService 
{

	// 일반적으로는 DAO랑 같은 메서드명을 사용하여 일관성을 유지한다.
	 public void InsertMember(MemberVO member); // 회원가입 메서드
	 public int DupleIdCk(MemberVO member);   // 회원 ID 중복 여부 체크
		
}

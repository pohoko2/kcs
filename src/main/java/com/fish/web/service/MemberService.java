package com.fish.web.service;

import com.fish.web.domain.MemberVO;

public interface MemberService 
{

	// �Ϲ������δ� DAO�� ���� �޼������ ����Ͽ� �ϰ����� �����Ѵ�.
	 public void InsertMember(MemberVO member); // ȸ������ �޼���
	 public int DupleIdCk(MemberVO member);   // ȸ�� ID �ߺ� ���� üũ
		
}

package com.fish.web.dao;

import com.fish.web.domain.MemberVO;

public interface MemberDAO 
 {

    public void InsertMember(MemberVO member); // ȸ������ �޼���
	public int DupleIdCk(MemberVO member);   // ȸ�� ID �ߺ� ���� üũ
    
    
 }

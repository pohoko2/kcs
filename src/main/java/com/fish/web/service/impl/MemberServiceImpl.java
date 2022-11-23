package com.fish.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fish.web.dao.MemberDAO;
import com.fish.web.domain.MemberVO;
import com.fish.web.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	
	// DB�� ���� (������ ����)
	@Autowired
    private MemberDAO mdao;

	// ȸ�� ����
	@Override
	public void InsertMember(MemberVO member) 
	{
		System.out.println("ȸ������ ���� : MemberServiceImpl");
		if(member == null) 
		{
			return; // ��ȯó��
		}
		mdao.InsertMember(member);
	}
	
	// ȸ�� ID �ߺ�üũ ���� Ȯ��
	@Override
	public int DupleIdCk(MemberVO member) 
	{
		System.out.println("ȸ�� ID�ߺ� üũ ���� : MemberServiceImpl");
		return mdao.DupleIdCk(member);
	}

	// ȸ�� �α���
	@Override
	public MemberVO Login(MemberVO member) 
	{
		System.out.println("ȸ�� �α��� üũ ���� : MemberServiceImpl");	
		return mdao.Login(member);
	}
}

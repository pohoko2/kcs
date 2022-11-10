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
	public void InsertMember(MemberVO member) {
		System.out.println("회원가입 동작");
		if(member == null) {
			return; // 반환처리
		}
		mdao.InsertMember(member);
	}
	
	
}

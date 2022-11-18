package com.fish.web.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fish.web.domain.MemberVO;
import com.fish.web.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController 
{

	// ���� ó�� ��ü�� ����(DI)
	@Autowired
	private MemberService service;
	
	// �н����� ��ȣȭ ����(DI)
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// MemberController Ŭ���� ���� �α׸� ���
	private static final Logger I = LoggerFactory.getLogger(MemberController.class);
		
	// ȸ������ ó�� ����
	// http://localhost:8088/member/signup
	
	//ȸ������ ������ �̵�
	@RequestMapping(value="signup", method=RequestMethod.GET)
	public void Register_Move() 
	{
		I.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> ȸ������ �Է������� �̵�");
	}
	
	// ȸ������
	@RequestMapping(value="/member/signup", method = RequestMethod.POST)
	public String Register_Action(MemberVO member) throws Exception 
	{
		I.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> ȸ������ ����");
			
		// 2. �н����� ��ȣȭ (Spring Security ���̺귯���� �̿���)
		// ���� ����Ʈ : https://nahosung.tistory.com/75
		String inputPass = member.getMemberPw();
		String pass = passwordEncoder.encode(inputPass);
		member.setMemberPw(pass);		
		
		// 3.ȸ������ ���� ����
		service.InsertMember(member);
		I.info("ȸ������ ó������ POST");
					
		return "";	
	}	
}
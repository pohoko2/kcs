package com.fish.web.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fish.web.domain.MemberVO;
import com.fish.web.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	// ���� ó�� ��ü�� ����(DI)
	@Autowired
	private MemberService service;
	
	private static final Logger I = LoggerFactory.getLogger(MemberController.class);
		
	// ȸ������ ó�� ����
	// http://localhost:8088/member/signup
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String InsertGET() throws Exception {
		I.info("ȸ������ �Է������� GET");
		return "";		
	}
	
	
	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String InsertPOST(MemberVO member) throws Exception {
		
		// 1.�ѱ�ó�� : request��ü�� ���� => web.xml���� filter�±׷� ���ڵ� �صξ���.
		
		// 2.���޵� �Ķ���Ͱ� �ޱ�
		// request.getParameter��� ���尴ü�� ����. ���� �޼����� �Ű������� ���� �����ü��ִ�.
	    I.info("Log" + member);

	    // 3.���񽺰�ü ����(�����������ϰ� ��������)
	    // 3-2.���񽺰�ü ȣ��
	    
	    service.InsertMember(member);
		I.info("ȸ������ ó�������� POST");
		
	    // 4. �α����������� �̵�
		return "redirect:/member/login";
	
	}
	
}

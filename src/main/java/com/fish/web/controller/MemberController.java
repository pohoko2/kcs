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
	
	
	//ȸ������ ������ �̵�
	@RequestMapping(value="signup", method=RequestMethod.GET)
	public void JoinGET() {
		I.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> ȸ������ �Է������� �̵�");
	}
	
	// ȸ������
	@RequestMapping(value="/member/signup", method = RequestMethod.POST)
	public String Register_Action(MemberVO member) throws Exception {
		
		// 1.�ѱ�ó�� : request��ü�� ���� => web.xml���� filter�±׷� ���ڵ� �صξ���.
		
		I.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> ȸ������ ����");
		
			
			// 2.ȸ������ ���� ����
			service.InsertMember(member);
			I.info("ȸ������ ó������ POST");
		
		
		return "";	
	}	
}

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

	// 서비스 처리 객체를 주입(DI)
	@Autowired
	private MemberService service;
	
	private static final Logger I = LoggerFactory.getLogger(MemberController.class);
		
	// 회원가입 처리 동작
	// http://localhost:8088/member/signup
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String InsertGET() throws Exception {
		I.info("회원가입 입력페이지 GET");
		return "";		
	}
	
	
	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public String InsertPOST(MemberVO member) throws Exception {
		
		// 1.한글처리 : request객체가 없다 => web.xml에서 filter태그로 인코딩 해두었다.
		
		// 2.전달된 파라미터값 받기
		// request.getParameter라는 내장객체가 없다. 따라서 메서드의 매개변수를 통해 가져올수있다.
	    I.info("Log" + member);

	    // 3.서비스객체 생성(직접생성안하고 의존주입)
	    // 3-2.서비스객체 호출
	    
	    service.InsertMember(member);
		I.info("회원가입 처리페이지 POST");
		
	    // 4. 로그인페이지로 이동
		return "redirect:/member/login";
	
	}
	
}

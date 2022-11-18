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

	// 서비스 처리 객체를 주입(DI)
	@Autowired
	private MemberService service;
	
	// 패스워드 암호화 주입(DI)
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// MemberController 클래스 내의 로그를 출력
	private static final Logger I = LoggerFactory.getLogger(MemberController.class);
		
	// 회원가입 처리 동작
	// http://localhost:8088/member/signup
	
	//회원가입 페이지 이동
	@RequestMapping(value="signup", method=RequestMethod.GET)
	public void Register_Move() 
	{
		I.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> 회원가입 입력페이지 이동");
	}
	
	// 회원가입
	@RequestMapping(value="/member/signup", method = RequestMethod.POST)
	public String Register_Action(MemberVO member) throws Exception 
	{
		I.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> 회원가입 진입");
			
		// 2. 패스워드 암호화 (Spring Security 라이브러리를 이용함)
		// 참고 사이트 : https://nahosung.tistory.com/75
		String inputPass = member.getMemberPw();
		String pass = passwordEncoder.encode(inputPass);
		member.setMemberPw(pass);		
		
		// 3.회원가입 서비스 실행
		service.InsertMember(member);
		I.info("회원가입 처리성공 POST");
					
		return "";	
	}	
}
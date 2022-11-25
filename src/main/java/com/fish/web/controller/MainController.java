package com.fish.web.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController 
{

	// MainController 클래스 내의 로그를 출력.
		private static final Logger I = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String Main_Move() 
	{
		I.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>> 메인 페이지 이동");
		return "index";
	}
	
}

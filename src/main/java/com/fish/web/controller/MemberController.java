package com.fish.web.controller;



import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fish.web.domain.MemberVO;
import com.fish.web.service.MemberService;

import net.sf.json.JSONObject;

/**
 * @author kcs
 * @since 2022.11.21
 * 
 * 회원가입 및 회원 중복 ID 확인.
 * 주석은 위에서 아래로 해석
 */

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
	
	// 회원 ID 중복체크 ajax 컨트롤러.
	@RequestMapping(value="/MemberIdCk", method = RequestMethod.POST)
	// Map->JSON 변환 후 처리하기 위해 @ResponseBody 어노테이션 선언
	@ResponseBody
	// HTTP Body안에 JSON 처리를 위해 RequestBody 요청처리, JSON 데이터 반환 처리를 위해 HttpServletResponse, Model 사용
	public String MemberDupleIdCk(@RequestBody String filterJSON, HttpServletResponse response, Model mo) throws Exception 
	{   // JSONObject는 JSON형태의 데이터를 관리해주는 메서드이다. JSON 데이터를 담기위해 jsonmap 객체 생성
		// 참고 사이트 : https://interconnection.tistory.com/137
		JSONObject jsonmap = new JSONObject();
		try
		{
		// ObjectMapper 메서드를 활용하여 "JSON" -> "Java Object" 전환
		 ObjectMapper mapper = new ObjectMapper();
		 MemberVO member = (MemberVO) mapper.readValue(filterJSON, new TypeReference<MemberVO>() {});
				 
		 // 멤버ID 조회 Select 쿼리 실행값 "memberIdCk"에 반환
		 int idCnt = service.DupleIdCk(member);
		 
		 // ajax, data:json 에 담을 파라미터값
		 jsonmap.put("res", "ok");
		 jsonmap.put("idCnt", idCnt);
		 
		} 
		catch (Exception e) 
		{
		 System.out.println(e.toString());
		 jsonmap.put("res", "error");
		}
		
		// 로그 한글 변환 처리 후 출력 
		response.setContentType("text/html); charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonmap);
		return null;
	}
}
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
 * ȸ������ �� ȸ�� �ߺ� ID Ȯ��.
 * �ּ��� ������ �Ʒ��� �ؼ�
 */

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
	
	// ȸ�� ID �ߺ�üũ ajax ��Ʈ�ѷ�.
	@RequestMapping(value="/MemberIdCk", method = RequestMethod.POST)
	// Map->JSON ��ȯ �� ó���ϱ� ���� @ResponseBody ������̼� ����
	@ResponseBody
	// HTTP Body�ȿ� JSON ó���� ���� RequestBody ��ûó��, JSON ������ ��ȯ ó���� ���� HttpServletResponse, Model ���
	public String MemberDupleIdCk(@RequestBody String filterJSON, HttpServletResponse response, Model mo) throws Exception 
	{   // JSONObject�� JSON������ �����͸� �������ִ� �޼����̴�. JSON �����͸� ������� jsonmap ��ü ����
		// ���� ����Ʈ : https://interconnection.tistory.com/137
		JSONObject jsonmap = new JSONObject();
		try
		{
		// ObjectMapper �޼��带 Ȱ���Ͽ� "JSON" -> "Java Object" ��ȯ
		 ObjectMapper mapper = new ObjectMapper();
		 MemberVO member = (MemberVO) mapper.readValue(filterJSON, new TypeReference<MemberVO>() {});
				 
		 // ���ID ��ȸ Select ���� ���ప "memberIdCk"�� ��ȯ
		 int idCnt = service.DupleIdCk(member);
		 
		 // ajax, data:json �� ���� �Ķ���Ͱ�
		 jsonmap.put("res", "ok");
		 jsonmap.put("idCnt", idCnt);
		 
		} 
		catch (Exception e) 
		{
		 System.out.println(e.toString());
		 jsonmap.put("res", "error");
		}
		
		// �α� �ѱ� ��ȯ ó�� �� ��� 
		response.setContentType("text/html); charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonmap);
		return null;
	}
}
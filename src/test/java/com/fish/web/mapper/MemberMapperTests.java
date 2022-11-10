package com.fish.web.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fish.web.dao.MemberDAO;
import com.fish.web.domain.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MemberMapperTests {
	
	
    @Autowired
	private MemberDAO memberdao;  
	
	@Test								// 회원가입 쿼리 테스트
	public void memberJoin() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setMemberId("test");       //회원 ID
		member.setMemberPw("0000");       //회원 PW
		member.setMemberName("test");     //회원 닉네임
		member.setMemberMail("test");     //회원 이메일
		member.setMemberHP(0000);         //회원 핸드폰번호
		
		
		memberdao.InsertMember(member);  //쿼리 메서드 실행
	}
	

}

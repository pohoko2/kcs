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
	
	@Test								// ȸ������ ���� �׽�Ʈ
	public void memberJoin() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setMemberId("test");       //ȸ�� ID
		member.setMemberPw("0000");       //ȸ�� PW
		member.setMemberName("test");     //ȸ�� �г���
		member.setMemberMail("test");     //ȸ�� �̸���
		member.setMemberHP(0000);         //ȸ�� �ڵ�����ȣ
		
		
		memberdao.InsertMember(member);  //���� �޼��� ����
	}
	

}

package com.fish.web.dao.impl;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fish.web.dao.MemberDAO;
import com.fish.web.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	// DB���� (xml���� ������� ��ü�� ������ ����ϰ����� =���� ����)
	@Inject
	private SqlSessionTemplate sqlSession; // mapper��ġ���� ���ٰ��� but mapper�� �������ϼ� ����=>mapper �����ʿ�
	
	// mapper �����ϴ� �� namespace
    private static final String namespace = "com.fish.web.dao.impl";
    
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// ȸ�����Ա��� -> Member-Mapper.xml 
	@Override
	public void InsertMember(MemberVO member) {
		sqlSession.insert(namespace +".InsertMember", member);	
	}
	
	
  	
}

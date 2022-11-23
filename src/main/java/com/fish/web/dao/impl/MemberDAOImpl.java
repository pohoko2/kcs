package com.fish.web.dao.impl;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fish.web.dao.MemberDAO;
import com.fish.web.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO 
{

	// DB연결 (xml에서 만들어진 객체를 가져다 사용하고자함 =의존 주입)
	@Inject
	private SqlSessionTemplate sqlSession; // mapper위치까지 접근가능 but mapper가 여러개일수 있음=>mapper 구분필요
	
	// mapper 구분하는 값 namespace
    private static final String namespace = "com.fish.web.dao.impl";
    
	
	public void setSqlSession(SqlSessionTemplate sqlSession) 
	{
		this.sqlSession = sqlSession;
	}
	
	// 회원가입구현 -> Member-Mapper.xml -> ID="InsertMember"
	@Override
	public void InsertMember(MemberVO member) 
	{
		sqlSession.insert(namespace + ".InsertMember", member);	
	}
	
	// 회원 ID 중복 체크 -> Member-Mapper.xml -> ID="MemberIdCk"
	@Override
	public int DupleIdCk(MemberVO member) 
	{
		return sqlSession.selectOne(namespace + ".DupleIdCk", member);
	}

	// 회원 로그인 -> Member-Mapper.xml -> ID="Login"
	@Override
	public MemberVO Login(MemberVO member) {
		return sqlSession.selectOne(namespace + ".Login", member);	
		 
	}
}

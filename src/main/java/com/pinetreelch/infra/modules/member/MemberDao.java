package com.pinetreelch.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject									
	@Resource(name = "sqlSession")				
	private SqlSession sqlSession;				
	
	private static String namespace = "com.pinetreelch.infra.modules.member.MemberMapper";
	
	
	public List<Member> selectList(MemberVo vo){				 
		
		
		return sqlSession.selectList(namespace + ".selectList", vo); 
	}
	
	public Member selectOne(MemberVo vo) {
		
		return sqlSession.selectOne(namespace + ".selectOne", vo); 
	}
	
	public int selectOne1(Member dto) {
		
		System.out.println("one1");
		return sqlSession.selectOne(namespace + ".selectOne1", dto); 
	}
	
	
	public Member selectOneForLogin(Member dto) {
		
		
		return sqlSession.selectOne(namespace + ".selectOneForLogin", dto); 
	}
	
	public  int insert(Member dto) {
		
		int result = sqlSession.insert(namespace + ".insert", dto); 
		return result;
	}
}

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
	
	public List<Member> selectwishlist(Member dto){				 
		
		return sqlSession.selectList(namespace + ".selectwishlist", dto); 
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
	
	
	public  int insert123(Member dto) {
		
		int result = sqlSession.insert(namespace + ".insert123", dto); 
		return result;
	}
	
	public void update(Member dto) {
		sqlSession.update(namespace + ".update", dto); 
	}
	
//	uploaded
	public int insertUploaded(Member dto) { 
		return sqlSession.insert(namespace + ".insertUploaded", dto); 
		}
	
	public Member selectOneMember(Member dto) {
		
		return sqlSession.selectOne(namespace + ".selectOneMember", dto); 
	}
}

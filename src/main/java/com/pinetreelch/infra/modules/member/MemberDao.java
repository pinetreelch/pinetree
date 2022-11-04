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
	
	public List<Member> selectAuthor(Member dto){				 
		
		return sqlSession.selectList(namespace + ".selectAuthor", dto); 
	}
	
	public List<Member> selectcart(Member dto){				 
		
		return sqlSession.selectList(namespace + ".selectcart", dto); 
	}
	

	public Member cartcheck(Member dto) {
		
		return sqlSession.selectOne(namespace + ".cartcheck", dto); 
	}
	
	public int cartinsert(Member dto) {
		
		return sqlSession.insert(namespace + ".cartinsert", dto); 
	}
	
	public int cartdelete(Member dto) {
		
		return sqlSession.delete(namespace + ".cartdelete", dto); 
	}

	public Member selectOne(MemberVo vo) {
		
		return sqlSession.selectOne(namespace + ".selectOne", vo); 
	}
	
	public Member kakaocheck(Member dto) {
		
		return sqlSession.selectOne(namespace + ".kakaocheck", dto); 
	}
	
	public Member kakaoSelect(Member dto) {
		
		return sqlSession.selectOne(namespace + ".kakaoSelect", dto); 
	}
	
	public int selectOne1(Member dto) {
		
		System.out.println("one1");
		return sqlSession.selectOne(namespace + ".selectOne1", dto); 
	}
	
	public List<Member> wishlistcheck(Member dto) {
		
		return sqlSession.selectList(namespace + ".wishlistcheck", dto); 
	}
	
	public Member selectOneForLogin(Member dto) {
		
		
		return sqlSession.selectOne(namespace + ".selectOneForLogin", dto); 
	}
	
	public  int insert(Member dto) {
		
		int result = sqlSession.insert(namespace + ".insert", dto); 
		return result;
	}
	
	public  int insertwishlist(Member dto) {
		
		int result = sqlSession.insert(namespace + ".insertwishlist", dto); 
		return result;
	}
	
	public  int deleteWishlist(Member dto) {
		
		int result = sqlSession.delete(namespace + ".deleteWishlist", dto); 
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

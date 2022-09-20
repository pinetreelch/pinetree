package com.pinetreelch.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.pinetreelch.infra.modules.codegroup.CodeGroup;

@Repository
public class CodeDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.pinetreelch.infra.modules.code.CodeMapper";
	
	public List<Code> selectList(){ 
		return sqlSession.selectList(namespace + ".selectList", ""); 		//mybatis의 sqlsession이라는 객체의 함수를 이용할건데 그 함수는 우리가 Maaper사용한 쿼리문이다.
		}
	
	public List<Code> selectcode(){ 
		return sqlSession.selectList(namespace + ".selectcode", "");
		}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace+".insert", dto );
		System.out.println("dao result: "+ result);
		return result;
	}
	
	public Code selectOne(CodeVo vo) {
		Code result = sqlSession.selectOne(namespace+".selectOne", vo );
		System.out.println("dao result: "+ result);
		return result;
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null);
		}
	
}

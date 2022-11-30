package com.pinetreelch.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.pinetreelch.infra.modules.code.Code;

@Repository
public class CodeGroupDao {
	@Inject										//Autowired랑 같은 개념
	@Resource(name = "sqlSession")				//원래는 필요없지만, 나중에 시스템 하나에 DB여러개 붙일때, name= 연결된 DB이름; 만약 oracle같은 db랑 연결할때 그 연결된 db에 대한 명칭
	private SqlSession sqlSession;				// sql기능들이 있음, sql list, sql insert, sql delete; ->이 객체가 있는게 mabatis;
	
	@Inject										
	@Resource(name = "sqlSessionOracle")				
	private SqlSession sqlSessionOracle;				
	
	private static String namespace = "com.pinetreelch.infra.modules.codegroup.CodeGroupMapper";
		
	public List<CodeGroup> selectList(CodeGroupVo vo){					// List<>라는건 향상된 배열인데 CodeGroup이라는 객체를 넣을거라는것; CodeGroup이라는 dto를 넣는데 변수명은 selectList로 하겠다 라는 것. 
		// public List<CodeGroup> selectList(CodeGroupVo vo) {return sqlsession.selectList("com.pinetreelch.infra.modules.codegroup.CodeGroupMapper.selectList", vo)}
		return sqlSession.selectList(namespace + ".selectList", vo); 
		
	} // selectList라는 쿼리를 찾아가라는 명령, 이 함수가 중요, vo는 검색조건 쿼리도 같이 밀어넣으라는 것; 이 함수의 return값이 list;
	
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace+".insert", dto );
		System.out.println("dao result11: "+ result);
		return result;
	}
	
	public List<CodeGroup> selectList(){				 
		// public List<CodeGroup> selectList(CodeGroupVo vo) {return sqlsession.selectList("com.pinetreelch.infra.modules.codegroup.CodeGroupMapper.selectList", vo)}
		return sqlSession.selectList(namespace + ".selectList", ""); 
	}
	
	public List<CodeGroup> testOracle(CodeGroupVo vo){				 
		
		return sqlSessionOracle.selectList(namespace + ".testOracle", vo); 
	}
	
	public CodeGroup selectOne(CodeGroupVo vo){
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result22: " + result);
		return result;
	}
	
	public int update (CodeGroup dto) {
		System.out.println("실행확인?");
		int result = sqlSession.update(namespace + ".update", dto);
		return result;
	}
	
	public int delete (CodeGroupVo vo) {
		System.out.println("실행확인?");
		int result = sqlSession.update(namespace + ".delete", vo);
		return result;
	}
	
	public int updateUse (CodeGroupVo vo) {
		System.out.println("실행확인?");
		int result = sqlSession.update(namespace + ".updateUse", vo);
		return result;
	}
	
	public int selectOneCount (CodeGroupVo vo) {
		System.out.println("실행확인?");
		int result = sqlSession.selectOne(namespace + ".selectOneCount", vo);
		System.out.println("돌아오니?");
		return result;
	}
	
//	for cache
	public List<CodeGroup> selectListCachedCodeArrayList(){ 
		return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null);
		}
}

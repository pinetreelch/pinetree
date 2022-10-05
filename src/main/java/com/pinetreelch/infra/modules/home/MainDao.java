package com.pinetreelch.infra.modules.home;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MainDao {
	
	@Inject									
	@Resource(name = "sqlSession")				
	private SqlSession sqlSession;	
	
	private static String namespace = "com.pinetreelch.infra.modules.home.MainMapper";
	
	
	public List<Main> selectList(){				 
		return sqlSession.selectList(namespace + ".selectList"); 
	}
	
	public List<Main> selectList1(){
		System.out.println("???????????????????????????????????");
		return sqlSession.selectList(namespace + ".selectList1"); 
	}
	
	public List<Main> selectBook(){				 
		return sqlSession.selectList(namespace + ".selectBook"); 
	}
	
	public List<Main> selectRandom(){				 
		return sqlSession.selectList(namespace + ".selectRandom"); 
	}
	
	public List<Main> selectRandomTwo(){				 
		return sqlSession.selectList(namespace + ".selectRandomTwo"); 
	}
}

package com.pinetreelch.infra.modules.home;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.pinetreelch.infra.modules.member.Member;


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
	
	public Main selectOne(Main dto){				 
		return sqlSession.selectOne(namespace + ".selectOne", dto); 
	}
	public Main selectOneAuthor(Main dto){				 
		return sqlSession.selectOne(namespace + ".selectOneAuthor", dto); 
	}
	
	public List<Main> selectOneBook(Main dto){				 
		return sqlSession.selectList(namespace + ".selectOneBook", dto); 
	}
	
	public List<Main> selectListAuthor(Main dto){				 
		return sqlSession.selectList(namespace + ".selectListAuthor", dto); 
	}
	
	
	public List<Main> selectListTranslator(Main dto){				 
		return sqlSession.selectList(namespace + ".selectListTranslator", dto); 
	}
	public List<Main> selectBooks(Main dto){				 
		return sqlSession.selectList(namespace + ".selectBooks", dto); 
	}
	
	public int insertbuy(Main dto){				 
		return sqlSession.insert(namespace + ".insertbuy", dto); 
	}
	
	public List<Member> selectPurchased(Member dto){				 
		return sqlSession.selectList(namespace + ".selectPurchased", dto); 
	}
}

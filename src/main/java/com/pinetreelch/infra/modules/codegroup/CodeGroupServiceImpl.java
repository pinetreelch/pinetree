package com.pinetreelch.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	@Autowired
	CodeGroupDao dao;				//autowired라는 new연산자를 통해 dao라는 객체를 만들어 놓음; 
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		
		List<CodeGroup> list = dao.selectList(vo); //vo가 붙어있음; 서비스가 dao 함수 호출하는데 파라미터로 vo가 있으니 넣어준것임; 
		return list;
		
	// @Override
	// public List<CodeGroup> selectList(CodeGroupVo vo)throws Exception {
	// return dao.selectList(vo);
	//}
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result123: " + result);
		return result;
	}
	
	@Override
	public List<CodeGroup> selectList() throws Exception {
		List<CodeGroup> list = dao.selectList(); 
		return list;
	}
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception{
		CodeGroup result = dao.selectOne(vo);
		System.out.println("service result456: " + result);
		return result;
	}
	
	@Override
	public int update(CodeGroup dto) throws Exception {
		System.out.println("리턴완료 impl");
		
		int result = dao.update(dto);
		return result;
	}
	
	@Override
	public int delete(CodeGroupVo vo) throws Exception {
		System.out.println("리턴완료 impl");
		
		int result = dao.delete(vo);
		return result;
	}
	
	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		System.out.println("리턴완료 impl");
		
		int result = dao.selectOneCount(vo);
		return result;
	}
}

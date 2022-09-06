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
		System.out.println("service result: " + result);
		return result;
	}
}

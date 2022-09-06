package com.pinetreelch.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pinetreelch.infra.modules.codegroup.CodeGroup;

@Service
public class CodeServiceImpl implements CodeService {
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList() throws Exception {
		return dao.selectList();
	}
	
	@Override
	public List<Code> selectcode() throws Exception {
		return dao.selectcode();
	}
	
	@Override
	public int insert(Code dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
}

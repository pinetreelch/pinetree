package com.pinetreelch.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public List<Code> selectcode() throws Exception {
		return dao.selectcode();
	}
	
	@Override
	public int delete(Code dto) throws Exception {
		return dao.delete(dto);
	}
	
	@Override
	public int updateUse(Code dto) throws Exception {
		return dao.updateUse(dto);
	}
	
	
	@Override
	public int insert(Code dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Code dto) throws Exception{
		int result = dao.update(dto);
		
		return result;
	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception{
		Code result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();						//codeListFromDb에 담아라;
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();			
		Code.cachedCodeArrayList.clear(); 																		// Code파일에 있는 cachedCodArrayList를 데이터 담기전에 치워라
		Code.cachedCodeArrayList.addAll(codeListFromDb);														// 
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<Code> selectListCachedCode(String cSeq) throws Exception {
		List<Code> rt = new ArrayList<Code>();																	// rt 라는 리스트생성;
		
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getcSeq().equals(cSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	// 여기부터
	public static List<Code> selectListCachedCode() throws Exception {
		List<Code> rt = Code.cachedCodeArrayList;
	
		return rt;
	}
	//여기까지 테스트 
	
	
	public static String selectOneCachedCode(int code) throws Exception {
		
		String rt = "";
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCgSeq().equals(Integer.toString(code))) {
				rt = codeRow.getCdName();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
}



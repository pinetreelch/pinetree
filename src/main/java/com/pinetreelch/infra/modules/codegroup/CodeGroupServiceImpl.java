package com.pinetreelch.infra.modules.codegroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	@Autowired
	CodeGroupDao dao;				//autowired라는 new연산자를 통해 dao라는 객체를 만들어 놓음; 
	
	@PostConstruct					// 서버 시작할 떄 실행하게 하는 코드;
	public void selectListCachedCodeArrayList() throws Exception {
		List<CodeGroup> codeListFromDb = (ArrayList<CodeGroup>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		CodeGroup.cachedCodeArrayList.clear(); 
		CodeGroup.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + CodeGroup.cachedCodeArrayList.size() + " chached !");
		
		
	}
	
	public static List<CodeGroup> selectListCachedCode(String cgSeq) throws Exception {
		
		System.out.println("dd@@@@@@@@");
		List<CodeGroup> rt = new ArrayList<CodeGroup>();
		for(CodeGroup codeRow : CodeGroup.cachedCodeArrayList) {
			if (codeRow.getCgSeq().equals(cgSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static String selectOneCachedCode(int codeGroup) throws Exception {
		System.out.println("xx@@@@@@@@@");
		String rt = "";
		for(CodeGroup codeRow : CodeGroup.cachedCodeArrayList) {
			if (codeRow.getCgSeq().equals(Integer.toString(codeGroup))) {
				rt = codeRow.getCgName();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		CodeGroup.cachedCodeArrayList.clear();
	}
	
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
	public List<CodeGroup> testOracle(CodeGroupVo vo) throws Exception {
		
		List<CodeGroup> list = dao.testOracle(vo); //vo가 붙어있음; 서비스가 dao 함수 호출하는데 파라미터로 vo가 있으니 넣어준것임; 
		return list;
		
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
	public int updateUse(CodeGroupVo vo) throws Exception {
		System.out.println("리턴완료 impl");
		
		int result = dao.updateUse(vo);
		return result;
	}
	
	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		System.out.println("리턴완료 impl");
		
		int result = dao.selectOneCount(vo);
		return result;
	}
}

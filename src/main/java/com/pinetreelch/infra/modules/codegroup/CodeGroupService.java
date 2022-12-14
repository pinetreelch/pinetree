package com.pinetreelch.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception;
	public List<CodeGroup> testOracle(CodeGroupVo vo) throws Exception;
	public List<CodeGroup> selectList() throws Exception;
	public int insert(CodeGroup dto) throws Exception;
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception;
	public int update(CodeGroup dto) throws Exception;
	public int delete(CodeGroupVo vo) throws Exception;
	public int updateUse(CodeGroupVo vo) throws Exception;
	public int selectOneCount(CodeGroupVo vo) throws Exception;
}

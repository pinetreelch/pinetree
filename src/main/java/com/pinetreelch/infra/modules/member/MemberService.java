package com.pinetreelch.infra.modules.member;

import java.util.List;


public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int selectOne1(Member dto) throws Exception;
	public Member selectOneForLogin(Member dto) throws Exception;
	public  void insert(Member dto) throws Exception;
	public  void insert123(Member dto) throws Exception;
}

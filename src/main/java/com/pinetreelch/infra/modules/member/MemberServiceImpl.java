package com.pinetreelch.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception{
		
		List<Member> result = dao.selectList(vo);
		
		return result;
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception{
		Member result = dao.selectOne(vo);
		
		return result;
	}
	
	@Override
	public Member selectOne1(MemberVo vo) throws Exception{
		Member result = dao.selectOne1(vo);
		
		return result;
	}
}

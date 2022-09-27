package com.pinetreelch.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pinetreelch.infra.common.util.UtilSecurity;

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
	public int selectOne1(Member dto) throws Exception{
		int result = dao.selectOne1(dto);
		
		return result;
	}
	
	@Override
	public Member selectOneForLogin(Member dto) throws Exception{
		
		dto.setIfmmPwd(UtilSecurity.encryptSha256(dto.getIfmmPwd()));
		Member result = dao.selectOneForLogin(dto);
		
		return result;
	}
	
	@Override
	public void insert(Member dto) throws Exception{
		
		dto.setIfmmPwd(UtilSecurity.encryptSha256(dto.getIfmmPwd()));		
		dao.insert(dto);		
	}
}

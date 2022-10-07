package com.pinetreelch.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	MainDao dao;
	
	@Override
	public List<Main> selectList() throws Exception{
		
		List<Main> result = dao.selectList();
		
		return result;
	}
	
	@Override
	public List<Main> selectList1() throws Exception{
		
		List<Main> result = dao.selectList1();
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		return result;
	}
	
	@Override
	public List<Main> selectBook() throws Exception{
		
		List<Main> result = dao.selectBook();
		
		return result;
	}
	
	@Override
	public List<Main> selectRandom() throws Exception{
		
		List<Main> result = dao.selectRandom();
		
		return result;
	}
	
	@Override
	public List<Main> selectRandomTwo() throws Exception{
		
		List<Main> result = dao.selectRandomTwo();
		
		return result;
	}
	
	@Override
	public Main selectOne(Main dto) throws Exception{
		
		Main result = dao.selectOne(dto);
		
		return result;
	}
	
	@Override
	public List<Main> selectListAuthor(Main dto) throws Exception{
		
		List<Main> result = dao.selectListAuthor(dto);
		
		return result;
	}
	
	
	@Override
	public List<Main> selectListTranslator(Main dto) throws Exception{
		
		List<Main> result = dao.selectListTranslator(dto);
		
		return result;
	}
}

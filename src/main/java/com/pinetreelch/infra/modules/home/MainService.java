package com.pinetreelch.infra.modules.home;

import java.util.List;

import com.pinetreelch.infra.modules.member.Member;


public interface MainService {
	
	public void setRegMod(Main dto) throws Exception;
	
	public List<Main> selectList() throws Exception;
	public List<Main> selectList1() throws Exception;
	public List<Main> selectBook() throws Exception;
	public List<Main> selectRandom() throws Exception;
	public List<Main> selectRandomTwo() throws Exception;
	public Main selectOne(Main dto) throws Exception;
	public Main bookOne(Main dto) throws Exception;
	public Main selectOneAuthor(Main dto) throws Exception;
	public List<Member> selectPurchased(Member dto) throws Exception; 
	public List<Main> selectOneBook(Main dto) throws Exception;
	public List<Main> selectListAuthor(Main dto) throws Exception;
	public List<Main> selectListTranslator(Main dto) throws Exception;
	public List<Main> selectBooks(Main dto) throws Exception;
	public List<Main> selectAllBook() throws Exception;
	public int insertbuy(Main dto) throws Exception;
	public int bookUpdate(Main dto) throws Exception;
	public int bookInsert(Main dto) throws Exception;
}

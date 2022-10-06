package com.pinetreelch.infra.modules.home;

import java.util.List;


public interface MainService {
	public List<Main> selectList() throws Exception;
	public List<Main> selectList1() throws Exception;
	public List<Main> selectBook() throws Exception;
	public List<Main> selectRandom() throws Exception;
	public List<Main> selectRandomTwo() throws Exception;
	public Main selectOne(Main dto) throws Exception;
}

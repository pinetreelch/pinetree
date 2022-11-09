package com.pinetreelch.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.pinetreelch.infra.common.util.UtilDateTime;
import com.pinetreelch.infra.common.util.UtilSecurity;
import com.pinetreelch.infra.common.util.UtilUpload;
import com.pinetreelch.infra.common.util.Utiluuid;


@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public void setRegMod(Member dto) throws Exception {				
		dto.setModDateTime(UtilDateTime.nowDate());
		dto.setOrderuuid(Utiluuid.uuidmake());
	}
	
	@Override
	public int buyInsert(Member dto) throws Exception{
		
		setRegMod(dto);
	
		return dao.buyInsert(dto);
	}
	
	@Override
	public Member buyResultOne(Member dto) throws Exception{
		

		return dao.buyResultOne(dto);
	}
	
	@Override
	public List<Member> buyResultBook(Member dto) throws Exception{
		
		
		return dao.buyResultBook(dto);
	}
	
	@Override
	public List<Member> buyResult(Member dto) throws Exception{
		
		
		return dao.buyResult(dto);
	}
	
	@Override
	public List<Member> buydetailList(Member dto) throws Exception{
		
		
		return dao.buydetailList(dto);
	}
	
	@Override
	public int buydetailInsert(Member dto) throws Exception{

		return dao.buydetailInsert(dto);
	}
	
	@Override
	public int cartdeleteAll(Member dto) throws Exception{
		
		return dao.cartdeleteAll(dto);
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception{
		
		List<Member> result = dao.selectList(vo);
		
		return result;
	}
	
	@Override
	public List<Member> selectwishlist(Member dto) throws Exception{
		
		List<Member> result = dao.selectwishlist(dto);
		
		return result;
	}
	
	
	@Override
	public List<Member> selectcart(Member dto) throws Exception{
		
		List<Member> result = dao.selectcart(dto);
		
		return result;
	}
	
	@Override
	public Member cartcheck(Member dto) throws Exception{
		Member result = dao.cartcheck(dto);
		
		return result;
	}
	
	@Override
	public int cartinsert(Member dto) throws Exception{
		int result = dao.cartinsert(dto);
		
		return result;
	}
	
	@Override
	public int cartdelete(Member dto) throws Exception{
		int result = dao.cartdelete(dto);
		
		return result;
	}
	
	@Override
	public List<Member> selectAuthor(Member dto) throws Exception{
		
		List<Member> result = dao.selectAuthor(dto);
		
		return result;
	}
	@Override
	public Member selectOne(MemberVo vo) throws Exception{
		Member result = dao.selectOne(vo);
		
		return result;
	}
	
	@Override
	public List<Member> wishlistcheck(Member dto) throws Exception{
		List<Member> result = dao.wishlistcheck(dto);
		
		return result;
	}
	
	@Override
	public int selectOne1(Member dto) throws Exception{
		int result = dao.selectOne1(dto);
		
		return result;
	}
	
	
	@Override
	public int deleteWishlist(Member dto) throws Exception{
		int result = dao.deleteWishlist(dto);
		
		return result;
	}
	
	@Override
	public Member selectOneForLogin(Member dto) throws Exception{
		
		dto.setIfmmPwd(UtilSecurity.encryptSha256(dto.getIfmmPwd()));
		Member result = dao.selectOneForLogin(dto);
		
		return result;
	}
	
	@Override
	public Member kakaocheck(Member dto) throws Exception{
				
		Member result = dao.kakaocheck(dto);
		
		return result;
	}
	
	@Override
	public Member kakaoSelect(Member dto) throws Exception{
				
		Member result = dao.kakaoSelect(dto);
		
		return result;
	}
	@Override
	public void insert(Member dto) throws Exception{
		
		dto.setIfmmPwd(UtilSecurity.encryptSha256(dto.getIfmmPwd()));		
		dao.insert(dto);		
	}
	
	@Override
	public void insertwishlist(Member dto) throws Exception{	
		dao.insertwishlist(dto);		
	}
	
	@Override
	public void update(Member dto) throws Exception{
		
		dto.setIfmmPwd(UtilSecurity.encryptSha256(dto.getIfmmPwd()));		
		dao.update(dto);		
	}
	
	@Override
	public void insert123(Member dto) throws Exception{
		
		int j=0;
		for(MultipartFile multipartFile : dto.getIfmmUploadedFile() ) {
    		
    		if(!multipartFile.isEmpty()) {	    		
    		
	    		String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");		
	    		UtilUpload.upload(multipartFile, pathModule, dto);
	    		
	    		dto.setTableName("memberUploaded");
	    		dto.setType(3);
	    		dto.setDefaultNy(j == 0 ? 1 : 0);
	    		dto.setSort(j + 1);
	    		dto.setPseq(dto.getIfmmSeq());
	    		
	    		dao.insertUploaded(dto);
	    		j++;
    		}
    	}			
		dao.insert123(dto);		
	}
	
	@Override
	public Member selectOneMember(Member dto) throws Exception{
		
		Member result = dao.selectOneMember(dto);
		
		return result;
	}
	
}

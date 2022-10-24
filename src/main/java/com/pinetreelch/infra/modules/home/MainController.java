package com.pinetreelch.infra.modules.home;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pinetreelch.infra.modules.member.Member;
import com.pinetreelch.infra.modules.member.MemberServiceImpl;


@Controller
@RequestMapping(value = "/main")
public class MainController {
	
	@Autowired
	MainServiceImpl service;
	
	@Autowired
	MemberServiceImpl service2;
	
	

	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
	
	
	@RequestMapping(value = "/")
	public String home(Main dto, Member dto2, Model model, HttpServletRequest hrequest) throws Exception {
		
		
		
		
		List<Main> result = service.selectList();
		List<Main> result2 = service.selectBook();
		List<Main> result3 = service.selectList1();
		List<Main> random = service.selectRandom(); 
		List<Main> randomTwo = service.selectRandomTwo();
		List<Member> cartlist = service2.selectcart(dto2);
		
		model.addAttribute("list", result);
		model.addAttribute("list2", result2);
		model.addAttribute("list3", result3);
		model.addAttribute("random", random);
		model.addAttribute("randomTwo", randomTwo);
		model.addAttribute("cartlist", cartlist);
		
		return "main/book/bookList";
	}
	
	@RequestMapping(value = "/bookView")
	public String bookView(Member dto2, Main dto, Model model) throws Exception {
		
		System.out.println("book sequence = "+ dto.getTdbkSeq());
		
		
		Main result = service.selectOne(dto);
		List<Main> result2 = service.selectListAuthor(dto);
		List<Main> result3 = service.selectListTranslator(dto);
		List<Member> cartlist = service2.selectcart(dto2);
		
		model.addAttribute("booklist",result);
		model.addAttribute("authorlist",result2);
		model.addAttribute("translatorlist",result3);
		model.addAttribute("cartlist", cartlist);
		
		return "main/book/bookView";
	}
	
	@RequestMapping(value = "/authorView")
	public String authorView(Main dto, Model model) throws Exception {
		
		System.out.println("authorView Page bookSeq =" + dto.getTdbkSeq());
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getTdbkathSeq());
		System.out.println("@@@!@@@#@##@323 ====== " + dto.getTradAuthor_tdatSeq());
		
		
		Main result = service.selectOneAuthor(dto);
		List<Main> result2 = service.selectListAuthor(dto);
		List<Main> result3 = service.selectListTranslator(dto);
		List<Main> result4 = service.selectBooks(dto);
		
		model.addAttribute("authorname",result);
		model.addAttribute("authorlist",result2);
		model.addAttribute("translatorlist",result3);
		model.addAttribute("booklist",result4);
		
		return "main/book/authorView";
	}
	
	@RequestMapping(value = "/purchaseView")
	public String purchaseView(Member dto2,Main dto, Model model) throws Exception {
		
		
		System.out.println(dto.getPagetype());
		
		if(dto.getPagetype() == 1) {
			System.out.println(dto.getTdbkSeq());
			List<Main> result = service.selectOneBook(dto);
			List<Main> result2 = service.selectListAuthor(dto);
			
			model.addAttribute("bookinfo",result);
			model.addAttribute("authorlist",result2);
		}
		
		if(dto.getPagetype() == 2) {
			System.out.println("dvdv");
			List<Main> result2 = service.selectListAuthor(dto);
			List<Member> result = service2.selectcart(dto2);

			model.addAttribute("bookinfo",result);
			model.addAttribute("authorlist",result2);
		}
		
		return "main/book/purchaseView";
	}
	
	@RequestMapping(value = "/purchasesuccess")
	public String purchasesuccess(Main dto) throws Exception {
		
		dto.getIfmmSeq();
		int result = service.insertbuy(dto);
		
		for(int i : dto.getCheckboxSeqArray()) {
			System.out.println(i);
		}
		
		return "main/book/purchaseSuccessView";
	}
	

}

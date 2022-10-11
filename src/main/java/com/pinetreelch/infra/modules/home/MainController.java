package com.pinetreelch.infra.modules.home;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pinetreelch.infra.modules.member.MemberServiceImpl;


@Controller
@RequestMapping(value = "/main")
public class MainController {
	
	@Autowired
	MainServiceImpl service;

	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
	@RequestMapping(value = "/")
	public String home(Main dto, Model model) throws Exception {
		
		List<Main> result = service.selectList();
		List<Main> result2 = service.selectBook();
		List<Main> result3 = service.selectList1();
		List<Main> random = service.selectRandom();
		List<Main> randomTwo = service.selectRandomTwo();
		
		model.addAttribute("list", result);
		model.addAttribute("list2", result2);
		model.addAttribute("list3", result3);
		model.addAttribute("random", random);
		model.addAttribute("randomTwo", randomTwo);
		
		
		return "main/book/bookList";
	}
	
	@RequestMapping(value = "/bookView")
	public String bookView(Main dto, Model model) throws Exception {
		
		System.out.println("book sequence = "+ dto.getTdbkSeq());
		
		
		Main result = service.selectOne(dto);
		List<Main> result2 = service.selectListAuthor(dto);
		List<Main> result3 = service.selectListTranslator(dto);
		
		model.addAttribute("booklist",result);
		model.addAttribute("authorlist",result2);
		model.addAttribute("translatorlist",result3);
		
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
	public String purchaseView(Main dto, Model model) throws Exception {
		
		System.out.println(dto.getTdbkSeq());
		
		Main result = service.selectOneBook(dto);
		
		model.addAttribute("bookinfo",result);
		
		return "main/book/purchaseView";
	}
	

}

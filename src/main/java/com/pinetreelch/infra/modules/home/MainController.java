package com.pinetreelch.infra.modules.home;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.method.annotation.RedirectAttributesMethodArgumentResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	
	@RequestMapping(value = "/bookUpdate")
	public String bookUpdate(Main dto, Member dto2, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.bookUpdate(dto);
		
		redirectAttributes.addFlashAttribute("dto",dto);
		
		return "redirect:/main/bookForm";
	}
	
	@RequestMapping(value = "/bookInsert")
	public String bookInsert(Main dto, Member dto2, Model model, RedirectAttributes redirectAttributes, MainVo vo) throws Exception {
		
		int result = service.bookInsert(dto);
				

//		System.out.println("tdbkSeq =====" + dto.getTdbkSeq());
		redirectAttributes.addFlashAttribute("dto",dto);
		
		return "redirect:/main/bookForm";
	}
	
	@RequestMapping(value = "/bookAdmin")
	public String bookAdmin(Main dto, Member dto2, Model model) throws Exception {
		
		List<Main> result = service.selectAllBook();		
		model.addAttribute("list", result);
		
		return "infra/book/xdmin/bookList";
	}
	
	@RequestMapping(value = "/bookForm")
	public String bookForm(@ModelAttribute("dto") Main dto, Member dto2, Model model) throws Exception {

		Main result = service.bookOne(dto);
		model.addAttribute("list",result);
		
		return "infra/book/xdmin/bookForm";
	}
	
	 
	@RequestMapping(value = "/")
	public String home(Main dto, Member dto2, Model model, HttpServletRequest hrequest) throws Exception {
		
		String str = getSessionSeqCore(hrequest);
		dto2.setIfmmSeq(str);
		
		
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
		List<Main> result4 = service.selectBook();
		List<Member> wishlist = service2.selectwishlist(dto2);
		
		model.addAttribute("booklist",result);
		model.addAttribute("authorlist",result2);
		model.addAttribute("translatorlist",result3);
		model.addAttribute("cartlist", cartlist);
		model.addAttribute("selectbooklist",result4);
		model.addAttribute("wishlist", wishlist);
		
		return "main/book/bookView";
	}
	
	@RequestMapping(value = "/authorView")
	public String authorView( Member dto2, Main dto, Model model) throws Exception {
		
		System.out.println("authorView Page bookSeq =" + dto.getTdbkSeq());
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + dto.getTdbkathSeq());
		System.out.println("@@@!@@@#@##@323 ====== " + dto.getTradAuthor_tdatSeq());
		
		
		Main result = service.selectOneAuthor(dto);
		List<Main> result2 = service.selectListAuthor(dto);
		List<Main> result3 = service.selectListTranslator(dto);
		List<Main> result4 = service.selectBooks(dto);
		List<Member> cartlist = service2.selectcart(dto2);
		
		model.addAttribute("authorname",result);
		model.addAttribute("authorlist",result2);
		model.addAttribute("translatorlist",result3);
		model.addAttribute("booklist",result4);
		model.addAttribute("cartlist", cartlist);
		
		return "main/book/authorView";
	}
	
	@RequestMapping(value = "/purchaseView")
	public String purchaseView(Member dto2,Main dto, Model model) throws Exception {
		
		
		System.out.println(dto.getPagetype());
		
		if(dto.getPagetype() == 1) {
			System.out.println(dto.getTdbkSeq());
			List<Main> result = service.selectOneBook(dto);
			List<Main> result2 = service.selectListAuthor(dto);
			List<Member> cartlist = service2.selectcart(dto2);
			
			model.addAttribute("bookinfo",result);
			model.addAttribute("authorlist",result2);
			model.addAttribute("cartlist", cartlist);
		}
		
		if(dto.getPagetype() == 2) {
			System.out.println("dvdv");
			List<Main> result2 = service.selectListAuthor(dto);
			List<Member> result = service2.selectcart(dto2);
			List<Member> cartlist = service2.selectcart(dto2);
			
			model.addAttribute("bookinfo",result);
			model.addAttribute("authorlist",result2);
			model.addAttribute("cartlist", cartlist);
		}
		
		return "main/book/purchaseView";
	}
	
	@RequestMapping(value = "/purchasesuccess")
	public String purchasesuccess(Main dto, Member dto2, Model model) throws Exception {
		
		System.out.println("purchasesuccess 실행 ");
		System.out.println(dto2.getBuy_buyinfoSeq());
		System.out.println(dto2.getIfmmSeq());
		
		List<Member> result = service.selectPurchased(dto2);
		
		model.addAttribute("orderlist" ,result);
		
		return "main/book/purchaseSuccessView";
	}
	
	
	@RequestMapping(value = "/chat")
	public String chat() throws Exception {
		
		
		return "test/chat";
	}
	
	

}

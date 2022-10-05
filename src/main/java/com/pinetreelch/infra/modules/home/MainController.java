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

}

package com.pinetreelch.infra.modules.home;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/main")
public class MainController {

	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
	@RequestMapping(value = "/")
	public String home() {
		
		
		
		return "main/book/bookList";
	}
	
	
	
}

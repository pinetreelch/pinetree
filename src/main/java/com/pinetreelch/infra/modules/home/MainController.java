package com.pinetreelch.infra.modules.home;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/main")
public class MainController {

	
	@RequestMapping(value = "/")
	public String home() {
		
		return "main/book/bookList";
	}
	
	
	
}

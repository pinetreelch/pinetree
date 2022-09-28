package com.pinetreelch.infra.modules.book;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/book")
public class BookController {

	
	@RequestMapping(value = "/bookview")
	public String bookdetail() {
		
		return "/main/book/bookView";
	}
	
	@RequestMapping(value = "/bookauthor")
	public String bookauthor() {
		
		return "book/bookauthor";
	}
}

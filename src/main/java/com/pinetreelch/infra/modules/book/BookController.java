package com.pinetreelch.infra.modules.book;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/book/")
public class BookController {

	
	@RequestMapping(value = "/bookdetail")
	public String bookdetail() {
		
		return "book/bookview";
	}
	
	@RequestMapping(value = "/bookauthor")
	public String bookauthor() {
		
		return "book/bookauthor";
	}
}

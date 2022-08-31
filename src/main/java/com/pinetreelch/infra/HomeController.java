package com.pinetreelch.infra;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	@RequestMapping(value = "/A", method = RequestMethod.GET)			// localhost:8080/A를 치면 views 밑 A.jsp파일을 불러오겠다라는 뜻;
	public String A(Locale locale, Model model) {
		
		return "A";
	}							
	
	@RequestMapping(value = "/B", method = RequestMethod.GET)
	public String B(Locale locale, Model model) {
		return "B";
	}
	
	@RequestMapping(value = "/C", method = RequestMethod.GET)
	public String C(Locale locale, Model model) {
		return "C";
	}
	
	@RequestMapping(value = "/D", method = RequestMethod.GET)
	public String D(Locale locale, Model model) {
		return "D";
	}
	
	@RequestMapping(value = "/E", method = RequestMethod.GET)
	public String E(Locale locale, Model model) {
		return "E";
	}
	
	@RequestMapping(value = "/codeGroupList", method = RequestMethod.GET)			// localhost:8080/A를 치면 views 밑 A.jsp파일을 불러오겠다라는 뜻;
	public String codegroup(Locale locale, Model model) {
		
		return "codeGroupList";
	}	
	
	@RequestMapping(value = "/codeGroupAdd", method = RequestMethod.GET)
	public String codeGroupAdd(Locale locale, Model model) {
		return "codeGroupAdd";
	}
	@RequestMapping(value = "/code", method = RequestMethod.GET)
	public String code(Locale locale, Model model) {
		return "code";
	}
	@RequestMapping(value = "/codeAdd", method = RequestMethod.GET)
	public String codeAdd(Locale locale, Model model) {
		return "codeAdd";
	}
}
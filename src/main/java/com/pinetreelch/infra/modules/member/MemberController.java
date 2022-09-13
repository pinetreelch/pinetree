package com.pinetreelch.infra.modules.member;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/login/")
public class MemberController {

	
	@RequestMapping(value = "/")
	public String login() {
		
		return "member/login";
	}
	
	@RequestMapping(value = "/signup1/")
	public String singgup1() {
		
		return "member/signuppageone";
	}
	
	@RequestMapping(value = "/signup2/")
	public String singgup2() {
		
		return "member/signuppagetwo";
	}
	
	@RequestMapping(value = "/signup3/")
	public String singgup3() {
		
		return "member/signuppagethree";
	}
}

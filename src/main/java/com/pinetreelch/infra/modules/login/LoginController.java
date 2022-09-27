package com.pinetreelch.infra.modules.login;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pinetreelch.infra.modules.member.Member;
import com.pinetreelch.infra.modules.member.MemberService;


@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	MemberService service12;
	
	@RequestMapping(value = "")
	public String login() {
		
		return "main/login/login";
	}
	
	@RequestMapping(value = "/signup1")
	public String signup1() {
		
		return "main/login/signuppageone";
	}
	
	@RequestMapping(value = "/signup2")
	public String signup2() {
		
		return "main/login/signuppagetwo";
	}
	
	
	
	

}

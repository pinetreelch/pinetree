package com.pinetreelch.infra.modules.login;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/login")
public class LoginController {

	
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

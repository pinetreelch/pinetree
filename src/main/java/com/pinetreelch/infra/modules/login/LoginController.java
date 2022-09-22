package com.pinetreelch.infra.modules.login;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/login")
public class LoginController {

	
	@RequestMapping(value = "")
	public String lgoin() {
		
		return "member/login";
	}
	
	
	
}

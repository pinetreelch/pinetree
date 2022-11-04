package com.pinetreelch.infra.modules.login;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pinetreelch.infra.modules.member.Member;
import com.pinetreelch.infra.modules.member.MemberService;


@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	@Autowired
	MemberService service12;
	
	@RequestMapping(value = "")
	public String login(Login dto) {
		
		System.out.println("loginpage실행 ");
		System.out.println("@@@@@ = "+ dto.getSiteadd());
		
		return "main/login/login";
	}
	
	@RequestMapping(value = "/signup1")
	public String signup1() {
		
		return "main/login/signuppageone";
	}
	
	@RequestMapping(value = "/signup2")
	public String signup2(Member dto2, Model model) {
		
		System.out.println(dto2.getIfmmId());		
		System.out.println(dto2.getIfmmName());		
		System.out.println(dto2.getIfmmEmail());	
		
		dto2.setIfmmId(dto2.getIfmmId());
		dto2.setIfmmName(dto2.getIfmmName());
		dto2.setIfmmEmail(dto2.getIfmmEmail());
		
		model.addAttribute("kakaoset",dto2);
	
		return "main/login/signuppagetwo";
	}
	
	
	
	

}

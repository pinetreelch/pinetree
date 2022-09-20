package com.pinetreelch.infra.modules.member;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/memberList")
	public String memberList(MemberVo vo, Model model) throws Exception {
		
		List<Member> result = service.selectList(vo);
		model.addAttribute("list", result);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "/memberForm")
	public String memberForm(MemberVo vo, Model model) throws Exception {
		
		System.out.println("!!!!!!!!!!!!=  " + vo.getIfmmSeq());
		
		Member result = service.selectOne(vo);
		model.addAttribute("list", result);
		
		return "infra/member/xdmin/memberForm";
	}
	
}

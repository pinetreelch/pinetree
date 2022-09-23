package com.pinetreelch.infra.modules.member;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


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
	
	@RequestMapping(value = "/testaction", method = { RequestMethod.POST })
	@ResponseBody
	public String testaction(@RequestParam("name1") String name1,@RequestParam("age1") String age1,@RequestParam(
	"gender1") String gender1, Member dto, MemberVo vo) throws Exception {
			
			System.out.println(name1);
	        System.out.println(age1);
	        System.out.println(gender1);
	        
			vo.setIdcheck(name1);
			
			Member result = service.selectOne1(vo);
			
			if(result == null) {
				System.out.println("null입니");
				return "1";
			}else {
				System.out.println("null 아니");
				return "2";
			}
	}
	
}

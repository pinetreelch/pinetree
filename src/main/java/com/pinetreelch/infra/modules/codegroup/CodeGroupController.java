package com.pinetreelch.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller										
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception { //jsp로 넘길때 model이라는 객체를 사용함.
		
		System.out.println("======================================");
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getshOption(): " + vo.getShOption());
		System.out.println("vo.getshUse(): " + vo.getShUse());
		
		List<CodeGroup> list = service.selectList(vo);  //서비스를 호출하는건데 autowired되어있음; 
		model.addAttribute("list", list);				//jsp에서 list란 이름으로 객체를 쓸 수 있게 됨; 
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
}

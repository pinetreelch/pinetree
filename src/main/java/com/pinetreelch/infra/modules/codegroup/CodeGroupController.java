package com.pinetreelch.infra.modules.codegroup;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller										
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, @ModelAttribute CodeGroupVo vo) throws Exception { //jsp로 넘길때 model이라는 객체를 사용함.
		
		System.out.println("======================================");
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getshOption(): " + vo.getShOption());
		System.out.println("vo.getshUse(): " + vo.getShUse());
		
		List<CodeGroup> list = service.selectList(vo);  //서비스를 호출하는건데 autowired되어있음; 
		model.addAttribute("list", list);				//jsp에서 list란 이름으로 객체를 쓸 수 있게 됨; 
		
		return "infra/codegroup/xdmin/codeGroupList2";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception {			//불러올 데이터가 없기에 비어있음 return받는 부분이 //업데이트는utdt, insert는 inst.
		
		return "infra/codegroup/xdmin/codeGroupForm2";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo) throws Exception{   //모델 객체 없음, jsp에 보낼일이 없으니까.
		
		int result = service.insert(vo);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";	
	}
	

	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception{
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("vo",vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupView2";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto) throws Exception{
		
		int result = service.update(vo);
		System.out.println(result);
	
		return "redirect: /codeGroup/codeGroupList";
	}
	
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo) throws Exception{
		
		int result = service.delete(vo);
		System.out.println(result);
			
		return "redirect: /codeGroup/codeGroupList";
	}
}

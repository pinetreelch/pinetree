package com.pinetreelch.infra.modules.codegroup;


import java.util.List;

import com.pinetreelch.infra.common.util.UtilDateTime;

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
	
	public void setSearchAndPagin(CodeGroupVo vo) throws Exception{
		
		vo.setShOptionDate( vo.getShOptionDate() == null ? 2 : vo.getShOptionDate() );
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));

		vo.setParamsPaging(service.selectOneCount(vo));
		} 

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, @ModelAttribute("vo") CodeGroupVo vo) throws Exception { //jsp로 넘길때 model이라는 객체를 사용함.
			
		setSearchAndPagin(vo);	
		
		System.out.println("======================================");
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getshOption(): " + vo.getShOption());
		System.out.println("vo.getshUse(): " + vo.getShUse());
				
		
		List<CodeGroup> list = service.selectList(vo);  //서비스를 호출하는건데 autowired되어있음; 
		model.addAttribute("list", list);				//jsp에서 list란 이름으로 객체를 쓸 수 있게 됨;
		
		
		
		return "infra/codegroup/xdmin/codeGroupList2";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm( @ModelAttribute("vo") CodeGroupVo vo, Model model)  throws Exception {			//불러올 데이터가 없기에 비어있음 return받는 부분이 //업데이트는 utdt, insert는 inst. 
																												//@ModelAttribute("vo")는 지금 vo에 있는것을 모델에 담아버리겠다고 선언한것. -> *다시 한번 검토해야함
		
		
		System.out.println("!!!!!!!!!!!!=  " + vo.getCgSeq());
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		
		return "infra/codegroup/xdmin/codeGroupForm2";
	}
	
	
	@RequestMapping(value = "codeGroupInst")					// !!여기 빈페이지임
	public String codeGroupInst(@ModelAttribute CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{   //모델 객체 없음, jsp에 보낼일이 없으니까. //RedirectAttributes redirectAttributes 받는부분에 추가; 그리고 내용에 redirectAttributes.addFlashAttribute("vo" ,vo);
		
		service.insert(dto);
		
		vo.setCgSeq( dto.getCgSeq() );
		
		System.out.println("?????????????? == "+ vo.getCgSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
			
		return "redirect:/codeGroup/codeGroupForm";						//redirect에서는 vo가 같이 안감;
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(@ModelAttribute CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		

		service.update(dto);
		
		vo.setCgSeq(dto.getCgSeq());
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ===========  " + vo.getCgSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);

	//	return "redirect: /codeGroup/codeGroupForm"; 여기 보면 공백있음 redirect: 랑 /codeGroup 사이에 이러면 에러남;; 에러 이유가 무엇일까
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo) throws Exception{
		
		int result = service.delete(vo);
		System.out.println(result);
			
		return "redirect: /codeGroup/codeGroupList";
	}
	
	
	 
}

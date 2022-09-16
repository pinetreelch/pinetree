package com.pinetreelch.infra.modules.codegroup;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pinetreelch.infra.common.util.UtilDateTime;


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
	public String codeGroupForm(@ModelAttribute CodeGroupVo vo, Model model)  throws Exception {			//불러올 데이터가 없기에 비어있음 return받는 부분이 //업데이트는utdt, insert는 inst.
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("vo", vo);
		
		return "infra/codegroup/xdmin/codeGroupForm2";
	}
	
	@SuppressWarnings(value= {"all"}) 							//안적어도됨
	@RequestMapping(value = "codeGroupInst")					// !!여기 빈페이지임
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{   //모델 객체 없음, jsp에 보낼일이 없으니까. //RedirectAttributes redirectAttributes 받는부분에 추가; 그리고 내용에 redirectAttributes.addFlashAttribute("vo" ,vo);
		
		int result = service.insert(dto);
		
		vo.setCgSeq(dto.getCgSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
			
		return "redirect:/codeGroup/codeGroupForm";						//redirect에서는 vo가 같이 안감;
	}
	

	
	/*
	 * @RequestMapping(value = "codeGroupView") public String
	 * codeGroupView(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws
	 * Exception{ CodeGroup result = service.selectOne(vo);
	 * model.addAttribute("vo",vo); model.addAttribute("item", result); return
	 * "infra/codegroup/xdmin/codeGroupView2"; }
	 */
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto) throws Exception{
		
		System.out.println("sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
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

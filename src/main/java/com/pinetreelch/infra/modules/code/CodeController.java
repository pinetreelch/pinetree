package com.pinetreelch.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pinetreelch.infra.modules.codegroup.CodeGroup;
import com.pinetreelch.infra.modules.codegroup.CodeGroupServiceImpl;
import com.pinetreelch.infra.modules.codegroup.CodeGroupVo;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	
	@Autowired
	CodeGroupServiceImpl service2;
	

	@RequestMapping(value = "codeList")
	public String codeList(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception {	// Model == 빈 바구니
		
		System.out.println("vo.getShOption() + "+vo.getShOption());
		System.out.println("vo.getShValue() + "+vo.getShValue());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		
		return "infra/code/xdmin/codeList2";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Code dto,  Model model, CodeGroupVo vo2) throws Exception {			//불러올 데이터가 없기에 비어있음 return받는 부분이 //업데이트는utdt, insert는 inst.
		
		Code result = service.selectOne(vo);
		
		List<CodeGroup> result2 = service2.selectList(vo2);
			
		model.addAttribute("item", result);
		model.addAttribute("codeGroupList",result2);
		
		return "infra/code/xdmin/codeForm2";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst( Code dto, RedirectAttributes redirectAttributes, CodeGroupVo vo2, @ModelAttribute CodeVo vo) throws Exception{   //모델 객체 없음, jsp에 보낼일이 없으니까.  //dto에 담겨있는것은???? 필드들?
		
		int result = service.insert(dto);
		
		vo.setcSeq(dto.getcSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeForm";	
	}
	
	@RequestMapping(value = "delete")
	public String codeList(Code dto) throws Exception {	// Model == 빈 바구니
		
		int result = service.delete(dto);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "update")
	public String update( Code dto, RedirectAttributes redirectAttributes, CodeGroupVo vo2, @ModelAttribute CodeVo vo) throws Exception{   //모델 객체 없음, jsp에 보낼일이 없으니까.  //dto에 담겨있는것은???? 필드들?
		
		int result = service.update(dto);
		
		vo.setcSeq(dto.getcSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		
		return "redirect:/code/codeForm";	
	}
}

package com.pinetreelch.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pinetreelch.infra.modules.codegroup.CodeGroup;
import com.pinetreelch.infra.modules.codegroup.CodeGroupServiceImpl;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	
	@Autowired
	CodeGroupServiceImpl service2;
	

	@RequestMapping(value = "codeList")
	public String codeList(Model model) throws Exception {	// Model == 빈 바구니

		List<Code> list = service.selectList();
		model.addAttribute("list", list);
		
		
		return "infra/code/xdmin/codeList2";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Code dto,  Model model) throws Exception {			//불러올 데이터가 없기에 비어있음 return받는 부분이 //업데이트는utdt, insert는 inst.
		
		Code result = service.selectOne(vo);
			
		model.addAttribute("item", result);
		
		return "infra/code/xdmin/codeForm2";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst( Code dto) throws Exception{   //모델 객체 없음, jsp에 보낼일이 없으니까.  //dto에 담겨있는것은???? 필드들?
		
		int result = service.insert(dto);
		
		
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeList";	
	}
}

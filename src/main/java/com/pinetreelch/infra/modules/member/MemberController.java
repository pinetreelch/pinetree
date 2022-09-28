package com.pinetreelch.infra.modules.member;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pinetreelch.infra.common.constants.Constants;


@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
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
	
	@RequestMapping(value = "/memberInst")
	public String memberIsnt(Member dto) throws Exception {
		
		System.out.println(dto.getIfmmId());
		System.out.println(dto.getIfmmPwd());
		service.insert(dto);
		
		return "main/login/login";
	}
	
	
//	@ResponseBody
//	@RequestMapping(value = "/testaction")
//	public String testaction(@RequestParam("name1") String name1,@RequestParam("age1") String age1,@RequestParam(
//	"gender1") String gender1, Member dto, MemberVo vo) throws Exception {
//			
//			System.out.println(name1);
//	        System.out.println(age1);
//	        System.out.println(gender1);
//	        
//			vo.setIdcheck(name1);
//			
//			Member result = service.selectOne1(vo);
//			
//			if(result == null) {
//				System.out.println("null입니");
//				return "1";
//			}else {
//				System.out.println("null 아니");
//				return "2";
//			}
//	}
	
	@ResponseBody
	@RequestMapping(value = "/testaction")
	public Map<String, Object> testaction(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOne1(dto);
		
		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		
		return returnMap;
		
	}
	
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value = "/logincheck")
	public Map<String, Object> logincheck(Member dto, HttpSession httpSession) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(dto.getIfmmPwd());
		Member result = service.selectOneForLogin(dto);
		System.out.println(result.getIfmmSeq());
		
		if (result == null) {

			returnMap.put("rt", "fail");
			
		} else {
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
			httpSession.setAttribute("sessSeq", result.getIfmmSeq());
			httpSession.setAttribute("sessId", result.getIfmmId());
			httpSession.setAttribute("sessName", result.getIfmmName());
			
			returnMap.put("rt", "success");
			returnMap.put("ifmmSeq", result.getIfmmSeq());
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	


}

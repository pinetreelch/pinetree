package com.pinetreelch.infra.modules.member;


import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping(value = "/purchaseDetail") 
	public String purchaseDetail(Member dto, Model model) throws Exception {
		
		Member buyResultOne = service.buyResultOne(dto);
		List<Member> buyResultBook = service.buyResultBook(dto);
		
		model.addAttribute("buyOneResult",buyResultOne);
		model.addAttribute("buyResultBook",buyResultBook);
		
		return "mypage/purchaseDetail";
	}
	
	@RequestMapping(value = "/purchaseHistory")
	public String purchaseHistory(Member dto, Model model) throws Exception {
		
		System.out.println(dto.getIfmmSeq());
		
		List<Member> buyResult = service.buyResult(dto);
		List<Member> buydetailList = service.buydetailList(dto);

		model.addAttribute("buyResult",buyResult);
		model.addAttribute("buydetailList",buydetailList);
		
		return "mypage/purchaseHistory";
	}
	
	@RequestMapping(value = "/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		List<Member> result = service.selectList(vo);
		model.addAttribute("list", result);
		
		return "infra/member/xdmin/memberList";
	}
	 
	@RequestMapping(value = "/memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		System.out.println("!!!!!!!!!!!!=  " + vo.getIfmmSeq());
		
		Member result = service.selectOne(vo);
		model.addAttribute("list", result);
		
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "/goDelete")
	public String goDelete(Member dto) throws Exception {
		
		int result = service.goDelete(dto);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/deleteArray")
	public String deleteArray(Member dto) throws Exception {
		
		for(int x : dto.getCheckboxSeqArray()) {
			dto.setIfmmSeq(Integer.toString(x));
			int result = service.goDelete(dto);
		}
		
		return "redirect:/member/memberList";
	} 
	
	@RequestMapping(value = "/memberInst")
	public String memberIsnt(Member dto) throws Exception {
		
		System.out.println(dto.getIfmmId());
		
		service.insert(dto);
		
		return "redirect:/login/";
	}
	
	@RequestMapping(value = "/memberInsertForm")
	public String memberInsertForm(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		
		
		service.memberInsertForm(dto);
		
		vo.setIfmmSeq(dto.getIfmmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	
	
	@RequestMapping(value = "/memberUpdate")
	public String memberUpdate(Member dto, RedirectAttributes redirectAttributes,@ModelAttribute MemberVo vo) throws Exception {
		
		service.memberUpdate(dto);
		vo.setIfmmSeq(dto.getIfmmSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value = "/memberInst1")
	public String memberIsnt1(Member dto) throws Exception {
		
		System.out.println(dto.getIfmmId()+"@@@@@@@@@@@@@");
		
		
		service.insert123(dto);
		
		return "redirect:/member/memberList";
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
//				System.out.println("null??????");
//				return "1";
//			}else {
//				System.out.println("null ??????");
//				return "2";
//			}
//	}
	
	@RequestMapping(value = "/mypage")
	public String mypage(Member dto, HttpServletRequest hrequest, Model model) throws Exception {
		
		
		System.out.println("@@@!!@!@!@!"+getSessionSeqCore(hrequest));
		List<Member> cartlist = service.selectcart(dto);
		
		dto.setIfmmSeq(getSessionSeqCore(hrequest));
		
		Member result = service.selectOneMember(dto);
		List<Member> result2 = service.selectwishlist(dto);
		
		model.addAttribute("cartlist", cartlist);
		model.addAttribute("memberinfo",result);
		model.addAttribute("wishlist",result2);
		
		return "/mypage/mypagelist";
	}
	
	@RequestMapping(value = "/wishlist")
	public String wishlist(Member dto, HttpServletRequest hrequest, Model model) throws Exception {
		
		dto.setIfmmSeq(getSessionSeqCore(hrequest));
		
		List<Member> result = service.selectwishlist(dto);
		List<Member> result2 = service.selectAuthor(dto);
		List<Member> cartlist = service.selectcart(dto); 
		
		model.addAttribute("wishlist",result);
		model.addAttribute("authorlist",result2);
		model.addAttribute("cartlist", cartlist);
		return "/mypage/wishlist";
	}
	
	@RequestMapping(value = "/cart")
	public String cart(Member dto, Model model) throws Exception {
		
		List<Member> result = service.selectcart(dto);
		List<Member> cartlist = service.selectcart(dto);
		model.addAttribute("cartlist",result);
		model.addAttribute("cartlist", cartlist);
		return "/mypage/cart";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/cartcheck")
	public Map<String, Object> cartcheck(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(dto.getIfmmPwd());
		Member result = service.cartcheck(dto);

		
		if (result == null) {
			returnMap.put("rt", "success");			
		} else {			
			returnMap.put("rt", "fail"); 
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cartinsert")
	public Map<String, Object> cartinsert(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.cartinsert(dto);

		returnMap.put("rt", "success");			
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cartdelete")
	public Map<String, Object> cartdelete(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.cartdelete(dto);

		returnMap.put("rt", "success");			
		
		return returnMap;
	}
	
	
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value = "/wishlistcheck")
	public Map<String, Object> wishlistcheck(Member dto) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("!!!!!!!"+dto.getIfmmSeq());
		System.out.println("!!!!!!!" + dto.getTdbkSeq());
		
		List<Member> result = service.wishlistcheck(dto);
	
		
		if(result.size() > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}	
		return returnMap;
	} 
	
	@ResponseBody
	@RequestMapping(value = "/wishlistinsert")
	public Map<String, Object> wishlistinsert(Member dto) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("@@@@@@@@@@@@@@@@@"+dto.getIfmmSeq());
		System.out.println("@@@@@@@@@@@@@@@@@" + dto.getTdbkSeq());
		
		service.insertwishlist(dto);
		
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/wishlistdelete")
	public Map<String, Object> wishlistdelete(Member dto) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("@@@@@@@@@@@@@@@@@" + dto.getTdbkSeq());
		System.out.println("@@@@@@@@@@@@@@@@@" + dto.getIfmmSeq());
		
		int result = service.deleteWishlist(dto);
		
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
	@RequestMapping(value = "/infochangecheck")
	public String infochange(Member dto, HttpServletRequest hrequest, Model model) throws Exception {
		
		dto.setIfmmSeq(getSessionSeqCore(hrequest));
		
		
		Member result = service.selectOneMember(dto);
		List<Member> cartlist = service.selectcart(dto); 
		
		model.addAttribute("memberinfo",result);
		model.addAttribute("cartlist", cartlist);
		
		return "/mypage/infochangecheck";
	}
	
	@RequestMapping(value = "/myinfoview")
	public String myinfoview(Member dto, HttpServletRequest hrequest, Model model) throws Exception {
		
		dto.setIfmmSeq(getSessionSeqCore(hrequest));
		
		Member result = service.selectOneMember(dto);
		List<Member> cartlist = service.selectcart(dto);
		
		model.addAttribute("memberinfo",result);
		model.addAttribute("cartlist", cartlist);
		
		return "/mypage/myinfoview";
	}
		
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
	
	@ResponseBody
	@RequestMapping(value = "/buyInsert")
	public Map<String, Object> buyInsert(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("buyInsert??????");
		System.out.println(dto.getTotalprice());
		System.out.println(dto.getMeans());
		System.out.println(dto.getIfmmSeq());
		
		int result = service.buyInsert(dto);
		
		System.out.println(dto.getBuyinfoSeq());
		returnMap.put("rt", "success");
		returnMap.put("orderSeq", dto.getBuyinfoSeq());
				
		return returnMap;		
	}
	
	@ResponseBody
	@RequestMapping(value = "/buydetailInsert")
	public Map<String, Object> buydetailInsert(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		for(int x: dto.getCheckboxSeqArray()) {
			System.out.print(x + " ");
		}
		System.out.println(dto.getBuy_buyinfoSeq());
		
		for(int x: dto.getCheckboxSeqArray()) {
			dto.setTdbkSeq(x);
			int result = service.buydetailInsert(dto);
		}
		
		
		returnMap.put("rt", "success");
		
				
		return returnMap;		
	}
	
	@ResponseBody
	@RequestMapping(value = "/cartdelteAll")
	public Map<String, Object> cartdelte(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("cartdelete ??????");
		
		int result = service.cartdeleteAll(dto);
		
		returnMap.put("rt", "success");
		
				
		return returnMap;		
	}
	
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value = "/passwordcheck")
	public Map<String, Object> passwordcheck(Member dto, HttpSession httpSession) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(dto.getIfmmPwd());
		Member result = service.selectOneForLogin(dto);

		
		if (result == null) {
			returnMap.put("rt", "fail");			
		} else {			
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value = "/passwordupdate")
	public Map<String, Object> passwordupdate(Member dto) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(dto.getIfmmPwd());
		System.out.println(dto.getIfmmId());
		service.update(dto);

		returnMap.put("rt", "success");			

		return returnMap;
	}
	
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value = "/logincheck")
	public Map<String, Object> logincheck(Member dto, HttpSession httpSession) throws Exception{
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(dto.getIfmmPwd());
		
		Member result = service.selectOneForLogin(dto);
		
		
		
		if (result == null) {
			System.out.println("?????? ");
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
	
	
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value = "kakaocheck")
	public Map<String, Object> kakaocheck(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		
		System.out.println("kakaocheck?????? ");
		
		Member result = service.kakaocheck(dto);
		
		
		
		if(result == null) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
			
		return returnMap;
	}
	
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value = "kakaologin")
	public Map<String, Object> kakologin(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		
		System.out.println("????????? ????????? ????????? ?????? ");
		
		Member result = service.kakaoSelect(dto);
		
		httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
		httpSession.setAttribute("sessSeq", result.getIfmmSeq());
		httpSession.setAttribute("sessId", result.getIfmmId());
		httpSession.setAttribute("sessName", result.getIfmmName());

		returnMap.put("rt", "fail");


			
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

package com.pinetreelch.infra.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if (request.getSession().getAttribute("sessSeq") != null) {
			// by pass
		} else {
			
			System.out.println("CheckLoginSessionInterception 실행!!!!!!!");
			response.sendRedirect("/login/");
            return false;
		}
		
		return super.preHandle(request, response, handler);
	}
	
}

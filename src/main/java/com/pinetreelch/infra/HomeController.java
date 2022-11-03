package com.pinetreelch.infra;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.pinetreelch.infra.modules.home.Main;

@Controller
public class HomeController {

	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		
		return "/book/home";
	}
	
	@RequestMapping(value = "/test")
	public String test(Main dto, Model model)throws Exception {
		 
		String apiUrl = "https://www.seogwipo.go.kr/festival/program/scheduledata.htm?act=index&format=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");  
		
		System.out.println("Response code: " + httpURLConnection.getResponseCode());
		
		BufferedReader bufferedReader;
		 
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println(line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		
		System.out.println("stringBuilder.toString(): "+stringBuilder.toString());  
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		
		
		System.out.println("######## Map");
		for (String key : map.keySet()) {
			
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value); 
		}  
		
		
		System.out.println("######## courses");  
		
		
		List<Map<String, Object>> courses = new ArrayList<Map<String, Object>>();		
		courses = (List<Map<String, Object>>) map.get("courses");
		
				
		
		System.out.println(courses.size());
		System.out.println(courses.get(0));
		
		String ctime = courses.get(0).get("ctime").toString();
		System.out.println(ctime);
		
		model.addAttribute("courses",courses);	
		
		Map<String, Object> courses2 = new HashMap<String, Object>();
		courses2 = courses.get(0);
		
		model.addAllAttributes(courses2);
		return "/test/test";
	}
	
}
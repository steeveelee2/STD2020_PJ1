package com.steev.std.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeControlServlet {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeControlServlet.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		// 랜덤키로 어떻게 해볼수있지 않을까?
		long seed=System.currentTimeMillis();
		Random rand=new Random(seed);
		float tk=rand.nextFloat();
		
		model.addAttribute("testKey",String.valueOf(tk));
		
		return "index";
	}
	
	@RequestMapping(value="/select.do", method=RequestMethod.GET)
	public String select(Model model) {
		// 초기 화면 세팅
		model.addAttribute("tl","한식");
		model.addAttribute("tc","탕, 찌개");
		model.addAttribute("tr","중식");
		model.addAttribute("ml","일식");
		model.addAttribute("mc","점심 메뉴");
		model.addAttribute("mr","양식");
		model.addAttribute("bl","해장");
		model.addAttribute("bc","간편식");
		model.addAttribute("br","기타");
		return "select";
	}
	
	@RequestMapping(value="/decision.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String[]> decision(@RequestBody String encSel) {
		// 원래는 db에 갔다와야하는건데 시간 부족하니까 자바단에서 처리
		@SuppressWarnings("deprecation")
		String sel=URLDecoder.decode(encSel).substring(9);
		
		Map<String, String[]> map=new HashMap<>();
		DecisionController dc=new DecisionController();
		map.put("menuName", dc.decisionName(sel));
		
		return map;
	}
	
	@RequestMapping(value="/result.do", method=RequestMethod.POST)
	public String select(Model model, HttpServletRequest req) {
		//결과
		@SuppressWarnings("deprecation")
		String fSel=URLEncoder.encode(req.getParameter("fSel"));
		model.addAttribute("fSel", fSel);
		return "result";
	}
}

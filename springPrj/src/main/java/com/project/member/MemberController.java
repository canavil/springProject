package com.project.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	
	//동의
	@RequestMapping(value="/joinStep1", method = RequestMethod.GET)
	public ModelAndView joinStep1() {
	    return new ModelAndView("member/joinStep1");
	}
	
	//회원가입폼
	@RequestMapping(value="/joinStep2", method = RequestMethod.POST)
	public ModelAndView joinStep2() {
	    return new ModelAndView("member/joinStep2");
	}
}

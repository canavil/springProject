package com.project.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainControler {

	//입력생성페이지  
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public ModelAndView index() {
	    return new ModelAndView("index");
	}
	
	
}

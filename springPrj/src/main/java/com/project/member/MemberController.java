package com.project.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.book.BookService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	private Object request;	
	
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
	
	//회원저장화면
	@RequestMapping(value = "/memberAdd", method = RequestMethod.POST)
	public ModelAndView memberAdd(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();

		//System.out.println("========>" + map);

	    // id 중복 확인
	    int affectRowCount = this.memberService.findMemberId(map);
	    
	    if (affectRowCount >= 1) {
			//System.out.println("=2=======>" + affectRowCount);
			mav.setViewName("redirect:/joinStep2");

			//mav.addObject("msg", "기존에 등록된 아이디가 있습니다.");
			//mav.addObject("url", "/joinStep2");
			//return "/common/alert";
	    } else {
	    	
			String userid = this.memberService.addMember(map);
			
		    if (userid == null) {
		        mav.setViewName("redirect:/joinStep2");
		    }else {
		        mav.setViewName("redirect:/memberDetail?userId=" + userid); 
		    }  

	    }
	    		
	    return mav;
	}		
	
	
	//회원정보조회
	@RequestMapping(value="/memberDetail", method = RequestMethod.GET)
	public ModelAndView memberDetail() {
	    return new ModelAndView("member/memberSuccess");
	}	
	
	//아이디 중복 체크
	@RequestMapping(value="/memberIdCheck", method = RequestMethod.GET)
	@ResponseBody
	public int memberIdCheck(@RequestParam Map<String, Object> map) {
	
		Map<String, Object> mapRes = new HashMap<>();
		
		// id 중복 확인
		int affectRowCount = this.memberService.findMemberId(map);

		if (affectRowCount == 0) {
			return 0;	//기존 아이디 없음
			
		} else {
			return 1;	//등록된 아이디 있음			
		}
	}	
	
	//아이디 로그인
	@RequestMapping(value="/memberLogin", method = RequestMethod.POST)
	@ResponseBody	
	public int memberLogin(@RequestParam Map<String, Object> map) {
	
		ModelAndView mav = new ModelAndView();
		
		// id 중복 확인
		int affectRowCount = this.memberService.findMemberLogin(map);

		System.out.println("id affectRowCount=============");		
		System.out.println(map);
		
		if (affectRowCount == 0) {
			return 0;	//기존 아이디 없음
			
		} else {
			return 1;	//등록된 아이디 있음			
		}
		
		
	}		
}

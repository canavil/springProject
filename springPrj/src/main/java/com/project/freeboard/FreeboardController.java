package com.project.freeboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.book.BookService;

@Controller
public class FreeboardController {

	@Autowired
	FreeboardService freeboardService;

	
	
	//게시판 리스트
	@RequestMapping(value="/freeboard/list", method = RequestMethod.GET)
	public ModelAndView freeboardList(@RequestParam Map<String, Object> map) {
	    
		List<Map<String, Object>> list = this.freeboardService.listFreeboard(map);  

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("data", list);
		
		mav.setViewName("freeboard/list");  
	
		return mav;  	
	}		
	
	
	
	//자유게시판 등록 폼
	@RequestMapping(value="/freeboard/register", method = RequestMethod.GET)
	public ModelAndView freeboardAdd() {
	    return new ModelAndView("freeboard/register");  
	}
	
	
	//자유게시판 저장
	@RequestMapping(value="/freebord/register", method = RequestMethod.POST)
	public ModelAndView freeboardSave(@RequestParam Map<String, Object> map) {
	    
		ModelAndView mav = new ModelAndView();
		String result = this.freeboardService.create(map);

        mav.setViewName("redirect:/freeboard/list"); 

        return mav;
		
	}		
	
	
	

	
	
	//자유게시판 조회
	@RequestMapping(value="/freeboard/view", method = RequestMethod.GET)
	public ModelAndView freeeboadView(@RequestParam Map<String, Object> map) {
	    
		List<Map<String, Object>> list = this.freeboardService.viewFreeboard(map);  

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("data", list);
		
		mav.setViewName("freeboard/view");  
	
		return mav;  
		
	}	
	
/*	
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
	    
	    String regiPage = "";
	    String viewPage = "";

	    // id 중복 확인
	    int affectRowCount = this.memberService.findMemberId(map);
	    
	    System.out.println("==============>>" + map.get("admYn"));
	    //관리자용
	    if(map.get("admYn").equals("Y")) {
	    	
		     regiPage = "memberAdmAdd";
		     viewPage = "memberAdmDetail";	    	
		    
	    } else {
		     regiPage = "joinStep2";
		     viewPage = "memberDetail";
	    }
	    
	    
	    if (affectRowCount >= 1) {
			mav.setViewName("redirect:/"+ regiPage);
	    } else {
	    	
			String userid = this.memberService.addMember(map);
			
		    if (userid == null) {
		        mav.setViewName("redirect:/" + regiPage);
		    }else {
		        mav.setViewName("redirect:/" + viewPage+ "?userid=" + userid); 
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
	public int memberLogin(@RequestParam Map<String, Object> map, HttpServletRequest request) {
	
		ModelAndView mav = new ModelAndView();
		
		// id 중복 확인
		int affectRowCount = this.memberService.findMemberLogin(map);

		System.out.println("id affectRowCount=============" + affectRowCount);		
		System.out.println(map);
		
		if (affectRowCount == 0) {
			return 0;	//기존 아이디 없음
			
		} else {
			
			//Session 생성
	        HttpSession session = request.getSession();
	        session.setAttribute("sessionUserid", map.get("userid"));
	        			
			return 1;	//등록된 아이디 있음			
		}
	}
	
	//로그인 성공후 이동
	@RequestMapping(value="/memberMain", method = RequestMethod.GET)
	public ModelAndView memberMain() {
	    return new ModelAndView("main");
	}	
	
	
	//로그인 화면
	@RequestMapping(value="/memberLogin", method = RequestMethod.GET)
	public ModelAndView memberLogin() {
	    return new ModelAndView("member/login");
	}		

	
	//로그아웃
	@RequestMapping(value="/memberLogout", method = RequestMethod.GET)
	public ModelAndView memberLogout(HttpSession session) {
		
		session.invalidate();	//세션초기화
	    return new ModelAndView("member/login");
	}		
	
	//관리자 회원 리스트
	@RequestMapping(value="/memberAdmList", method = RequestMethod.GET)
	public ModelAndView memberAdmList(@RequestParam Map<String, Object> map) {
	    
		List<Map<String, Object>> list = this.memberService.listMemberAdm(map);  

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("data", list);
		
		mav.setViewName("admin/member/list");  
	
		return mav;  
		
	}		

	//관리자 회원 정보 조회
	@RequestMapping(value="/memberAdmDetail", method = RequestMethod.GET)
	public ModelAndView memberAdmDetail(@RequestParam Map<String, Object> map) {
	    
		List<Map<String, Object>> list = this.memberService.detailMemberAdm(map);  

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("data", list);
		
		mav.setViewName("admin/member/detail");  
	
		return mav;  
		
	}	
	
	//회원가입폼
	@RequestMapping(value="/memberAdmAdd", method = RequestMethod.GET)
	public ModelAndView memberAdmAdd() {
	    return new ModelAndView("admin/member/register");  
	}	

*/

}

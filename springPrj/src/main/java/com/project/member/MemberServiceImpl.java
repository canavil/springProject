package com.project.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao memberDao;
	
	@Override 
	public String addMember(Map<String, Object> map) { 
		
		int affectRowCount = this.memberDao.insertMember(map); 
		
		System.out.println("========>" + map.get("userid").toString());

	    if (affectRowCount ==  1) {
	        return map.get("userid").toString();
	    }
	    return null;	
	}
	
	//ID 등록 여부 확인
	@Override 
	public int findMemberId(Map<String, Object> map) { 
		
		int affectRowCount = this.memberDao.selectMemberId(map); 
		
		System.out.println("========>" + map.get("userid").toString());

	    return affectRowCount;	
	}	
	
	//회원 로그인
	@Override 
	public int findMemberLogin(Map<String, Object> map) { 
		
		int affectRowCount = this.memberDao.selectMemberLogin(map); 
		
		System.out.println("===1=====>" + map.get("userid").toString());
		System.out.println("===2=====>" + map.get("passwd").toString());		
		
	    return affectRowCount;	
	}		
	
	//관리자용 회원리스트
	@Override 
	public List<Map<String, Object>> listMemberAdm(Map<String, Object> map){  
		return this.memberDao.selectMemberAdmList(map);  
	}  	
		
	
	//관리자용 회원 view
	@Override 
	public List<Map<String, Object>> detailMemberAdm(Map<String, Object> map){  
		return this.memberDao.selectMemberAdmDetail(map);  
	}  		
	
	/*
	 * @Override public String create(Map<String, Object> map) { int affectRowCount
	 * = this.bookDao.insert(map); if (affectRowCount == 1) { return
	 * map.get("book_id").toString(); } return null; }
	 * 
	 * @Override public Map<String, Object> detail(Map<String, Object> map){ return
	 * this.bookDao.selectDetail(map); }
	 * 
	 * @Override public boolean edit(Map<String, Object> map) { int affectRowCount =
	 * this.bookDao.update(map); return affectRowCount == 1;
	 * 
	 * }
	 * 
	 * @Override public boolean remove(Map<String, Object> map) { int affectRowCount
	 * = this.bookDao.delete(map); return affectRowCount == 1;
	 * 
	 * }
	 * 
	 * @Override public List<Map<String, Object>> list(Map<String, Object> map){
	 * return this.bookDao.selectList(map); }
	 */
	
	
}
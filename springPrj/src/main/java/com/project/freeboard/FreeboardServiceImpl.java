package com.project.freeboard;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.book.BookDao;


@Service
public class FreeboardServiceImpl implements FreeboardService {
	@Autowired
	FreeboardDao freeboardDao;
	

	//자유게시판 리스트
	@Override
	public List<Map<String, Object>> listFreeboard(Map<String, Object> map) {
	
		return this.freeboardDao.selectList(map);  
				
	}

	
	//자유게시판 저장
	 @Override 
	 public String create(Map<String, Object> map) { 
		 int affectRowCount	 = this.freeboardDao.insertBoard(map); 
		 
		 if (affectRowCount == 1) { 
			 //return  map.get("seqno").toString(); 
		 } 
		 
		 return null; 
	 }
	  
	 
	//자유게시판 View
	@Override 
	public List<Map<String, Object>> viewFreeboard(Map<String, Object> map){  
		
		this.freeboardDao.updateViewCount(map); 
		
		return this.freeboardDao.viewFreeboard(map);  
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
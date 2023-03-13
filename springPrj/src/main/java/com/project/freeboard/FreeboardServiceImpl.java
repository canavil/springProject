package com.project.freeboard;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;


@Service
public class FreeboardServiceImpl implements FreeboardService {
	@Autowired
	//FreeboardDao freeboarddao;
	


	@Override
	public List<Map<String, Object>> listFreeboard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
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
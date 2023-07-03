package com.project.freeboard;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FreeboardDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//게시물 등록
	public int insertBoard(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("freeboard.insertBoard", map);
	}

	public List<Map<String, Object>> selectList(Map<String, Object> map) {

		  return this.sqlSessionTemplate.selectList("freeboard.listBoard", map);
		  
	}
	
	
	//게시물 등록
	public int updateViewCount(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("freeboard.updateHit", map);
	}
	
	
	
	public List<Map<String, Object>> viewFreeboard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		//return null;
		
		System.out.println("LOG::====================>>>>>>>"+ map);
		return this.sqlSessionTemplate.selectList("freeboard.viewBoard", map);  
	
	}	
}

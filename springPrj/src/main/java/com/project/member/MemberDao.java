package com.project.member;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//회원가입
	public int insertMember(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("member.insertMember", map);
	}
	
	//id 중복조회
	public int selectMemberId(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("member.findMemberIdCheck", map);
	}	
	
	//id 로그인
	public int selectMemberLogin(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("member.findMemberLogin", map);
	}

	
	//관리자용 member List
	public List<Map<String, Object>> selectMemberAdmList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		//return null;
		return this.sqlSessionTemplate.selectList("member.findMemberAdmList", map);  
	}	
	
	
	//관리자용 member view
	public List<Map<String, Object>> selectMemberAdmDetail(Map<String, Object> map) {
		// TODO Auto-generated method stub
		//return null;
		return this.sqlSessionTemplate.selectList("member.findMemberAdmDetail", map);  
	}	
	
	

}

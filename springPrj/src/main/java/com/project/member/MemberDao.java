package com.project.member;

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

}

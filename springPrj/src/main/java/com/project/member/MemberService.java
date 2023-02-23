package com.project.member;

import java.util.List;
import java.util.Map;

public interface MemberService {

	
	String addMember(Map<String, Object> map);
	
	int findMemberId(Map<String, Object> map);
	
	int findMemberLogin(Map<String, Object> map);
	/*
	 * String create(Map<String, Object> map);
	 * 
	 * Map<String, Object> detail(Map<String, Object> map);
	 * 
	 * boolean edit(Map<String, Object> map);
	 * 
	 * boolean remove(Map<String, Object> map);
	 * 
	 * List<Map<String, Object>> list(Map<String, Object> map);
	 */
	
	

	/*
	 * - 서비스 클래스 안에서 메서드 명을 작성 할 때는 아래와 같은 접두사를 붙인다.
	 * 
	 * findOrder() - 조회 유형의 service 메서드
	 * 
	 * addOrder() - 등록 유형의 service 메서드
	 * 
	 * modifyOrder() - 변경 유형의 service 메서드
	 * 
	 * removeOrder() - 삭제 유형의 service 메서드
	 * 
	 * saveOrder() – 등록/수정/삭제 가 동시에 일어나는 유형의 service 메서드
	 */

	 
}
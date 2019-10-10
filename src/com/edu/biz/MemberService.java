package com.edu.biz;

import com.edu.dao.MemberDAO;
import com.edu.vo.MemberVO;

public class MemberService {
	// dao 객체 생성
	MemberDAO dao = new MemberDAO();
	// memberInsert 메서드 생성 -> MemberDAO에서 구현해야 할 insertMember 메서드 호출
	public void memberInsert(MemberVO member) {
		dao.insertMember(member);
	}
}

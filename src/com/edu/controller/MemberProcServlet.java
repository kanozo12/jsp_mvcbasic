package com.edu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.biz.MemberService;
import com.edu.vo.MemberVO;

@WebServlet("/memberProc")
public class MemberProcServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//컨트롤러의 역할
		// 1. 뷰에서 컨트롤러 호출 -> 인코딩 포함, 파라미터 추출 -> 서비스 객체 생성
		// 서비스 메서드 호출 -> 뷰 페이지 이동
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		MemberVO member = new MemberVO();
		member.setId(req.getParameter("id"));
		member.setPasswd(req.getParameter("passwd"));
		member.setName(req.getParameter("name"));
		member.setMail(req.getParameter("mail"));
		
		req.setAttribute("member", member);
		
		MemberService service = new MemberService();
		service.memberInsert(member);
		
		req.getRequestDispatcher("memberOutput.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

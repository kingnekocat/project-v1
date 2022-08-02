package com.shc.pt.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO mDAO;
	
	@RequestMapping(value = "/loginpage.go", method = RequestMethod.GET)
	public String indexGo(HttpServletRequest req) {
		
	return "member/loginpage";
	}
	
	@RequestMapping(value = "/login.go", method = RequestMethod.POST)
	public String loginGo(Member m ,HttpServletRequest req) {
		
		mDAO.login(m, req);
		mDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/joinpage.go", method = RequestMethod.GET)
	public String joinpageGo(Member m ,HttpServletRequest req) {
		
		return "member/joinpage";
	}
	
	@RequestMapping(value = "/join.go", method = RequestMethod.POST)
	public String joinGo(Member m ,HttpServletRequest req) {
		mDAO.join(m, req);
		mDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/logout.go", method = RequestMethod.GET)
	public String logoutGo(Member m ,HttpServletRequest req) {
		mDAO.logout(req);
		mDAO.loginCheck(req);
		req.setAttribute("contentPage", "home.jsp");
		return "index";
	}
	
	
}

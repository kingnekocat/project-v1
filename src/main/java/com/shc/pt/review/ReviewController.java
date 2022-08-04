package com.shc.pt.review;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shc.pt.member.MemberDAO;

@Controller
public class ReviewController {
	
	@Autowired
	private MemberDAO mDAO;
	
	@Autowired
	private ReviewDAO rDAO;

	@RequestMapping(value = "/reviewpage.go", method = RequestMethod.GET)
	public String reviewpagego(Review r ,HttpServletRequest req) {
		
	mDAO.loginCheck(req);
	rDAO.getreview(r, req);
	req.setAttribute("contentPage", "review/review.jsp");
	
	return "index";
	}
	
	@RequestMapping(value = "/reviewregpage.go", method = RequestMethod.GET)
	public String reviewregpagego(Review r ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		req.setAttribute("contentPage", "review/reviewreg.jsp");
		
		return "index";
	}
	
}

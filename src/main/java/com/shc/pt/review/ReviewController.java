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
	
	@RequestMapping(value = "/reviewreg.go", method = RequestMethod.POST)
	public String reviewreggo(Review r ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		rDAO.reviewreg(r, req);
		rDAO.getreview(r, req);
		req.setAttribute("contentPage", "review/review.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/reviewdelete.go", method = RequestMethod.GET)
	public String reviewdeletego(Review r ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		rDAO.reviewdelete(r, req);
		rDAO.getreview(r, req);
		req.setAttribute("contentPage", "review/review.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/reviewupdatepage.go", method = RequestMethod.GET)
	public String reviewupdatepagego(Review r ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		rDAO.getonereview(r, req);
		req.setAttribute("contentPage", "review/reviewupdate.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/reviewupdate.go", method = RequestMethod.POST)
	public String reviewupdatego(Review r ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		rDAO.updatereview(r, req);
		rDAO.getreview(r, req);
		req.setAttribute("contentPage", "review/review.jsp");
		
		return "index";
	}
	
}

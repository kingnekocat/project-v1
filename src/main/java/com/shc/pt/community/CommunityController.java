package com.shc.pt.community;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shc.pt.member.MemberDAO;
import com.shc.pt.review.Review;

@Controller
public class CommunityController {
	
	@Autowired
	private MemberDAO mDAO;

	@Autowired
	private CommunityDAO cDAO;
	
	@RequestMapping(value = "/communitypage.go", method = RequestMethod.GET)
	public String reviewpagego(Community c, HttpServletRequest req) {
		
	mDAO.loginCheck(req);
	cDAO.getcommunity(c, req);
	req.setAttribute("contentPage", "community/community.jsp");
	
	return "index";
	}
	
	@RequestMapping(value = "/communitydetail.go", method = RequestMethod.GET)
	public String communitydetailgo(Community c, HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		cDAO.getonecommunity(c, req);
		req.setAttribute("contentPage", "community/communitydetail.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/CommunityRegPage.go", method = RequestMethod.GET)
	public String CommunityRegPagego(Community c, HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		req.setAttribute("contentPage", "community/communityregpage.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/communityReg.go", method = RequestMethod.POST)
	public String communityReggo(Community c, HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		cDAO.regCommunity(c, req);
		cDAO.getcommunity(c, req);
		req.setAttribute("contentPage", "community/community.jsp");
		
		return "index";
	}
	
	@RequestMapping(value = "/communitydelete.go", method = RequestMethod.GET)
	public String communitydeletego(Community c, HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		cDAO.deleteCommunity(c, req);
		cDAO.getcommunity(c, req);
		req.setAttribute("contentPage", "community/community.jsp");
		
		return "index";
	}
	
}

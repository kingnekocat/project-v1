package com.shc.pt.animation;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shc.pt.member.MemberDAO;

@Controller
public class AnimationController {

	@Autowired
	private MemberDAO mDAO;
	
	@Autowired
	private AnimationDAO aDAO;
	
	@RequestMapping(value = "/animationgenre.go", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/loveco.go", method = RequestMethod.GET)
	public String lovecogo(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.getloveco(a, req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/fantasy.go", method = RequestMethod.GET)
	public String fantasygo(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.fantasygo(a, req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/romance.go", method = RequestMethod.GET)
	public String romancego(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.romancego(a, req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/action.go", method = RequestMethod.GET)
	public String actiongo(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.actiongo(a, req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/sf.go", method = RequestMethod.GET)
	public String sfgo(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.sfgo(a, req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/animationdelete.go", method = RequestMethod.GET)
	public String animationdeletego(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.animationdelete(a, req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/regpage.go", method = RequestMethod.GET)
	public String regpagego(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.getloveco(a, req);
		req.setAttribute("contentPage", "animation/reg.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/reg.go", method = RequestMethod.POST)
	public String reggo(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.reg(a, req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/animationupdatepage.go", method = RequestMethod.GET)
	public String animationupdatego(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.getone(a,req);
		req.setAttribute("contentPage", "animation/update.jsp");
		return "index";
	}
	
	@RequestMapping(value = "/animationupdate.go", method = RequestMethod.POST)
	public String updatego(Animation a ,HttpServletRequest req) {
		
		mDAO.loginCheck(req);
		aDAO.animationupdate(a,req);
		req.setAttribute("contentPage", "animation/genre.jsp");
		return "index";
	}
	
	
	
	
	
	
}

package com.shc.pt.shop;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shc.pt.member.MemberDAO;
import com.shc.pt.review.Review;

@Controller
public class ShopController {

	@Autowired
	MemberDAO mDAO;
	
	@RequestMapping(value = "/shop.go", method = RequestMethod.GET)
	public String reviewpagego(Review r ,HttpServletRequest req) {
		
	mDAO.loginCheck(req);
	req.setAttribute("contentPage", "shop/shop.jsp");
	
	return "index";
	}
}

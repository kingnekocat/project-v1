package com.shc.pt.review;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewDAO {

	@Autowired
	private SqlSession ss;

	public void getreview(Review r, HttpServletRequest req) {
		
		try {
			req.setAttribute("reviews", ss.getMapper(ReviewMapper.class).getreview(r));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}

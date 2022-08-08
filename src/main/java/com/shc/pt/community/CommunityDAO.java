package com.shc.pt.community;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommunityDAO {
	
	@Autowired
	private SqlSession ss;

	public void getcommunity(Community c, HttpServletRequest req) {
		
		try {
		req.setAttribute("communitys", ss.getMapper(CommunityMapper.class).getcommunity(c));
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void getonecommunity(Community c, HttpServletRequest req) {
		
		try {
		req.setAttribute("communitys", ss.getMapper(CommunityMapper.class).getonecommunity(c));	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
}

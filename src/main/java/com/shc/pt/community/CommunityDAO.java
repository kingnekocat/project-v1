package com.shc.pt.community;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shc.pt.member.Member;

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

	public void regCommunity(Community c, HttpServletRequest req) {
		
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		try {
		mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());		
			
		Member dbmember = (Member)req.getSession().getAttribute("loginMember");
		String title = mr.getParameter("c_title");	
		String txt = mr.getParameter("c_txt");	
		String photo = mr.getFilesystemName("c_photo");	
		
		c.setC_title(title);
		c.setC_txt(txt);
		c.setC_photo(photo);
		c.setC_writer(dbmember.getM_id());
			
		if(ss.getMapper(CommunityMapper.class).regcommunity(c)==1) {
			req.setAttribute("result", "등록성공");
		}else {
			req.setAttribute("result", "등록실패");
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void deleteCommunity(Community c, HttpServletRequest req) {
		
		try {
			
		if(ss.getMapper(CommunityMapper.class).deletecommunity(c)==1) {
			req.setAttribute("result", "삭제성공");
		}else {
			req.setAttribute("result", "삭제실패");
		}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void communityUpdate(Community c, HttpServletRequest req) {
		
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		try {
		mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());	
			
		String title = mr.getParameter("c_title");
		String txt = mr.getParameter("c_txt");
		String newphoto = mr.getFilesystemName("c_photo");
		String oldphoto = mr.getParameter("oldphoto");
		String no = mr.getParameter("c_no");
		String photo = null;
		
		if(newphoto == null) {
			photo = oldphoto;
		}else {
			photo = newphoto;
		}
		
		c.setC_title(title);
		c.setC_txt(txt);
		c.setC_photo(photo);
		
		if(ss.getMapper(CommunityMapper.class).communityUpdate(c)==1) {
			req.setAttribute("result", "업데이트 성공");
		}else {
			req.setAttribute("result", "업데이트 실패");
		}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
}

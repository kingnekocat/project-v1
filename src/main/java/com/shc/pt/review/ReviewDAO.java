package com.shc.pt.review;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shc.pt.member.Member;

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

	public void reviewreg(Review r, HttpServletRequest req) {
		
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		try {
		mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());	
			
		Member dbmember = (Member)req.getSession().getAttribute("loginMember");
		String title = mr.getParameter("r_title");	
		String txt = mr.getParameter("r_txt");
		String photo = mr.getFilesystemName("r_photo");
		
		r.setR_title(title);
		r.setR_txt(txt);
		r.setR_photo(photo);
		r.setR_writer(dbmember.getM_id());
			
		if(ss.getMapper(ReviewMapper.class).reviewreg(r)==1) {
			req.setAttribute("result", "등록성공");
		}else {
			req.setAttribute("result", "등록실패");
		}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	public void reviewdelete(Review r, HttpServletRequest req) {
		
		if(ss.getMapper(ReviewMapper.class).reviewdelete(r)==1) {
			req.setAttribute("result", "등록성공");
		}else {
			req.setAttribute("result", "등록실패");
		}
	}

	public void getonereview(Review r, HttpServletRequest req) {

		try {
			req.setAttribute("reviews",ss.getMapper(ReviewMapper.class).getonereview(r));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updatereview(Review r, HttpServletRequest req) {
		
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		try {
		mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());	
		String title = mr.getParameter("r_title");	
		String txt = mr.getParameter("r_txt");	
		String newphoto = mr.getFilesystemName("r_photo");
		String oldphoto = mr.getParameter("oldphoto");
		String no = mr.getParameter("r_no");
		String photo = null;
		
		if(newphoto == null) {
			photo = oldphoto;
		}else {
			photo = newphoto;
		}
			
		r.setR_title(title);
		r.setR_txt(txt);
		r.setR_photo(photo);
			
		if(ss.getMapper(ReviewMapper.class).updatereview(r)==1) {
			req.setAttribute("result", "업데이트 성공");
		}else {
			req.setAttribute("result", "업데이트 실패");
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
}

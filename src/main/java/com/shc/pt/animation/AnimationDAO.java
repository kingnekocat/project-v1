package com.shc.pt.animation;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class AnimationDAO {

	@Autowired
	private SqlSession ss;

	public void getloveco(Animation a, HttpServletRequest req) {

		try {
			a.setA_genre("러브코미디");
			req.setAttribute("loves", ss.getMapper(AnimationMapper.class).getloveco(a));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void animationdelete(Animation a, HttpServletRequest req) {

		if (ss.getMapper(AnimationMapper.class).animationdelete(a) == 1) {
			req.setAttribute("result", "삭제성공");
		} else {
			req.setAttribute("result", "삭제실패");
		}
	}

	public void reg(Animation a, HttpServletRequest req) {

		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		try {
			mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());

			String a_title = mr.getParameter("a_title");
			String a_photo = mr.getFilesystemName("a_photo");
			String a_txt = mr.getParameter("a_txt");
			String a_genre = mr.getParameter("a_genre");

			a.setA_title(a_title);
			a.setA_photo(a_photo);
			a.setA_txt(a_txt);
			a.setA_genre(a_genre);

			if (ss.getMapper(AnimationMapper.class).reg(a) == 1) {
				req.setAttribute("result", "등록성공");
			} else {
				req.setAttribute("result", "등록실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void fantasygo(Animation a, HttpServletRequest req) {

		try {
			a.setA_genre("판타지");
			req.setAttribute("loves", ss.getMapper(AnimationMapper.class).getfantasy(a));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void romancego(Animation a, HttpServletRequest req) {
		try {
			a.setA_genre("로맨스");
			req.setAttribute("loves", ss.getMapper(AnimationMapper.class).getromance(a));

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void actiongo(Animation a, HttpServletRequest req) {
		try {
			a.setA_genre("액션");
			req.setAttribute("loves", ss.getMapper(AnimationMapper.class).getaction(a));

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void sfgo(Animation a, HttpServletRequest req) {
		try {
			a.setA_genre("SF");
			req.setAttribute("loves", ss.getMapper(AnimationMapper.class).getsf(a));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void getone(Animation a, HttpServletRequest req) {

		try {
			req.setAttribute("one", ss.getMapper(AnimationMapper.class).getone(a));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void animationupdate(Animation a, HttpServletRequest req) {
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		try {
		mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
			
		String title = mr.getParameter("a_title");	
		String txt = mr.getParameter("a_txt");	
		String newphoto = mr.getFilesystemName("a_photo");
		String oldphoto = mr.getParameter("oldphoto");
		String newgenre = mr.getParameter("a_genre");
		String oldgenre = mr.getParameter("oldgenre");
		int no = Integer.parseInt(mr.getParameter("a_no"));
		String photo = null;
		String genre = null;
		
		if(newphoto!=null) {
			photo = newphoto;
		}else {
			photo = oldphoto;
		}
			
		if(newgenre!=null) {
			genre = newgenre;
		}else {
			genre = oldgenre;
		}
		
		System.out.println(title);
		System.out.println(txt);
		System.out.println(photo);
		System.out.println(genre);
		System.out.println(no);
		
		a.setA_title(title);
		a.setA_txt(txt);
		a.setA_photo(photo);
		a.setA_genre(genre);
		a.setA_no(no);
		if(ss.getMapper(AnimationMapper.class).animationupdate(a)==1) {
			req.setAttribute("result", "업데이트 성공");
		}else {
			req.setAttribute("result", "업데이트 실패");
		}
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	
	
	
}

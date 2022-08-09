package com.shc.pt.member;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class MemberDAO {

	@Autowired
	private SqlSession ss;

	public void login(Member m, HttpServletRequest req) {

		Member dbMember = ss.getMapper(MemberMapper.class).getMemberByID(m);

		if (dbMember != null) {
			if (m.getM_pw().equals(dbMember.getM_pw())) {
				req.getSession().setAttribute("loginMember", dbMember);
				req.getSession().setMaxInactiveInterval(60 * 10);
			} else {
				req.setAttribute("result", "로그인 실패(PW오류)");
			}
		} else {
			req.setAttribute("result", "로그인 실패(미가입ID)");
		}
	}

	public void join(Member m, HttpServletRequest req) {

		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;

		try {
			mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());

			String m_id = mr.getParameter("m_id");
			String m_pw = mr.getParameter("m_pw");
			String m_photo = mr.getFilesystemName("m_photo");
			String m_name = mr.getParameter("m_name");
			String m_nickname = mr.getParameter("m_nickname");
			String m_addr = mr.getParameter("m_addr");
			String m_fav = mr.getParameter("m_fav");

			m.setM_id(m_id);
			m.setM_pw(m_pw);
			m.setM_photo(m_photo);
			m.setM_name(m_name);
			m.setM_nickname(m_nickname);
			m.setM_addr(m_addr);
			m.setM_fav(m_fav);

			if (ss.getMapper(MemberMapper.class).join(m) == 1) {
				req.setAttribute("result", "가입성공");
				System.out.println("가입성공!");
			} else {
				req.setAttribute("result", "가입실패");
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

	}

	public boolean loginCheck(HttpServletRequest req) {

		Member m = (Member) req.getSession().getAttribute("loginMember");
		if (m != null) {
			req.setAttribute("loginPage", "member/loginsuccess.jsp");
			return true;
		}
		req.setAttribute("loginPage", "member/login.jsp");
		return false;

	}

	public void logout(HttpServletRequest req) {
		req.getSession().setAttribute("loginMember", null);
	}

	public void update(Member m, HttpServletRequest req) {
		
		String path = req.getSession().getServletContext().getRealPath("resources/files");
		MultipartRequest mr = null;
		
		try {
		mr = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());	
		String newphoto = mr.getFilesystemName("m_photo");
		String oldphoto = mr.getParameter("oldphoto");
		String m_nickname = mr.getParameter("m_nickname");
		String newaddr = mr.getParameter("m_addr");
		String oldaddr = mr.getParameter("oldaddr");
		String newfav = mr.getParameter("m_fav");
		String oldfav = mr.getParameter("oldfav");
		String m_id = mr.getParameter("m_id");
		
		String photo = null;
		String addr = null;
		String fav = null;
			
		if(newphoto == null) {
		photo = oldphoto;
		}else {
		photo = newphoto;	
		}
		
		if(newaddr == null) {
		addr = oldaddr;	
		}else {
		addr = newaddr;	
		}
		
		if(newfav == null){
		fav = oldfav;	
		}else {
		fav = newfav;	
		}
		
		System.out.println(m_id);
		m.setM_id(m_id);
		m.setM_photo(photo);	
		m.setM_nickname(m_nickname);
		m.setM_fav(fav);
		m.setM_addr(addr);
		
		if(ss.getMapper(MemberMapper.class).update(m)==1) {
			req.getSession().setAttribute("loginMember", m);
			req.setAttribute("result", "수정성공");
		}else {
			req.setAttribute("result", "수정실패");
		}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void deletem(HttpServletRequest req) {
		
		try {
			
		Member m = (Member)req.getSession().getAttribute("loginMember");
		
		if(ss.getMapper(MemberMapper.class).deletem(m)==1) {
			req.setAttribute("result", "탈퇴성공");
			logout(req);
			loginCheck(req);
		}else {
			req.setAttribute("result", "탈퇴실패");
		}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

	public int getmemberNum(Member m, HttpServletRequest req) {
		
	return ss.getMapper(MemberMapper.class).getmemberNum(m);
	}

}

package controller;

import java.io.IOException;

import dao.LoginDAO;
import dto.LoginDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//개인정보수정 로그인
@WebServlet("/member/edit_myinfo.do")
public class EditMyLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/JSP/member/edit_myinfo2.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		LoginDAO dao = new LoginDAO();
		LoginDTO dto = dao.MemberLogin(id, pwd);
		dao.close();
		
		HttpSession session = req.getSession();
		
		if(dto != null && dto.getMemberId() !=null) {		
			session.setAttribute("memberId", dto.getMemberId());
			resp.sendRedirect("/TCLASS/member/edit_myinfo_01.do");
		}	
		else {
			System.out.println("로그인 오류");
			session.setAttribute("loginErr", "아이디 또는 비밀번호가 적절하지 않거나 등록된 계정이 아닙니다. ");
			req.getRequestDispatcher("/JSP/member/edit_myinfo2.jsp").forward(req, resp);
		}
	}

}

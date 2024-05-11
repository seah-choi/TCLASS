package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import dao.LoginDAO;
import dto.LoginDTO;

//로그인
@WebServlet("/member/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/JSP/member/login.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		LoginDAO dao = new LoginDAO();
		LoginDTO dto = dao.MemberLogin(id, pwd);
		dao.close();
		

		HttpSession session = req.getSession();
		
		//로그인 세션 저장
		if(dto != null && dto.getMemberId() !=null) {			
			session.setAttribute("memberId", dto.getMemberId());
			session.setAttribute("name", dto.getName());
			session.setAttribute("memberNo", dto.getNo());
			session.setAttribute("tel", dto.getTel());
			session.setAttribute("email", dto.getEmail());
			session.setAttribute("year", dto.getYear());
			session.setAttribute("month", dto.getMonth());
			session.setAttribute("day", dto.getDay());
			session.setAttribute("gender", dto.getGender());
			resp.sendRedirect("/TCLASS/JSP/main/index_login.jsp");
		}	
		else {
			System.out.println("로그인 오류");
			session.setAttribute("loginErr", "아이디 또는 비밀번호가 적절하지 않거나 등록된 계정이 아닙니다. ");
			req.getRequestDispatcher("/JSP/member/login.jsp").forward(req, resp);
		}
	}

}

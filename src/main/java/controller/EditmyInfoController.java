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

//개인정보수정
@WebServlet("/member/edit_myinfo_01.do")
public class EditmyInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/JSP/member/edit_myinfo_01.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("memberId");
		
		String pwd = req.getParameter("pwd");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		
		LoginDTO dto = new LoginDTO();
		dto.setPassword(pwd);
		dto.setTel(tel);
		dto.setEmail(email);
		
		LoginDAO dao = new LoginDAO();
		int result = dao.EditMyInfo(dto, id);
		
		if(result > 0) {
			System.out.println("회원정보 수정 성공");
			resp.sendRedirect("/TCLASS/JSP/main/index_login.jsp");
			dao.close();
		} else {
			System.out.println("회원정보 수정 오류");
			req.getRequestDispatcher("/JSP/member/edit_myinfo_01.jsp").forward(req, resp);
		}
		
	}

}

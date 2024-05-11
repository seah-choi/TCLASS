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

//비밀번호 찾기
@WebServlet("/member/search_pw.do")
public class SearchPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/JSP/member/search_pw.jsp").forward(req, resp);
	}


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		
		LoginDAO dao = new LoginDAO();
		String idCheck  = dao.SearchPwd(id, name, tel);
		dao.close();
		
		
		if(idCheck != null) {
			System.out.println("비밀번호 찾기 성공");
			req.setAttribute("idCheck", idCheck);		
			req.getRequestDispatcher("/JSP/member/search_pw_03.jsp").forward(req, resp);
		}
		else {
			System.out.println("비밀번호 찾기 오류");
			req.getRequestDispatcher("/JSP/member/search_pw.jsp").forward(req, resp);
		}
	}

}

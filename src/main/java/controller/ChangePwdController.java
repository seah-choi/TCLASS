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

//비밀번호 바꾸기
@WebServlet("/member/change_pwd.do")
public class ChangePwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/JSP/member/search_pw_03.jsp").forward(req, resp);
	}


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		LoginDTO dto = new LoginDTO();
		dto.setPassword(pwd);
		
		LoginDAO dao = new LoginDAO();
		int result = dao.ChangePwd(dto, id);
		
		if(result > 0) {
			System.out.println("비밀번호 변경 성공");
			resp.sendRedirect("/TCLASS/member/login.do");
			dao.close();
		} else {
			System.out.println("비밀번호 변경 오류");
			req.getRequestDispatcher("/JSP/member/search_pw_03.jsp").forward(req, resp);
		}
				
		
	}

}

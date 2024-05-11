package controller;

import java.io.IOException;

import dao.LoginDAO;
import dto.LoginDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//회원가입
@WebServlet("/member/join.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/JSP/member/join.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int result = 1;

		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String pwd = req.getParameter("pwd");
		int year = Integer.parseInt(req.getParameter("year"));
		int month = Integer.parseInt(req.getParameter("month"));
		int day = Integer.parseInt(req.getParameter("day"));
		String gender = req.getParameter("gender");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		String interest = req.getParameter("interest");
		String grade = req.getParameter("grade");
		String image = req.getParameter("image");
		
		LoginDTO dto = new LoginDTO();
		
		dto.setMemberId(id);
		dto.setName(name);
		dto.setPassword(pwd);
		dto.setYear(year);
		dto.setMonth(month);
		dto.setDay(day);
		dto.setGender(gender);
		dto.setTel(tel);
		dto.setEmail(email);
		dto.setInterest(interest);
		dto.setGrade(grade);
		dto.setImage(image);
		
		LoginDAO dao = new LoginDAO();
		result = dao.JoinMember(dto);
		req.setAttribute("result", result);
		req.setAttribute("id", id);
		
		if(result == 1) {
			System.out.println("회원가입 완료");
			resp.sendRedirect("/TCLASS/member/login.do");		
		}
		else {
			System.out.println("회원가입 실패");
			req.getRequestDispatcher("/JSP/member/join.jsp").forward(req, resp);
		}
	}

}

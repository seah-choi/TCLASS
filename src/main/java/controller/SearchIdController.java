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

//아이디 찾기
@WebServlet("/member/search_id.do")
public class SearchIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		String full = req.getParameter("full");
		full = full !=null ?full :"N";
		
		System.out.println(name);
		System.out.println(tel);
		System.out.println(full);

		LoginDAO dao = new LoginDAO();
		LoginDTO dto = dao.SearchId(name, tel, full);
		dao.close();
		
		if(full.equals("Y")) {
			req.setAttribute("dto", dto);
			req.getRequestDispatcher("/JSP/member/search_id_03.jsp").forward(req, resp);	
		} else {
			req.getRequestDispatcher("/JSP/member/search_id.jsp").forward(req, resp);
		}
		

	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		String full = req.getParameter("full");
		
		System.out.println(name);
		System.out.println(tel);
		System.out.println(full);
		
		LoginDAO dao = new LoginDAO();
		LoginDTO dto = dao.SearchId(name, tel, full);
		dao.close();
		
		
		if(dto!= null) {	
			System.out.println("아이디 찾기 성공");
			req.setAttribute("dto", dto);
			req.getRequestDispatcher("/JSP/member/search_id_02.jsp").forward(req, resp);
			
		}
		else {
			System.out.println("아이디 찾기 오류");
			//req.getRequestDispatcher("/JSP/member/search_id_01.jsp").forward(req, resp);
			resp.sendRedirect("/JSP/member/search_id_01.jsp");
		}
	}

}

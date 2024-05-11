package controller;

import java.io.IOException;

import dao.BoardDAO;
import dto.BoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//1:1 문의글 작성
@WebServlet("/mypage/oneboard.do")
public class BoardWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/JSP/mypage/oneboard.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String memberId = (String)session.getAttribute("memberId");
		
		String category_1 = req.getParameter("category_1");
		String category_2 = req.getParameter("category_2");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		BoardDTO dto = new BoardDTO();
		dto.setCategory_1(category_1);
		dto.setCategory_2(category_2);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setMember_id(memberId);
		
		BoardDAO dao = new BoardDAO();
		int result = dao.BoardRegist(dto);
		req.setAttribute("result", result);
		
		
		resp.sendRedirect("/TCLASS/mypage/oneboard_01.do");
		
	}

}

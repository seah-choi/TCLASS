package controller;

import java.io.IOException;

import dao.BoardDAO;
import dto.BoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//문의글 삭제
@WebServlet("/mypage/boardDelete.do")
public class BoardDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int no = (req.getParameter("no")!= null ? Integer.parseInt(req.getParameter("no")):0);
		BoardDAO dao = new BoardDAO();
		BoardDTO BoardDelete = new BoardDTO();
		
		if(no > 0) {
			int result = dao.BoardDelete(no);
			dao.close();
			
			if(result > 0) {
				resp.sendRedirect("/TCLASS/mypage/oneboard_01.do");
			} else {
				req.getRequestDispatcher("/TCLASS/mypage/oneboard_02.do?no="+no).forward(req, resp);
			}
		}
		
		req.setAttribute("BoardDelete", BoardDelete);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}

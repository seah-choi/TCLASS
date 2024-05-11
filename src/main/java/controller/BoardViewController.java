package controller;

import java.io.IOException;

import common.CommonUtil;
import dao.BoardDAO;
import dto.BoardDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/mypage/oneboard_02.do")
public class BoardViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int no = CommonUtil.parseInt(req.getParameter("no"));
		BoardDTO BoardView = new BoardDTO();
	
		
		if(no > 0) {
			BoardDAO dao = new BoardDAO();
			BoardView = dao.BoardView(no);
			dao.close();
		} else {
			resp.sendRedirect("/TCLASS/mypage/oneboard_01.do");
		}
		
		String category_1 ="";
		String category_2 ="";
		String title ="";
		String content ="";
		String answerStatus ="";
		String answer = "";
		String reg_date= "";
		
		if(BoardView != null) {
			category_1 = BoardView.getCategory_1();
			category_2 = BoardView.getCategory_2();
			title = BoardView.getTitle();
			content = BoardView.getContent();
			answerStatus = BoardView.getAnswerStatus();
			answer = BoardView.getAnswer();
			reg_date = (BoardView.getReg_date() !=null ?BoardView.getReg_date().toString() :"");
		}
		
		req.setAttribute("BoardView", BoardView);
		req.getRequestDispatcher("/JSP/mypage/oneboard_02.jsp").forward(req, resp);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
